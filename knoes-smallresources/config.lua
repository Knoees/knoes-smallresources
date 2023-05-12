Config = Config or {}

-- ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
--  Blips
-- ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄

Config.enableblips = true
Config.blips = {
    [1] = {coord = vector3(1993.08, 3059.74, 47.05), text = "Yellow Jack", color = 5, sprite = 546, scale = 0.5, radius = false, alpha = 0, radiuscolor = 0},
    [2] = {coord = vector3(1382.897, 1140.585, 114.32), text = "Mafia 1", color = 0, sprite = 674, scale = 0.5, radius = false, alpha = 0, radiuscolor = 0},
    [3] = {coord = vector3(-115.399, 984.8482, 235.75), text = "Mafia 2", color = 1, sprite = 674, scale = 0.5, radius = false, alpha = 0, radiuscolor = 0},
    [4] = {coord = vector3(-87.5880, 835.3703, 235.92), text = "Mafia 3", color = 2, sprite = 674, scale = 0.5, radius = false, alpha = 0, radiuscolor = 0},
    [5] = {coord = vector3(-1540.16, 128.4869,  56.780), text = "Mafia 4", color = 3, sprite = 674, scale = 0.5, radius = false, alpha = 0, radiuscolor = 0},
    [6] = {coord = vector3(-1463.85, -30.2543, 54.640), text = "Mafia 5", color = 4, sprite = 674, scale = 0.5, radius = false, alpha = 0, radiuscolor = 0},
    [7] = {coord = vector3(-1520.86, 864.4465, 181.68), text = "Mafia 6", color = 5, sprite = 674, scale = 0.5, radius = false, alpha = 0, radiuscolor = 0},
    [8] = {coord = vector3(-2662.45, 1309.003, 147.05), text = "Mafia 7", color = 6, sprite = 674, scale = 0.5, radius = false, alpha = 0, radiuscolor = 0},
    [10] = {coord = vector3(-1839.1, -1226.87, 13.02), text = "Fishing Area ", color = 6, sprite = 68, scale = 0.5, radius = false, alpha = 0, radiuscolor = 0},
    [11] = {coord = vector3(1541.1, 6335.65, 24.08), text = "İllegal Area", color = 1, sprite = 84, scale = 0.5, radius = 170.0, alpha = 75, radiuscolor = 49},
}

-- ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
--  Crouch and Crawl
-- ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄

Config.CrouchKeybindEnabled = true -- If the crouching should have a keybind
Config.CrouchKeybind = 'LCONTROL' -- The default keybind for crouching
Config.CrouchOverride = true -- If true and the keybind for crouch is left control, then disable stealth mode and go straight to crouch. If false, and the keybind for crouch is left control then only enter crouch if we are already in stealth mode.
Config.CrouchKeypressTimer = 1000 -- If CrouchOverride is false and keybind for crouch is left control, then this is the max time in ms from last key press that the player can enter crouch. If is has been more then the specified time, then the player will not enter crouch but stop exit the stealth mode.

Config.CrawlKeybindEnabled = true -- If the crawling should have a keybind
Config.CrawlKeybind = 'RCONTROL' -- The default keybind for crawling

Config.Localization = {
    ['crouch_keymapping'] = "Crouch",
    ['crouch_chat_suggestion'] = "Crouch",
    ['crawl_keymapping'] = "Crawl",
    ['crawl_chat_suggestion'] = "Crawl"
}

-- ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
--  Discord
-- ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄

Config.DiscordAppId ='appid'
Config.DCAsset = 'text'
Config.DCAssetText = 'text'
Config.DCAssetSmall = 'text'
Config.DCAssetSmallText = 'text'
Config.DCAction = {
    [1] = {text = "Pumpkin Shop", link = "https://discord.gg/8uryUctDBv"},
    [2] = {text = "Team Hi-Dev", link = "https://discord.gg/ddedFdwe7h"}
}