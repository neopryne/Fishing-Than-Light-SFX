--:) want me, Fish hear me

--Registers itself with the fish broadcaster object, which sends it messages that activate its api.
--[[

--Which music do I have playing during the minigame?  Always the intense stuff, or the normal ost?
Normal OST for normal fish, intense for special fish?

Cape area for the eventual parahumans crossover

--When a projectile misses: say miss
--When it damages a ship: say hit! hit bonus!
--when a ship flees: it's gone

The palace for slug and crystal places.


Jump menu opened: go to next area
    check beaconmapplus

todo replace all the music or just during fishing?
Definitely fade out whatever battle music during fishing and play fish music
Fish cruiser should play fish music always.
make a list of all the music tracks to select from

Tourniment series is difficulty select
make fishing pick from a list of fishing music
Select a casting point for cultist spells and blood ritual
Good casting! For DD rituals. 

If I really want to use the beginning theme, I need an animatic for it you can click to dismiss.
need to replace bp_mus_victory

--todo why are the voice lines so quiet, and don't seem to go louder with volume?
todo add the other sounds to the jukebox.
]]

local time_increment = mods.multiverse.time_increment
local fishListener = mods.fishing.fishListener
local SoundManager = mods.sounds.manager

local WARNING_LENGTHS = {22, 18, 14, 12}
-- for name,length in pairs(WARNING_LENGTHS) do
--     SoundManager.registerSound(name, length)
-- end

local NO_FISH = 0
local STARTING_BEEP_LEVEL = 3
local UNSET = -1
local TIMERS = {banter=UNSET, almostThere=UNSET, lineBreak=UNSET, pullDown=UNSET, pullUp=UNSET}

local JUNK_CATCH_SOUNDS = {"BASS_no_fish", "BASS_aough", "BASS_noooooo", "BASS_sigh",
        "BASS_small_one", "BASS_mmh_small_one", "BASS_hey_good_fighting_for_a_small_one"}
--local SMALL_CATCH_SOUNDS = {"BASS_small_one", "BASS_mmh_small_one", "BASS_hey_good_fighting_for_a_small_one"}
local AVERAGE_CATCH_SOUNDS = {"BASS_ok_an_average_size", "BASS_an_average_size", "BASS_average_size_yeah",
         "BASS_medium", "BASS_this_ones_an_average_size", "BASS_oh_fish", "BASS_get_bass"}
local BIG_CATCH_SOUNDS = {"BASS_oh_a_big_one", "BASS_super_big", "BASS_wow_what_a_pull", "BASS_big_one"}
local HUGE_CATCH_SOUNDS = {"BASS_this_ones_huge"}
local LEGEND_CATCH_SOUNDS = {"BASS_this_ones_enourmous_this_is_really_something"}
local LOST_IT_SOUNDS = {"BASS_aough", "BASS_miss", "BASS_lost", "BASS_damnit",
        "BASS_noooo_missed", "BASS_the_hook_came_off", "BASS_oh_the_line_broke", "BASS_ohh_it_was_so_close",
        "BASS_noooooo", "BASS_no_fish", "BASS_its_gone", "BASS_line_break"}
local BLUE_FISH = {"BASS_a_big_one_close_by", "BASS_its_gonna_be_a_big_one"}
local FISH_BEGIN = {"BASS_fight", "BASS_start", "BASS_fish", "BASS_bite"}
local LEGEND_BEGIN = {"BASS_its_gonna_be_a_big_one"}
local FISH_BANTER = {"BASS_loosen_it", "BASS_good_casting", "BASS_good_fighting", "BASS_good_going_keep_with_it",
        "BASS_be_careful", "BASS_be_careful_when_you_go_for_it", "BASS_be_careful_with_the_tension", "BASS_good_job",
        "BASS_hang_in_there", "BASS_mmph", "BASS_no", "BASS_no__no_no",
        "BASS_no_no__no", "BASS_no_time_to_lose", "BASS_now", "BASS_come_on", "BASS_dont_let_this_one_go",
        "BASS_faster_faster", "BASS_ohouahou", "BASS_reel_in_reel_in", "BASS_wind_it_wind_it",
        "BASS_gack", "BASS_bite_it", "BASS_hook_it", "BASS_its_coming_near", "BASS_dont_let_this_one_go"}
