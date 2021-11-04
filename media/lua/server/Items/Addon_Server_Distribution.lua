require("Computer/Server_Distribution")

-- Enter your addon name for logs
local addonName = "ComputerTemplateAddon"

local locationsTable = {

	-- CrateCompactDiscs
	{
        location = "ProceduralDistributions.list.CrateCompactDiscs.items",
        items = {
            {"Computer.Disc_Game", 2},
        },
    },
	
	--- postbox
    {
        location = "SuburbsDistributions.all.postbox.items",
        items = {
            {"Computer.Disc_Game", 2},
        },
    },
	
}

-- Add your locations table to the computer distribution system
ComputerAddDistributionLocations(addonName, locationsTable)
