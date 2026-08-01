local FishListener = mods.fishing.fishListener
FishListener.__index = FishListener

local function NOOP() end
local sFishListeners = {}


---@return table
function FishListener.new()
    local self = setmetatable({}, FishListener)
    table.insert(sFishListeners, self)
    self.onStartFishing = NOOP
    self.onJunk = NOOP
    self.onCatch = NOOP
    self.onFishFumbled = NOOP
    self.onFishDarts = NOOP
    self.onFirstCatch = NOOP
    self.onFishTick = NOOP

    return self
end

---Register a listener to be called when fishing starts.  To deregister, call with a no-op function on the same object.
---@param onStart function takes an array {fishNumber1, fishNumber2}.  FishNumber can be 0-16, 0 means no fish.
function FishListener:setOnStartFishing(onStart)
    self.onStartFishing = onStart
end

---Register a listener to be called when fishing ends catching junk.  To deregister, call with a no-op function on the same object.
---@param onJunk function takes an number representing the index of the fish caught. 1 for the first fish, 2 for the second.
function FishListener:setOnJunk(onJunk)
    self.onJunk = onJunk
end

---Register a listener to be called when fishing ends catching non-junk.  To deregister, call with a no-op function on the same object.
---@param onCatch function takes an number representing the index of the fish caught. 1 for the first fish, 2 for the second.
function FishListener:setOnCatch(onCatch)
    self.onCatch = onCatch
end

---Register a listener to be called when fishing ends losing the fish.  To deregister, call with a no-op function on the same object.
---@param onFishFumbled function takes an number representing the index of the fish lost. 1 for the first fish, 2 for the second.
function FishListener:setOnFishFumbled(onFishFumbled)
    self.onFishFumbled = onFishFumbled
end

---Register a listener to be called when a fish dashes.  To deregister, call with a no-op function on the same object.
---@param onFishDarts function with no arguments
function FishListener:setOnFishDarts(onFishDarts)
    self.onFishDarts = onFishDarts
end

---Register a listener to be called when a fish is caught for the first time.  To deregister, call with a no-op function on the same object.
---@param onFirstCatch function takes a string, the blueprint name of the fish caught.
function FishListener:setOnFirstCatch(onFirstCatch)
    self.onFirstCatch = onFirstCatch
end

---Register a listener to be called when a the meter is low.  To deregister, call with a no-op function on the same object.
---@param onFishTick function that takes three arguments: number rodPos, table fishPositions, table fishCatchLevels
function FishListener:setOnFishTick(onFishTick)
    self.onFishTick = onFishTick
end


--#region internal methods
function mods.fishing.fishListener.internal.onStartFishing(fishNumbers)
    for _,listener in ipairs(sFishListeners) do
        listener.onStartFishing(fishNumbers)
    end
end

function mods.fishing.fishListener.internal.onJunk(fishIndex)
    for _,listener in ipairs(sFishListeners) do
        listener.onJunk(fishIndex)
    end
end

function mods.fishing.fishListener.internal.onCatch(fishIndex)
    for _,listener in ipairs(sFishListeners) do
        listener.onCatch(fishIndex)
    end
end

function mods.fishing.fishListener.internal.onFishFumbled(fishIndex)
    for _,listener in ipairs(sFishListeners) do
        listener.onFishFumbled(fishIndex)
    end
end

function mods.fishing.fishListener.internal.onFishDarts()
    for _,listener in ipairs(sFishListeners) do
        listener.onFishDarts()
    end
end

function mods.fishing.fishListener.internal.onFirstCatch(fish)
    for _,listener in ipairs(sFishListeners) do
        listener.onFirstCatch(fish)
    end
end

function mods.fishing.fishListener.internal.onFishTick(rodPos, fishPositions, fishLevels)
    for _,listener in ipairs(sFishListeners) do
        listener.onFishTick(rodPos, fishPositions, fishLevels)
    end
end
--#endregion