require("Computer/ComputerMod")

local addon = ComputerMod.CreateAddon("TemplateAddon")

addon.BiosSettings = {
    { "bios1", "Setting 1", "descriptionOn", "descriptionOff", true },
    { "bios2", "Setting 2", "descriptionOn", "descriptionOff", false },
    { "bios3", "Setting 3", "descriptionOn", "descriptionOff", true },
}

addon.GameFormats = {
    "dvd", 
}

addon.SoftwareTypes = {
    "network_sniffer", 
    "password_cracker", 
}

addon.FilePack = {
    { "title1", "content1" },
    { "title2", "content2" },
    { "title3", "content3" },
}

addon.GamePack = {
    { "game1", "Debug Game 1", "year", "publisher", "Debug game", 1.0, 1.0, "default", "default", 10, "all" },
    { "game2", "Debug Game 2", "year", "publisher", "Debug game", 1.0, 1.0, "default", "default", 10, "all" },
    { "game3", "Debug Game 3", "year", "publisher", "Debug game", 1.0, 1.0, "default", "default", 10, "all" },
}

addon.SoftwarePack = {
   { "software1", "Debug Software 1", "year", "publisher", "audioName", "coverTexture", 10, "antivirus" },
   { "software2", "Debug Software 2", "year", "publisher", "audioName", "coverTexture", 10, "antivirus" },
   { "software3", "Debug Software 3", "year", "publisher", "audioName", "coverTexture", 10, "antivirus" },
}

ComputerMod.AddAddon(addon)
