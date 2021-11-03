--- Import ComputerMod first
require("Computer/ComputerMod")

--- Create your addon and set a unique name
local addon = ComputerMod.CreateAddon("TemplateAddon")

--- Create new ComputerEvent
addon.ComputerEvents = {
----{ eventName, { "string", "number", "boolean", "table", "Computer", "IsoObject", "InventoryItem", } },
	{ "TestEvent", { "string" } },
}

--- Create new BiosSettings
addon.BiosSettings = {
----{ key, name, descriptionOn, descriptionOff, default },
    { "bios1", "Setting 1", "descriptionOn", "descriptionOff", true },
    { "bios2", "Setting 2", "descriptionOn", "descriptionOff", false },
    { "bios3", "Setting 3", "descriptionOn", "descriptionOff", true },
}

--- Add new software types
addon.SoftwareTypes = {
    "network_sniffer",
    "password_cracker",
}

--- Add new files
addon.FilePack = {
----{ title, content },
    { "title 1", "content 1" },
}

--- Add new games
addon.GamePack = {
----{ id, title, year, publisher, genre, boredomModifier, stressModifier, audioName, coverTexture, size, format },
    { "game_1", "Game 1", "1990", "Konijima", "Debug game", 1.0, 1.0, "default", "default", 10, "all" },
}

--- Add new softwares
addon.SoftwarePack = {
----{ id, title, year, publisher, audioName, coverTexture, size, type },
    { "software1", "Debug Software 1", "year", "publisher", "audioName", "coverTexture", 10, "antivirus" },
}


--- Do stuff when the addon is run
function addon.Start()
	print(addon.name..": My addon has started!")

    -- Bind a function to the new event
	ComputerMod.AddEvent("TestEvent", function(str)
		print("TestEvent trigged : "..str)
	end)

    -- Trigger the new event
	ComputerMod.TriggerEvent("TestEvent", "my string")
end


--- Do stuff when the addon update
function addon.Update()
	print(addon.name..": My addon is updating!")
end


--- Add your addon to ComputerMod at the end
ComputerMod.AddAddon(addon)
