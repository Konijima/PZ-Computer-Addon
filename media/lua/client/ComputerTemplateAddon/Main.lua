--- Import ComputerMod first
require("Computer/ComputerMod")

--- Create your addon and set a unique name
local addon = ComputerMod.CreateAddon("TemplateAddon")

--- Create new ComputerEvent
addon.ComputerEvents = {
----{ eventName:string, { "string", "number", "boolean", "table", "Computer", "IsoObject", "InventoryItem", } },
    { "TestEvent", { "string" } },
}

--- Create new BiosSettings
addon.BiosSettings = {
----{ key:string, name:string, descriptionOn:string, descriptionOff:string, default:boolean },
    { "bios1", "Setting 1", "descriptionOn", "descriptionOff", true },
}

--- Add new software types
addon.SoftwareTypes = {
    "antivirus",
}

--- Add new files
addon.FilePack = {
----{ title:string, content:string },
    { "title 1", "content 1" },
}

--- Add new games
addon.GamePack = {
----{ id:string, title:string, year:string, publisher:string, genre:string, boredomModifier:number, stressModifier:number, audioName:string, coverTexture:string, size:number, format:string },
    { "game_1", "Game 1", "1990", "Konijima", "Debug game", 1.0, 1.0, "default", "default", 10, "all" },
}

--- Add new softwares
addon.SoftwarePack = {
----{ id:string, title:string, year:string, publisher:string, audioName:string, coverTexture:string, size:number, type:string },
    { "software1", "Debug Software 1", "year", "publisher", "audioName", "coverTexture", 10, "antivirus" },
}


--- Do stuff when the addon is run
function addon:Start()
    print(self.name..": My addon has started YAY!")

    -- Bind a function to the new event
    ComputerMod.AddEvent("TestEvent", function(str)
        print("TestEvent trigged : "..str)
        --error("Test error in event!")
    end)

    ---error("Test Start() error")

    -- Trigger the new event
    ComputerMod.TriggerEvent("TestEvent", "my string 1")
end


--- Do stuff when the addon update
function addon:Update()
    ---print(self.name..": My addon is updating!")
    ---error("Test Update() error")
end


--- Add your addon to ComputerMod at the end
ComputerMod.AddAddon(addon)