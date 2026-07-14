--:) want me, Fish hear me

--Registers itself with the fish broadcaster object, which sends it messages that activate its api.
--[[

--Which music do I have playing during the minigame?  Always the intense stuff, or the normal ost?
Normal OST for normal fish, intense for special fish?

Cape area for the eventual parahumans crossover

--When a projectile misses: say miss
--When it damages a ship: say hit! hit bonus!
--when a ship flees: it's gone

Jump menu opened: go to next area
    check beaconmapplus

todo replace all the music or just during fishing?
Definitely fade out whatever battle music during fishing and play fish music
Fish cruiser should play fish music always.

Tourniment series is difficulty select
make fishing pick from a list of fishing music
Select a casting point for cultist spells and blood ritual
Good casting! For DD rituals. 

If I really want to use the beginning theme, I need an animatic for it you can click to dismiss.
need to replace bp_mus_victory

--todo why are the voice lines so quiet, and don't seem to go louder with volume?
scaling chance to play the corresponding fight music for a given fish when we start fishing.
]]

local time_increment = mods.multiverse.time_increment
local fishListener = mods.fishing.fishListener
local SoundManager = mods.sounds.manager

local TIME_SCALE_FACTOR = 0.016687400639057 --Used to convert measurements from my computer in frames to time_increment.
--Further additions should not use this.
local WARNING_LENGTHS = {22 * TIME_SCALE_FACTOR, 18 * TIME_SCALE_FACTOR, 14 * TIME_SCALE_FACTOR, 12 * TIME_SCALE_FACTOR}
-- for name,length in pairs(WARNING_LENGTHS) do
--     SoundManager.registerSound(name, length)
-- end


local NO_FISH = 0
local STARTING_BEEP_LEVEL = 3
local UNSET = -1
local TIMERS = {banter=UNSET, almostThere=UNSET, lineBreak=UNSET, pullDown=UNSET, pullUp=UNSET}

local JUNK_CATCH_SOUNDS = {"BASS_no_fish", "BASS_aough", "BASS_noooooo", "BASS_sigh",
        "BASS_small_one", "BASS_mmh_small_one", "BASS_hey_good_fighting_for_a_small_one", "BASS_release_size"}
local AVERAGE_CATCH_SOUNDS = {"BASS_ok_an_average_size", "BASS_an_average_size", "BASS_average_size_yeah",
         "BASS_medium", "BASS_this_ones_an_average_size", "BASS_oh_fish", "BASS_get_bass"}
local BIG_CATCH_SOUNDS = {"BASS_oh_a_big_one", "BASS_super_big", "BASS_wow_what_a_pull", "BASS_big_one", "BASS_keeper_size"}
local HUGE_CATCH_SOUNDS = {"BASS_this_ones_huge"}
local LEGEND_CATCH_SOUNDS = {"BASS_this_ones_enourmous_this_is_really_something"}
local LOST_IT_SOUNDS = {"BASS_aough", "BASS_miss", "BASS_lost", "BASS_damnit",
        "BASS_noooo_missed", "BASS_the_hook_came_off", "BASS_oh_the_line_broke", "BASS_ohh_it_was_so_close",
        "BASS_noooooo", "BASS_no_fish", "BASS_its_gone", "BASS_line_break", "BASS_oh_miss"}
local BLUE_FISH = {"BASS_a_big_one_close_by", "BASS_its_gonna_be_a_big_one"}
local FISH_BEGIN = {"BASS_fight", "BASS_start", "BASS_fish", "BASS_bite", "BASS_fish_2"}
local LEGEND_BEGIN = {"BASS_its_gonna_be_a_big_one"}
local FISH_BANTER = {"BASS_loosen_it", "BASS_good_casting", "BASS_good_fighting", "BASS_good_going_keep_with_it",
        "BASS_be_careful", "BASS_be_careful_when_you_go_for_it", "BASS_be_careful_with_the_tension", "BASS_good_job",
        "BASS_hang_in_there", "BASS_mmph", "BASS_no", "BASS_no__no_no",
        "BASS_no_no__no", "BASS_no_time_to_lose", "BASS_now", "BASS_come_on", "BASS_dont_let_this_one_go",
        "BASS_faster_faster", "BASS_ohouahou", "BASS_reel_in_reel_in", "BASS_wind_it_wind_it",
        "BASS_gack", "BASS_bite_it", "BASS_hook_it", "BASS_its_coming_near", "BASS_dont_let_this_one_go",
        "BASS_keep_it_tight", "BASS_wind_it", "BASS_roll_it_its_on_the_bait", "BASS_yeah_hes_a_fighter", "BASS_slow_it_down"}
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
    mSecondSound = true
