--:) want me, Fish hear me

--Registers itself with the fish broadcaster object, which sends it messages that activate its api.


--[[

--Which music do I have playing during the minigame?  Always the intense stuff, or the normal ost?
Normal OST for normal fish, intense for special fish?


Fish darts-splash noise


Beeping when you're almost out of line, faster the less you have.


When you enter the hunting lodge, it says "lodge area"
Cape area for the eventual parahumans crossover


--When a projectile misses: say miss
--When it damages a ship: say hit! hit bonus!
--when a ship flees: it's gone

The palace for slug and crystal places.

Select a lure (lure screen)
Select a casting point (when you are about to fish)

Jump menu opened: go to next area
    check beaconmapplus

todo replace all the music or just during fishing?
Definitely fade out whatever battle music during fishing and play fish music
Fish cruiser should play fish music always.

Tourniment series is difficulty select
Sega bass fishing on main menu , sega bass fishing when you quit out?  intercard.
Select weather for anomaly generator
make fishing pick from a list of fishing music

Play the menu music on the menu, clear it on game load.
If I really want to use the beginning theme, I need an animatic for it you can click to dismiss.
need to replace bp_mus_victory
]]


local fishListener = mods.fishing.fishListener



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
local FISH_SPLASHES = {}
local GAME_OVER = {"BASS_game_over", "BASS_come_on_come_on_try_it_again"}
local FOE_ESCAPED_SOUNDS = {"BASS_aough", "BASS_damnit", "BASS_ohh_it_was_so_close",
        "BASS_noooooo", "BASS_its_gone"}
--local FOE_HIT_SOUNDS = {"BASS_hit_bonus"}
local FOE_MISS_SOUNDS = {"BASS_aough", "BASS_damnit", "BASS_no", "BASS_miss", "BASS_noooo_missed"}

local NO_FISH = 0

--TODO there are two fish numbers, (arbitrarilly many fish numbers) and I need to iterate on them.
--when you start fishing
local mCurrentFishNumbers = {NO_FISH, NO_FISH}
local mIsFishing = false
local mLegendHooked = false



---comment
---@param soundList table
---@param volume number
---@param shouldRepeat boolean
local function playRandomSound(soundList, volume, shouldRepeat)
    local soundName = soundList[math.random(1, #soundList)]
    Hyperspace.Sounds:PlaySoundMix(soundName, volume, shouldRepeat)
end

---comment
---@param fishNumber number We only care if this is 16 = legendary fish.
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

---comment
---@param size number
fishListener.onCatch = function(index, size)
    if mCurrentFishNumbers == NO_FISH then
        print("Error: onCatch called with no fish.")
    elseif size == 1 then
        playRandomSound(AVERAGE_CATCH_SOUNDS, 6, false)
        Hyperspace.Sounds:PlaySoundMix("BASS_get_average", 4, false)
    elseif size == 2 then
        playRandomSound(BIG_CATCH_SOUNDS, 6, false)
        Hyperspace.Sounds:PlaySoundMix("BASS_get_big", 4, false)
    elseif size == 3 then
        playRandomSound(HUGE_CATCH_SOUNDS, 6, false)
        Hyperspace.Sounds:PlaySoundMix("BASS_get_huge", 4, false)
    else
        playRandomSound(LEGEND_CATCH_SOUNDS, 6, false)
        Hyperspace.Sounds:PlaySoundMix("BASS_get_legend", 4, false)
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

local TIMER_UNSET = -1
local time_increment = mods.multiverse.time_increment
local TIMERS = {banter=TIMER_UNSET, almostThere=TIMER_UNSET, lineBreak=TIMER_UNSET, pullDown=TIMER_UNSET, pullUp=TIMER_UNSET}
--All of the meaningful banter has individual timers.

script.on_internal_event(Defines.InternalEvents.ON_TICK, function()
    local commandGui = Hyperspace.Global.GetInstance():GetCApp().gui
    if not mIsFishing or (not (Hyperspace.ships(0)) or Hyperspace.ships(0).iCustomizeMode == 2 or --Either not fishing or paused
    (commandGui.bPaused or commandGui.bAutoPaused or commandGui.event_pause or commandGui.menu_pause)) then return end
    if TIMERS.banter == TIMER_UNSET then
        TIMERS.banter = math.random() * 4
    end
    --tick down all active timers
    for key,timer in pairs(TIMERS) do
        if timer ~= TIMER_UNSET then
            TIMERS[key] = math.max(0, timer - time_increment(false))
            print(key, timer)
        end
    end
    --play banter
    if TIMERS.banter == 0 then
        playRandomSound(FISH_BANTER, 4, false)
        TIMERS.banter = math.max(.36, math.random() * 3.3)
    end
end)

local mWarningChannels = {TIMER_UNSET, TIMER_UNSET}
---10/20/30/40% left.
---@param level number [0,4]. Zero is not beeping and 4 is frantic beeping.  I can do the timing by adding white space.
fishListener.beepingLevel = function(index, level)
    for key,warningChannel in ipairs(mWarningChannels) do
        if not mWarningChannel == TIMER_UNSET or level == 0 then
            Hyperspace.Sounds:StopChannel(mWarningChannel, 0)
            mWarningChannels[key] = TIMER_UNSET --todo recheck this im unsure
        else
            local warning = "BASS_warning_"..tostring(level)
            mWarningChannels[key] = Hyperspace.Sounds:PlaySoundMix(warning, 4, true)
        end
    end
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
        elseif locationEvent.eventName == "SHIP_MFK_FLAGSHIP_CASUAL" or --Final Showdown
            locationEvent.eventName == "SHIP_MFK_FLAGSHIP_NORMAL" or
            locationEvent.eventName == "SHIP_MFK_FLAGSHIP_CHALLENGE" or
            locationEvent.eventName == "SHIP_MFK_FLAGSHIP_EXTREME" then
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