local FISH_WEAK = {"BASS_hes_getting_weak", "BASS_youre_almost_there"}
local LINE_WEAK = {"BASS_the_lines_gonna_break"}
local FISH_SPLASHES = {"BASS_splash_1", "BASS_splash_2", "BASS_splash_3"}
local GAME_OVER = {"BASS_game_over", "BASS_come_on_come_on_try_it_again"}
local FOE_ESCAPED_SOUNDS = {"BASS_aough", "BASS_damnit", "BASS_ohh_it_was_so_close",
        "BASS_noooooo", "BASS_its_gone"} --when a hostile ship jumps away
--local FOE_HIT_SOUNDS = {"BASS_hit_bonus"}
local FOE_MISS_SOUNDS = {"BASS_aough", "BASS_damnit", "BASS_noooooo", "BASS_miss", "BASS_noooo_missed"}
local GAME_START = {"BASS_sega_bass_fishing", "BASS_bass_hunter"}
local GAME_START_2 = {"BASS_sega_bass_fishing_2", "BASS_enjoy_your_fishing"}


local mWarnings = {{channel=UNSET, level=UNSET, threshold=STARTING_BEEP_LEVEL, thresholdCleared=false},
        {channel=UNSET, level=UNSET, threshold=STARTING_BEEP_LEVEL, thresholdCleared=false}}

--TODO there are two fish numbers, (arbitrarilly many fish numbers) and I need to iterate on them.
--when you start fishing
local mCurrentFishNumbers = {NO_FISH, NO_FISH}
local mIsFishing = false
local mLegendHooked = false --meaningful banter 


local mSecondSound
--When game loads:
local loadSoundsType = math.random(1,1)
script.on_init(function(newGame)
    print("on_init", newGame)
    mSecondSound = true
end)

Hyperspace.Sounds:PlaySoundMix(GAME_START[loadSoundsType], 16, false)
--We only need this for second sound, both still have the volume issue.
script.on_internal_event(Defines.InternalEvents.ON_TICK, function()
    if mSecondSound then
        mSecondSound = false
        Hyperspace.Sounds:PlaySoundMix(GAME_START_2[loadSoundsType], 16, false)
    end
end)

