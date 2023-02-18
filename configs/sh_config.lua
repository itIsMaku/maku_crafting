MenuItem = {
    Enabled = true,
    InventoryImagePath = 'https://cfx-nui-linden_inventory/html/images/'
}

Craftings = {
    ['bahama'] = {
        Job = {
            Name = 'bahama',
            Grade = 0
        },
        Location = vector3(-1401.3553, -598.1182, 30.32),
        Items = {'popcorn', 'musli', 'nuts', 'donut', 'onionrings', 'langos', 'bagetasunkova', 'bagetasyrova', 'hotdog',
                 'gulas', 'macacheese', 'spaghetti', 'pizza', 'chickensalat', 'hamburger', 'chilliconcarne',
                 'water_flow', 'ecola', 'orangotang', 'sprunk', 'milkshake_pq', 'energy_junk', 'ecolatonic',
                 'ecola_big', 'milk_carton', "bloodymary", "pinacolada", "cubalibre", "sex_on_the_beach", "margharita",
                 "mojito", "cosmopolitan", "whiskey_themount", "whiskey_richard", "whiskey_macbeth",
                 "vodka_cherenkovblue", "tequila_sinsimitosilver", "cognac_bourgeoix"},
        Text = '[E] Občerstvení'
    },
    ['yellow_jack'] = {
        Job = {
            Name = 'yellow_jack',
            Grade = 0
        },
        Location = vector3(1985.3405, 3048.7874, 47.215),
        Items = {'popcorn', 'musli', 'nuts', 'donut', 'onionrings', 'langos', 'bagetasunkova', 'bagetasyrova', 'hotdog',
                 'gulas', 'macacheese', 'spaghetti', 'pizza', 'chickensalat', 'hamburger', 'chilliconcarne',
                 'water_flow', 'ecola', 'orangotang', 'sprunk', 'milkshake_pq', 'energy_junk', 'ecolatonic',
                 'ecola_big', 'milk_carton', "bloodymary", "pinacolada", "cubalibre", "sex_on_the_beach", "margharita",
                 "mojito", "cosmopolitan", "whiskey_themount", "whiskey_richard", "whiskey_macbeth",
                 "vodka_cherenkovblue", "tequila_sinsimitosilver", "cognac_bourgeoix"},
        Text = '[E] Občerstvení'
    },
    -- gangy
    ['bloods'] = {
        Job = {
            Name = 'bloods',
            Grade = 0
        },
        Location = vector3(606.6138, -3092.6797, 6.0693),
        Items = {'WEAPON_BAT', 'WEAPON_SNSPISTOL'},
        Text = '[E] Výrobní stůl'
    },
    ['ballas'] = {
        Job = {
            Name = 'ballas',
            Grade = 0
        },
        Location = vector3(606.6138, -3092.6797, 6.0693),
        Items = {'WEAPON_BAT', 'WEAPON_SNSPISTOL'},
        Text = '[E] Výrobní stůl'
    },
    ['lostmc'] = {
        Job = {
            Name = 'lostmc',
            Grade = 4
        },
        Location = vector3(977.4072, -100.8776, 74.8451),
        Items = {'WEAPON_DBSHOTGUN'},
        Text = '[E] Výrobní stůl'
    },
    -- dilny
    ['midnigtracers'] = {
        Job = {
            Name = 'midnight',
            Grade = 3
        },
        Location = vector3(911.2179, -2365.5364, 21.208),
        Items = {'nitro50shot', 'nitro100shot', 'nitro200shot'},
        Text = '[E] Stůl'
    },
    -- nelegalky
    ['cosanostra'] = {
        Job = {
            Name = 'squad',
            Grade = 1
        },
        Location = vector3(-1129.087, 358.0286, 71.71837),
        Items = {'WEAPON_HEAVYPISTOL', 'WEAPON_MACHETE', 'scopee', 'flashlight', 'clip_extended', 'grip'},
        Text = '[E] Výrobní stůl'
    },
    ['argentina'] = {
        Job = {
            Name = 'argentina',
            Grade = 4
        },
        Location = vector3(-608.7741, 771.6262, 188.5103),
        Items = {'WEAPON_KNUCKLE', 'WEAPON_MACHINEPISTOL', 'scopee', 'flashlight', 'clip_extended', 'grip'},
        Text = '[E] Výrobní stůl'
    },
    ['cjng'] = {
        Job = {
            Name = 'cjng',
            Grade = 3
        },
        Location = vector3(-1133.7302, 4948.708, 222.2686),
        Items = {'WEAPON_HATCHET', 'WEAPON_PISTOL50', 'WEAPON_MINISMG'},
        Text = '[E] Výrobní stůl'
    }
}