end)

Hyperspace.Sounds:PlaySoundMix(GAME_START[loadSoundsType], 30, false)
--We only need this for second sound, both still have the volume issue.
script.on_internal_event(Defines.InternalEvents.ON_TICK, function()
    if mSecondSound then
        mSecondSound = false
        Hyperspace.Sounds:PlaySoundMix(GAME_START_2[loadSoundsType], 30, false)
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
    local bigFish = fishNumbers[1] --math.max(fishNumbers[1], fishNumbers[2]) --always fish 1.
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
    if bigFish == 16 then
        mLegendHooked = true
    end
    if mLegendHooked then
        playRandomSound(LEGEND_BEGIN, 4, false)
    else
        playRandomSound(FISH_BEGIN, 4, false)
    end

    --I have no idea why this works, but this only activates while in combat, which is exactly what I wanted, but idk why it does that.
    local worldManager = Hyperspace.Global.GetInstance():GetCApp().world
    local eventName = "BASS_FISHING_FIGHT_MUSIC_"..tostring(math.ceil(bigFish/5))
    --print("Loading event", eventName, bigFish)
    Hyperspace.CustomEventsParser.GetInstance():LoadEvent(worldManager, eventName, false, -1)
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

--bass sound test
bst = {junk=40 * TIME_SCALE_FACTOR, average=135 * TIME_SCALE_FACTOR, big=260 * TIME_SCALE_FACTOR,
 huge=310 * TIME_SCALE_FACTOR, legend=10 * TIME_SCALE_FACTOR}
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
fishListener.onJunk = function(index)
    if mCurrentFishNumbers == NO_FISH then
        print("Error: onCatch called with no fish.")
    end
    endFish(index)
end

---comment
---@param size number
fishListener.onCatch = function(index, size)
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

bst.swag = .44
local function rodDownRandomSound()
    local x = math.random(1,3)
    if x == 1 then
        Hyperspace.Sounds:PlaySoundMix("BASS_lower_the_rod", 4, false)
    elseif x == 2 then
        SoundManager.playSound(2, "BASS_turn_the_rod", 4, false, bst.swag)
        SoundManager.queueSound(2, "BASS_right", 4, false, 0)
    elseif x == 3 then
        SoundManager.playSound(2, "BASS_turn_the_rod", 4, false, bst.swag)
        SoundManager.queueSound(2, "BASS_down", 4, false, 0)
    end
end

local function rodUpRandomSound()
    local x = math.random(1,3)
    if x == 1 then
        Hyperspace.Sounds:PlaySoundMix("BASS_pull_up_the_rod", 4, false)
    elseif x == 2 then
        SoundManager.playSound(2, "BASS_turn_the_rod", 4, false, bst.swag)
        SoundManager.queueSound(2, "BASS_left", 4, false, 0)
    elseif x == 3 then
        SoundManager.playSound(2, "BASS_turn_the_rod", 4, false, bst.swag)
        SoundManager.queueSound(2, "BASS_up", 4, false, 0)
    end
end

local mLastCalledDirection = nil
fishListener.outOfBounds = function(rodDifferential)
    if math.abs(rodDifferential) > 170 then
        if rodDifferential > 0 then
            if mLastCalledDirection ~= -1 then
                rodDownRandomSound()
                mLastCalledDirection = -1
            end
        else
            if mLastCalledDirection ~= 1 then
                rodUpRandomSound()
                mLastCalledDirection = 1
            end
        end
    else
        mLastCalledDirection = nil --not sure this happens
    end
end

fishListener.resetBeeping = function(index)
    fishListener.beepingLevel(index, 0)
    mWarnings[index].threshold = STARTING_BEEP_LEVEL
    mWarnings[index].thresholdCleared = false
end

---10/20/30/40% left.
---@param level number [0,4]. Zero is not beeping and 4 is frantic beeping.  I can do the timing by adding white space.
--- actually this can be negative, that means you're catching it.
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

    if level ~= warning.level then
        if level <= 0 then
            SoundManager.clobberChannel(1)
            if level == -3 then
                --if math.random() > .83 then
                    playRandomSound(FISH_WEAK, 4, false)
                --end
            end
        end
        if level > 0 then
            local warningString = "BASS_warning_"..tostring(level)
            -- print("Triggered beeping level", level, WARNING_LENGTHS[level])
            warning.channel = SoundManager.playSound(1, warningString, 4, true, WARNING_LENGTHS[level])
            -- Hyperspace.Sounds:PlaySoundMix(warning, 4, true)
            if math.random() + (level / 20) > 1.07 then
                playRandomSound(LINE_WEAK, 4, false)
            end
        end
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

        if locationEvent.eventName == "FISH_JUNK_REAL" then
            bassTS0()
        elseif locationEvent.eventName == "FISH_RANDOM_1" or
        locationEvent.eventName == "FISH_HEKTAR_1_LOOT" or
        locationEvent.eventName == "FISH_SCRAP_1" then
            bassTS1()
        elseif locationEvent.eventName == "FISH_RANDOM_2" or
        locationEvent.eventName == "FISH_WEAPON_1" or
        locationEvent.eventName == "FISH_HEKTAR_2_LOOT" or
        locationEvent.eventName == "FISH_DRONE_1" or
        locationEvent.eventName == "FISH_CREW_1" or
        locationEvent.eventName == "FISH_SCRAP_2" then
            bassTS2()
        elseif locationEvent.eventName == "FISH_RANDOM_3" or
        locationEvent.eventName == "FISH_FISHGUN" or
        locationEvent.eventName == "FISH_SCRAP_3" then
            bassTS3()
        elseif locationEvent.eventName == "FISH_ULTRA_RARE" or
        locationEvent.eventName == "FISH_FED_GIVE" or
        locationEvent.eventName == "FISH_CIV_GIVE" or
        locationEvent.eventName == "FISH_ENGI_GIVE" or
        locationEvent.eventName == "FISH_ZOL_GIVE" or
        locationEvent.eventName == "FISH_ORC_GIVE" or
        locationEvent.eventName == "FISH_MAN_GIVE" or
        locationEvent.eventName == "FISH_CRY_GIVE" or
        locationEvent.eventName == "FISH_ROCK_GIVE" or
        locationEvent.eventName == "FISH_REB_GIVE" or
        locationEvent.eventName == "FISH_PIR_GIVE" or
        locationEvent.eventName == "FISH_LAN_GIVE" or
        locationEvent.eventName == "FISH_SLUG_GIVE" or
        locationEvent.eventName == "FISH_LEECH_GIVE" or
        --locationEvent.eventName == "FISH_HEKTAR_GIVE" or hektar is disabled for now
        locationEvent.eventName == "FISH_ANCIENT_GIVE" or
        locationEvent.eventName == "FISH_NEXUS_GIVE" then
            bassTS4()
        elseif locationEvent.eventName == "FISHING_STORE" then --Fishing lodge
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
        elseif locationEvent.eventName == "ROCK_HOMEWORLDS" or --Palace tallies
            locationEvent.eventName == "TYRDEO_PALACE" or
            locationEvent.eventName == "HIVE" or
            locationEvent.eventName == "KNIGHT_PALACE" or
            locationEvent.eventName == "NEBULA_DYNASTY_DREADNAUGHT" or
            locationEvent.eventName == "ROYAL_PALACE" then
            Hyperspace.Sounds:PlaySoundMix("BASS_palace_area", 4, false)
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
local fishGraphic = Hyperspace.Resources:CreateImagePrimitiveString("bass_fishing/bass_2lgJrhh_tailed_scaled_2.png", 0, 0,
            0, Graphics.GL_Color(1, 1, 1, 1), 1.0, false)
script.on_render_event(Defines.RenderEvents.MAIN_MENU, function() end, function()
    local menu = Hyperspace.App.menu
    if menu.shipBuilder.bOpen then return end
    -- local mousePos = Hyperspace.Mouse.position
    -- print(mousePos.x, mousePos.y)
    Graphics.CSurface.GL_PushMatrix()
    Graphics.CSurface.GL_Translate(961, 53, 0)
    Graphics.CSurface.GL_RenderPrimitive(fishGraphic)
    Graphics.CSurface.GL_PopMatrix()
end)
