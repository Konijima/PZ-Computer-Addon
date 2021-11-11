require("CommunityAPI")

-- Enter your addon name for logs
local addonName = "ComputerTemplateAddon"

local distTable = {

	-- CrateCompactDiscs
	{
        location = "ProceduralDistributions.list.CrateCompactDiscs.items",
        items = {
            {"Computer.Disc_Game", 2},
        },
    },
	
	-- postbox
    {
        location = "SuburbsDistributions.all.postbox.items",
        items = {
            {"Computer.Disc_Game", 2},
        },
    },
	
}

CommunityAPI.Server.Distribution.Add(addonName, distTable)