Recipes = {
    ['WEAPON_ASSAULTRIFLE'] = {
        Title = 'Assault Rifle',
        Requirements = {
            ['money'] = 72000,
            ['items'] = {
                ['weapon_crafting_piece'] = 500
            }
        }
    },
    ['WEAPON_MACHINEPISTOL'] = {
        Title = 'Machine Pistol',
        Requirements = {
            ['money'] = 70000,
            ['items'] = {
                ['weapon_crafting_piece'] = 800
            }
        }
    },
    ['WEAPON_GUSENBERG'] = {
        Title = 'Gusenberg',
        Requirements = {
            ['money'] = 40000,
            ['items'] = {
                ['weapon_crafting_piece'] = 600
            }
        }
    },
    ['WEAPON_COMBATPDW'] = {
        Title = 'Combat PDW',
        Requirements = {
            ['money'] = 40000,
            ['items'] = {
                ['weapon_crafting_piece'] = 600
            }
        }
    },
    ['WEAPON_CROWBAR'] = {
        Title = 'Crowbar',
        Requirements = {
            ['money'] = 1500,
            ['items'] = {
                ['weapon_crafting_piece'] = 150
            }
        }
    },
    ['WEAPON_DBSHOTGUN'] = {
        Title = 'Double Barell Shotgun',
        Requirements = {
            ['money'] = 40000,
            ['items'] = {
                ['weapon_crafting_piece'] = 600
            }
        }
    },
    ['WEAPON_BAT'] = {
        Title = 'Baseballka',
        Requirements = {
            ['money'] = 1500,
            ['items'] = {
                ['weapon_crafting_piece'] = 150
            }
        }
    },
    ['WEAPON_SNSPISTOL'] = {
        Title = 'SNS Pistol',
        Requirements = {
            ['money'] = 40000,
            ['items'] = {
                ['weapon_crafting_piece'] = 600
            }
        }
    },
    ['WEAPON_COMBATPISTOL'] = {
        Title = 'Combat Pistol',
        Requirements = {
            ['money'] = 40000,
            ['items'] = {
                ['weapon_crafting_piece'] = 600
            }
        }
    },
    ['WEAPON_APPISTOL'] = {
        Title = 'AP Pistol',
        Requirements = {
            ['money'] = 60000,
            ['items'] = {
                ['weapon_crafting_piece'] = 600
            }
        }
    },
    ['WEAPON_COMPACTRIFLE'] = {
        Title = 'Compact Rifle',
        Requirements = {
            ['money'] = 60000,
            ['items'] = {
                ['weapon_crafting_piece'] = 600
            }
        }
    },
    ['WEAPON_PISTOL50'] = {
        Title = 'Pistol .50',
        Requirements = {
            ['money'] = 40000,
            ['items'] = {
                ['weapon_crafting_piece'] = 600
            }
        }
    },
    ['WEAPON_PISTOL'] = {
        Title = 'Pistol 9mm',
        Requirements = {
            ['money'] = 40000,
            ['items'] = {
                ['weapon_crafting_piece'] = 600
            }
        }
    },
    ['WEAPON_WRENCH'] = {
        Title = 'Wrench',
        Requirements = {
            ['money'] = 1500,
            ['items'] = {
                ['weapon_crafting_piece'] = 150
            }
        }
    },
    ['WEAPON_DAGGER'] = {
        Title = 'Dagger',
        Requirements = {
            ['money'] = 1500,
            ['items'] = {
                ['weapon_crafting_piece'] = 150
            }
        }
    },
    ['WEAPON_MICROSMG'] = {
        Title = 'Micro SMG',
        Requirements = {
            ['money'] = 70000,
            ['items'] = {
                ['weapon_crafting_piece'] = 800
            }
        }
    },
    ['WEAPON_MACHETE'] = {
        Title = 'Machete',
        Requirements = {
            ['money'] = 1500,
            ['items'] = {
                ['weapon_crafting_piece'] = 150
            }
        }
    },
    ['WEAPON_HEAVYPISTOL'] = {
        Title = 'Heavy Pistol',
        Requirements = {
            ['money'] = 40000,
            ['items'] = {
                ['weapon_crafting_piece'] = 600
            }
        }
    },
    ['WEAPON_REVOLVER'] = {
        Title = 'Heavy Revolver',
        Requirements = {
            ['money'] = 40000,
            ['items'] = {
                ['weapon_crafting_piece'] = 600
            }
        }
    },
    ['WEAPON_BATTLEAXE'] = {
        Title = 'Battle Axe',
        Requirements = {
            ['money'] = 1500,
            ['items'] = {
                ['weapon_crafting_piece'] = 150
            }
        }
    },
    ['WEAPON_HATCHET'] = {
        Title = 'Sekera',
        Requirements = {
            ['money'] = 1500,
            ['items'] = {
                ['weapon_crafting_piece'] = 150
            }
        }
    },
    ['WEAPON_SWITCHBLADE'] = {
        Title = 'Switchblade',
        Requirements = {
            ['money'] = 1500,
            ['items'] = {
                ['weapon_crafting_piece'] = 150
            }
        }
    },
    ['WEAPON_KNUCKLE'] = {
        Title = 'Boxer',
        Requirements = {
            ['money'] = 1500,
            ['items'] = {
                ['weapon_crafting_piece'] = 150
            }
        }
    },
    ['WEAPON_MINISMG'] = {
        Title = 'Mini SMG',
        Requirements = {
            ['money'] = 70000,
            ['items'] = {
                ['weapon_crafting_piece'] = 800
            }
        }
    }
}
