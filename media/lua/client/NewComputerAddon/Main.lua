require("ISBaseObject")
require("Computer/ComputerMod")

local NewComputerAddon = ISBaseObject:derive("NewComputerAddon")

--- Constructor
NewComputerAddon:new()
	local o = ISBaseObject:new()
    setmetatable(o, self)
    self.__index = self
	
	-- Create a new bios setting
	ComputerMod:createBiosToggleSetting("testBiosSetting", "Test", "When settings is true", "When settings is false")
	
	-- Check all bios settings
	local allBiosSettings = ComputerMod:getAllBiosToggleSettings()
	for k, v in pair(allBiosSettings) do
		print("Bios Setting: ", k, " = ", v)
	end
	
	-- Do something when the bios setting has changed
	local function OnComputerBiosSettingChanged(computer, key, value)
		print("NewComputerAddon: OnComputerBiosSettingChanged ", key, " changed to ", tostring(value))
	end
	ComputerMod:addEvent("OnComputerBiosSettingChanged", OnComputerBiosSettingChanged)
	
	return o
end

--- Start Mod
return NewComputerAddon:new()