local SoundManager = mods.sounds.manager
local Deque = mods.structs.deque

--[[
channel object
    id
        playbackChannel
        queue --deque object
        currentSoundRemainingTime

sound object
    name
        length=length

Ok, so I'll have an internal list of "channels" that are different than hs's channels, because they aren't exposed in a useful way.

You can have any number of channels, they're just numbers.


]]
local mNextChannelId = 1 --monotonically increasing, shouldn't run out...

local mSoundLengths = {} --name, length.  pairs.
local mChannelQueues = {} --ordered by channel number, queue is object.  pairs.


local function stopChannel(channelQueue)
    local hsChannel = channelQueue.playbackChannel
    if hsChannel then
        Hyperspace.Sounds:StopChannel(hsChannel, 0)
    end
end

local function clobberChannel(channelQueue)
    --stop current sound on this channel and delete all items.  actually don't stop the current sound.
    --stopChannel(channelQueue)
    channelQueue.queue = Deque.new()
end

local function playSoundInternal(soundObject, channelQueue)
    print("playSoundInternal \n    channelQueue", channelQueue.playbackChannel,  channelQueue.currentSoundRemainingTime, channelQueue.id,
            "\n    soundObject", soundObject.name, soundObject.volume, soundObject.loop, soundObject.duration)
    stopChannel(channelQueue)
    if soundObject.loop then
        SoundManager.queueSound(channelQueue.id, soundObject.name, soundObject.volume, soundObject.loop, soundObject.duration)
    end
    channelQueue.currentSoundRemainingTime = soundObject.duration
    if channelQueue.currentSoundRemainingTime == nil then
        print("Error! No legnth found for sound", soundObject.name, "!")
    end
    return Hyperspace.Sounds:PlaySoundMix(soundObject.name, soundObject.volume, false)
end

script.on_internal_event(Defines.InternalEvents.ON_TICK, function()
    for channelId,channelQueue in pairs(mChannelQueues) do
        print("Ticking channel", channelId, "timer", channelQueue.currentSoundRemainingTime)
        if (channelQueue.currentSoundRemainingTime == nil or channelQueue.currentSoundRemainingTime <= 0) then
            local soundObject = channelQueue.queue:pop_right()
            if not soundObject then
                mChannelQueues[channelId] = nil
            else
                mChannelQueues[channelId].playbackChannel = playSoundInternal(soundObject, channelQueue)
            end
        else
            channelQueue.currentSoundRemainingTime = channelQueue.currentSoundRemainingTime - 1
        end
    end
end)
--#region -----------API---------------------

--You have to tell the the manager how long sounds are so it knows when to play the next sound.
SoundManager.registerSound = function(soundName, soundLength)
    print("Registered sound", soundName, soundLength)
    if mSoundLengths[soundName] then
        print("Warning! Redefining sound", soundName,"!")
    end
    mSoundLengths[soundName] = soundLength
end

---Add a sound to a channel's queue.
---@param channelId number Optional param for channel to use, if missing will create a new channel.
---@param soundName string previously registered with soundManager.registerSound()
---@param volume number passed to Hyperspace.Sounds:PlaySoundMix
---@param looping boolean if true, sound will loop until channel is cleared.
---@param duration number how long to wait until this channel can play another sound
---@return number channel of the sound.  Not the one hyperspace uses.
SoundManager.queueSound = function(channelId, soundName, volume, looping, duration)
    print("queueSound", soundName, volume, looping, channelId, duration)
    if not channelId then
        channelId = mNextChannelId
        mNextChannelId = mNextChannelId + 1
    end
    if mChannelQueues[channelId] == nil then
        mChannelQueues[channelId] = {playbackChannel=nil, queue=Deque.new(), currentSoundRemainingTime=nil, id=channelId}
    end

    mChannelQueues[channelId].queue:push_right({name=soundName, volume=volume, loop=looping, duration=duration})
    return channelId
end

SoundManager.clobberChannel = function(channelNumber)
    local channelQueue = mChannelQueues[channelNumber]
    if channelQueue then
        clobberChannel(channelQueue)
    end
end

--optional channel, if none, make new one.  If exists, clobber queue and play this. todo combine with queue.
SoundManager.playSound = function(channelId, soundName, volume, looping, duration)
    SoundManager.clobberChannel(channelId)
    return SoundManager.queueSound(channelId, soundName, volume, looping, duration)
end
--#endregion