local function getRandomItem(itemList)
    return itemList[math.random(1, #itemList)]
end

---comment
---@param soundList table
---@param volume number
---@param shouldRepeat boolean
local function playRandomSound(soundList, volume, shouldRepeat)
    local soundName = getRandomItem(soundList)
    Hyperspace.Sounds:PlaySoundMix(soundName, volume, shouldRepeat)
end

---comment
---@param fishNumbers table pair of numbers We only care if this is 16 = legendary fish.
fishListener.onStartFishing = function(fishNumbers)
    local finishedFishing = true
    for _,fishNumber in ipairs(mCurrentFishNumbers) do
        if fishNumber ~= NO_FISH then
            finishedFishing = false
        end
    end
    if not finishedFishing then
        print("Error: started fishing while already fishing.")
    end
    mIsFishing = true
    mCurrentFishNumbers = fishNumbers
    for _,fish in ipairs(fishNumbers) do
        if fish == 16 then
            mLegendHooked = true
        end
    end
    if legendHooked then
        playRandomSound(LEGEND_BEGIN, 4, false)
    else
        playRandomSound(FISH_BEGIN, 4, false)
    end
end

local function endFishing()
    --stop fish music
    mIsFishing = false
end

local function endFish(index)
    mCurrentFishNumbers[index] = NO_FISH
    fishListener.resetBeeping(index)
    
    local finishedFishing = true
    local remainingLegend = false
    for _,fishNumber in ipairs(mCurrentFishNumbers) do
        if fishNumber ~= NO_FISH then
            finishedFishing = false
        end
        if fishNumber == 16 then
            remainingLegend = true
        end
    end
    mLegendHooked = remainingLegend
    if finishedFishing then
        endFishing()
    end
end

---comment
fishListener.onJunk = function(index)
    if mCurrentFishNumbers == NO_FISH then
        print("Error: onCatch called with no fish.")
    end
    playRandomSound(JUNK_CATCH_SOUNDS, 6, false)
    Hyperspace.Sounds:PlaySoundMix("BASS_get_small", 4, false)
    endFish(index)
end

bst = {junk=40, average=160, big=240, huge=300, legend=400}
function bassTS0()
    SoundManager.playSound(2, "BASS_get_small", 4, false, bst.junk)
    SoundManager.queueSound(2, getRandomItem(JUNK_CATCH_SOUNDS), 6, false, 0)
end

function bassTS1()
    SoundManager.playSound(2, "BASS_get_average", 4, false, bst.average)
    SoundManager.queueSound(2, getRandomItem(AVERAGE_CATCH_SOUNDS), 6, false, 0)
end

function bassTS2()
        SoundManager.playSound(2, "BASS_get_big", 4, false, bst.big)
        SoundManager.queueSound(2, getRandomItem(BIG_CATCH_SOUNDS), 6, false, 0)
end

function bassTS3()
        SoundManager.playSound(2, "BASS_get_huge", 4, false, bst.huge)
        SoundManager.queueSound(2, getRandomItem(HUGE_CATCH_SOUNDS), 6, false, 0)
end

function bassTS4()
        SoundManager.playSound(2, "BASS_get_legend", 4, false, bst.legend)
        SoundManager.queueSound(2, getRandomItem(LEGEND_CATCH_SOUNDS), 6, false, 0)
end

---comment
---@param size number
fishListener.onCatch = function(index, size)
    if mCurrentFishNumbers == NO_FISH then
        print("Error: onCatch called with no fish.")
    elseif size == 1 then
        SoundManager.playSound(2, "BASS_get_average", 4, false, 30)
        SoundManager.queueSound(2, getRandomItem(AVERAGE_CATCH_SOUNDS), 6, false, 0)
    elseif size == 2 then
        SoundManager.playSound(2, "BASS_get_big", 4, false, 160)
        SoundManager.queueSound(2, getRandomItem(BIG_CATCH_SOUNDS), 6, false, 0)
    elseif size == 3 then
        SoundManager.playSound(2, "BASS_get_huge", 4, false, 200)
        SoundManager.queueSound(2, getRandomItem(HUGE_CATCH_SOUNDS), 6, false, 0)
    else
        SoundManager.playSound(2, "BASS_get_legend", 4, false, 300)
        SoundManager.queueSound(2, getRandomItem(LEGEND_CATCH_SOUNDS), 6, false, 0)
    end
    endFish(index)
end

fishListener.onFishFumbled = function(index)
    playRandomSound(LOST_IT_SOUNDS, 4, false)
    endFish(index)
end

fishListener.fishDarts = function()
    playRandomSound(FISH_SPLASHES, 4, false)
end

--All of the meaningful banter has individual timers.

script.on_internal_event(Defines.InternalEvents.ON_TICK, function()
    local commandGui = Hyperspace.Global.GetInstance():GetCApp().gui
    if not mIsFishing or (not (Hyperspace.ships(0)) or Hyperspace.ships(0).iCustomizeMode == 2 or --Either not fishing or paused
    (commandGui.bPaused or commandGui.bAutoPaused or commandGui.event_pause or commandGui.menu_pause)) then return end
    if TIMERS.banter == UNSET then
        TIMERS.banter = math.random() * 4
    end
    --tick down all active timers
    for key,timer in pairs(TIMERS) do
        if timer ~= UNSET then
            TIMERS[key] = math.max(0, timer - time_increment(false))
            --print(key, timer)
        end
    end
    --play banter
    if TIMERS.banter == 0 then
        playRandomSound(FISH_BANTER, 6, false)
        TIMERS.banter = math.max(1.612, math.random() * 4.1)
    end
end)


fishListener.resetBeeping = function(index)
    fishListener.beepingLevel(index, 0)
    mWarnings[index].threshold = STARTING_BEEP_LEVEL
    mWarnings[index].thresholdCleared = false
end

---10/20/30/40% left.
---@param level number [0,4]. Zero is not beeping and 4 is frantic beeping.  I can do the timing by adding white space.
fishListener.beepingLevel = function(index, level)
    local warning = mWarnings[index]
    local warningChannel = warning.channel
    if not warningChannel == UNSET then
        -- Hyperspace.Sounds:StopChannel(warningChannel, 0)
        SoundManager.clobberChannel(warningChannel)
        warning.channel = UNSET
        warning.level = UNSET
    end

    if not (warning.thresholdCleared) then
        if level <= warning.threshold then
            warning.threshold = level
            return
        else
            warning.thresholdCleared = true
        end
    end

    if level == 0 then
        SoundManager.clobberChannel(1)
    elseif level ~= warning.level then
        local warningString = "BASS_warning_"..tostring(level)
        print("Triggered beeping level", level, WARNING_LENGTHS[level])
        warning.channel = SoundManager.playSound(1, warningString, 4, true, WARNING_LENGTHS[level])
        -- Hyperspace.Sounds:PlaySoundMix(warning, 4, true)
    end
    warning.level = level
end

script.on_internal_event(Defines.InternalEvents.PRE_CREATE_CHOICEBOX, function(locationEvent)
        if locationEvent.stuff.augment then
            local augName = locationEvent.stuff.augment:GetNameLong()
            if string.find(augName, "Lure") then
                Hyperspace.Sounds:PlaySoundMix("BASS_you_got_a_special_lure", 4, false)
            end
        end
        --todo I could do the fish rewards like this, but then i'd have nothing to say about non-fish items gained.  eh, I guess i could fall back to what i do now.
        --ok, todo do that.
    
        if locationEvent.eventName == "FISHING_STORE" then --Fishing lodge
            Hyperspace.Sounds:PlaySoundMix("BASS_lodge_area", 4, false)
        elseif locationEvent.eventName == "FISHING_STORE_KILLED" then --Maw quest
            Hyperspace.Sounds:PlaySoundMix("BASS_lodge_area_cleared", 4, false)
        elseif locationEvent.eventName == "STORAGE_CHECK_FISHING_BAIT" then
            Hyperspace.Sounds:PlaySoundMix("BASS_select_a_lure", 4, false)
        elseif locationEvent.eventName == "INFESTATION_ORPHAN" then --Spider quest
            Hyperspace.Sounds:PlaySoundMix("BASS_cave_area", 4, false)
        elseif locationEvent.eventName == "MILITIA_DETECTIVE" or --Text events
            locationEvent.eventName == "NEBULA_DISTRESS_SLUG_QUESTION" or
            locationEvent.eventName == "AEA_BIRD_ENGINEER" then
            Hyperspace.Sounds:PlaySoundMix("BASS_reed_area", 4, false)
        elseif locationEvent.eventName == "SHOWDOWN_CASUAL" or --Final Showdown
            locationEvent.eventName == "SHOWDOWN_NORMAL" or
            locationEvent.eventName == "SHOWDOWN_CHALLENGE" or
            locationEvent.eventName == "SHOWDOWN_EXTREME" then
            Hyperspace.Sounds:PlaySoundMix("BASS_final_stage", 4, false)
        elseif locationEvent.eventName == "BOSS_TEXT_1" then --Flagship
            Hyperspace.Sounds:PlaySoundMix("BASS_first_stage", 4, false)
        elseif locationEvent.eventName == "BOSS_TEXT_2" then
            Hyperspace.Sounds:PlaySoundMix("BASS_second_stage", 4, false)
        elseif locationEvent.eventName == "BOSS_TEXT_3" then
            Hyperspace.Sounds:PlaySoundMix("BASS_third_stage", 4, false)
        elseif locationEvent.eventName == "SHIP_BOSS_4_PHASE_1" then
            Hyperspace.Sounds:PlaySoundMix("BASS_fourth_stage", 4, false)
        elseif locationEvent.eventName == "COMBAT_CHECK_HAZARD" then --Reality Manipulator
            Hyperspace.Sounds:PlaySoundMix("BASS_select_weather", 4, false)
        end
    end)

--Fish graphic
script.on_render_event(Defines.RenderEvents.MAIN_MENU, function() end, function()
    -- local menu = Hyperspace.App.menu
    -- if menu.shipBuilder.bOpen then return end


    -- Graphics.CSurface.GL_PushMatrix()
    -- Graphics.CSurface.GL_SetColor(color)
    -- Graphics.CSurface.GL_SetColorTint(color)
    -- Graphics.freetype.easy_print(62, option.x, option.y, display)
    -- Graphics.CSurface.GL_PopMatrix()
end)
