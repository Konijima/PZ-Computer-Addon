require "DistributionAPI"

-- Enter your addon name for logs
local addonName = "ComputerTemplateAddon"

local distributionTable = {

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

AddDistributionTable(addonName, distributionTable)
