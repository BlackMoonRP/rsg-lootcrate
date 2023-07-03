Config = {}

-- settings
Config.OpenTime = 10000 -- in milliseconds
Config.MinLootBags = 1 -- minimum amount of loot bags per crate
Config.MaxLootBags = 5 -- minimum amount of loot bags per crate
Config.RewardChance = 90 -- change of getting a common lootbag reward (example 90 = 90% change of getting common loot)

Config.Blip = {
    blipName = 'Loot Crate', -- Config.Blip.blipName
    blipSprite = 'blip_chest', -- Config.Blip.blipSprite
    blipScale = 0.2 -- Config.Blip.blipScale
}

--setup lootcrates
Config.LootCrates = {
    { lable = 'Loot Crate', name = 'lootcrate1',  coords = vector3(-273.3727, 689.04168, 118.14376), heading = 47.500457, showblip = true },
    { lable = 'Loot Crate', name = 'lootcrate2',  coords = vector3(197.08297, 988.62365, 190.21643), heading = 104.38863, showblip = true },
    { lable = 'Loot Crate', name = 'lootcrate3',  coords = vector3(1400.6046, 357.31994, 87.729423), heading = 113.7063,  showblip = true },
    { lable = 'Loot Crate', name = 'lootcrate4',  coords = vector3(2460.77, 279.32272, 71.052146),   heading = 39.549106, showblip = true },
    { lable = 'Loot Crate', name = 'lootcrate5',  coords = vector3(3030.945, 557.87329, 44.718952),  heading = 170.77984, showblip = true },
    { lable = 'Loot Crate', name = 'lootcrate6',  coords = vector3(2913.3547, 1393.6118, 59.634284), heading = 254.47561, showblip = true },
    { lable = 'Loot Crate', name = 'lootcrate7',  coords = vector3(1593.5811, 1557.9833, 146.21073), heading = 174.00491, showblip = true },
    { lable = 'Loot Crate', name = 'lootcrate8',  coords = vector3(466.08755, 2232.1789, 247.48811), heading = 324.32958, showblip = true },
    { lable = 'Loot Crate', name = 'lootcrate9',  coords = vector3(-393.8924, 1722.8641, 216.09773), heading = 201.28019, showblip = true },
    { lable = 'Loot Crate', name = 'lootcrate10', coords = vector3(-2217.702, 730.05584, 127.70359), heading = 301.80184, showblip = true },
    { lable = 'Loot Crate', name = 'lootcrate11', coords = vector3(-1781.121, -359.784, 161.28692),  heading = 204.14164, showblip = true },
    { lable = 'Loot Crate', name = 'lootcrate12', coords = vector3(-1586.001, -929.0925, 84.051788), heading = 95.349922, showblip = true },
    { lable = 'Loot Crate', name = 'lootcrate13', coords = vector3(-938.3325, -1398.221, 50.608386), heading = 110.27128, showblip = true },
    { lable = 'Loot Crate', name = 'lootcrate14', coords = vector3(-1205.949, -1944.608, 43.110847), heading = 64.377212, showblip = true },
    { lable = 'Loot Crate', name = 'lootcrate15', coords = vector3(-1376.412, -2363.06, 43.051284),  heading = 91.007392, showblip = true },
    { lable = 'Loot Crate', name = 'lootcrate16', coords = vector3(-2315.062, -2403.805, 63.850418), heading = 235.81735, showblip = true },
    { lable = 'Loot Crate', name = 'lootcrate17', coords = vector3(-3335.009, -2846.226, -6.092168), heading = 206.72061, showblip = true },
    { lable = 'Loot Crate', name = 'lootcrate18', coords = vector3(-4211.347, -3471.738, 40.951877), heading = 156.55076, showblip = true },
    { lable = 'Loot Crate', name = 'lootcrate19', coords = vector3(-4773.082, -2730.967, -14.27125), heading = 184.56263, showblip = true },
    { lable = 'Loot Crate', name = 'lootcrate20', coords = vector3(-5960.855, -3241.863, -21.6474),  heading = 132.47958, showblip = true },
}

-- list of common items / add more as required (must be in your shared inventory items)
Config.CommonItems = {
    "ammo_repeater",
    "ammo_revolver",
    "ammo_rifle",
    "ammo_rifle_elephant",
    "ammo_pistol",
    "ammo_shotgun",
    "ammo_arrow",
    "ammo_varmint",
}

-- list of rare items / add more as required (must be in your shared inventory items)
Config.RareItems = {
    "weapon_revolver_cattleman",
    "weapon_revolver_cattleman_mexican",
    "weapon_revolver_doubleaction_gambler",
    "weapon_revolver_schofield",
    "weapon_revolver_lemat",
    "weapon_revolver_navy",
    "weapon_revolver_navy_crossover",
    "weapon_pistol_volcanic",
    "weapon_pistol_m1899",
    "weapon_pistol_mauser",
    "weapon_pistol_semiauto",
    "weapon_repeater_carbine",
    "weapon_repeater_winchester",
    "weapon_repeater_henry",
    "weapon_repeater_evans",
    "weapon_rifle_varmint",
    "weapon_rifle_springfield",
    "weapon_rifle_boltaction",
    "weapon_rifle_elephant",
    "weapon_shotgun_doublebarrel",
    "weapon_shotgun_doublebarrel_exotic",
    "weapon_shotgun_sawedoff",
    "weapon_shotgun_semiauto",
    "weapon_sniperrifle_rollingblock",
    "weapon_sniperrifle_rollingblock_exotic",
    "weapon_sniperrifle_carcano",
    "weapon_bow",
    "weapon_bow_improved",
    "weapon_lasso",
    "weapon_lasso_reinforced",
    "weapon_melee_knife",
    "weapon_melee_knife_jawbone",
    "weapon_melee_hammer",
    "weapon_melee_cleaver",
    "weapon_melee_hatchet",
    "weapon_melee_lantern",
    "weapon_melee_davy_lantern",
    "weapon_melee_lantern_halloween",
    "weapon_melee_torch",
    "weapon_melee_machete",
    "weapon_fishingrod",
    "weapon_kit_binoculars",
    "weapon_kit_binoculars_improved",
}
