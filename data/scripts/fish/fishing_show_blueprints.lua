local vter = mods.multiverse.vter

--TODO these must be in the order they appear, the code doesn't match them.
local BAIT_AUGMENTS = {"FISH_BAIT_DOUBLE", "FISH_BAIT_11", "FISH_BAIT_12",
         "FISH_BAIT_13", "FISH_BAIT_14", "FISH_BAIT_15", "FISH_BAIT_21",
         "FISH_BAIT_22", "FISH_BAIT_23", "FISH_BAIT_24", "FISH_BAIT_25",
         "FISH_BAIT_31", "FISH_BAIT_32", "FISH_BAIT_33", "FISH_BAIT_34", "FISH_BAIT_35"}

local REQS_DOUBLE = {"FISH_FOOD_31", "FISH_FOOD_32", "FISH_FOOD_33", "FISH_FOOD_34", "FISH_FOOD_35", "FISH_FOOD_36", "FISH_FOOD_37"}
local REQS_LEVEL_1 = {"FISH_FOOD_1", "FISH_FOOD_2", "FISH_FOOD_3", "FISH_FOOD_4", "FISH_FOOD_5", "FISH_FOOD_6", "FISH_FOOD_7", "FISH_FOOD_8", "FISH_FOOD_9", "FISH_FOOD_0"}
local REQS_LEVEL_2 = {"FISH_FOOD_11", "FISH_FOOD_12", "FISH_FOOD_13", "FISH_FOOD_14", "FISH_FOOD_15", "FISH_FOOD_16", "FISH_FOOD_17", "FISH_FOOD_18", "FISH_FOOD_19", "FISH_FOOD_10"}
local REQS_LEVEL_3 = {"FISH_FOOD_21", "FISH_FOOD_22", "FISH_FOOD_23", "FISH_FOOD_24", "FISH_FOOD_25", "FISH_FOOD_26", "FISH_FOOD_27", "FISH_FOOD_28", "FISH_FOOD_29", "FISH_FOOD_20"}

local BOUNTIES = {"fish_bait_bounty_DOUBLE", "fish_bait_bounty_11", "fish_bait_bounty_12", "fish_bait_bounty_13", "fish_bait_bounty_14", "fish_bait_bounty_15",
        "fish_bait_bounty_21", "fish_bait_bounty_22", "fish_bait_bounty_23", "fish_bait_bounty_24", "fish_bait_bounty_25",
        "fish_bait_bounty_31", "fish_bait_bounty_32", "fish_bait_bounty_33", "fish_bait_bounty_34", "fish_bait_bounty_35",}

local fishingChoicesByBounty = {}
for i=1,#REQS_DOUBLE do
    table.insert(fishingChoicesByBounty, 1)
end
for i=1,#REQS_LEVEL_1 do
    table.insert(fishingChoicesByBounty, 2)
end
for i=1,#REQS_LEVEL_2 do
    table.insert(fishingChoicesByBounty, 3)
end
for i=1,#REQS_LEVEL_3 do
    table.insert(fishingChoicesByBounty, 4)
end

local function processWeaponBlueprints(choiceBox, event, blueprintNames)
	local i = 1
	for choice in vter(choiceBox:GetChoices()) do
        local index = i - 1
        if i > 1 and index <= #blueprintNames then
            choice.rewards.weapon = Hyperspace.Blueprints:GetWeaponBlueprint(blueprintNames[index])
        end
		i = i + 1
	end
end

---This function just blindly appends the augments, in order, to the choices in the event.
---@param choiceBox any
---@param event any
---@param blueprintNames any
local function processAugmentBlueprints(choiceBox, event, blueprintNames)
	local i = 1
	for choice in vter(choiceBox:GetChoices()) do
        local index = i - 1
        if i > 1 and index <= #blueprintNames then
            choice.rewards.augment = Hyperspace.Blueprints:GetAugmentBlueprint(blueprintNames[index])
        end
		i = i + 1
	end
end

local function configureBountyBlue(event)
    local skipNevermind = true
    for choice in vter(event:GetChoices()) do
        if skipNevermind then
            skipNevermind = false
        else
            --Find the correct choice that's being displayed.  From position 7 to the colon.
            local text = choice.text:GetText()
            local colonPos = string.find(text, ":")
            local bountyNumber = tonumber(string.sub(text, 8, colonPos - 1))
            local reqLevel = choice.requirement.min_level

            local fishNeeded
            if bountyNumber == 0 then
                fishNeeded = REQS_DOUBLE[reqLevel]
            elseif bountyNumber <= 5 then
                fishNeeded = REQS_LEVEL_1[reqLevel]
            elseif bountyNumber <= 10 then
                fishNeeded = REQS_LEVEL_2[reqLevel]
            elseif bountyNumber <= 15 then
                fishNeeded = REQS_LEVEL_3[reqLevel]
            end
            
            local hasReqs = Hyperspace.ships(0):HasEquipment(fishNeeded, true) == 1
            -- print("Setting choice", choice.text:GetText(), fishNeeded, hasReqs)
            choice.requirement.blue = hasReqs
        end
	end
end

--So the nice list is only in post_create, but I can't change option blue settings then.
--I can try to 

script.on_internal_event(Defines.InternalEvents.PRE_CREATE_CHOICEBOX, function(event)
	if event.eventName == "FISHING_BOUNTY_BOARD" then
		configureBountyBlue(event)
	end
end)

script.on_internal_event(Defines.InternalEvents.POST_CREATE_CHOICEBOX, function(choiceBox, event)
	if event.eventName == "FISHING_BOUNTY_BOARD" then
		processAugmentBlueprints(choiceBox, event, BAIT_AUGMENTS)
	end
end)