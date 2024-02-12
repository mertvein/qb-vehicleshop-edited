Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Commission = 0.10                              -- Percent that goes to sales person from a full car sale 10%
Config.FinanceCommission = 0.05                       -- Percent that goes to sales person from a finance sale 5%
Config.FinanceZone = vector3(-29.53, -1103.67, 26.42) -- Where the finance menu is located
Config.PaymentWarning = 10                            -- time in minutes that player has to make payment before repo
Config.PaymentInterval = 24                           -- time in hours between payment being due
Config.MinimumDown = 10                               -- minimum percentage allowed down
Config.MaximumPayments = 24                           -- maximum payments allowed
Config.PreventFinanceSelling = false                  -- allow/prevent players from using /transfervehicle if financed
Config.FilterByMake = false                           -- adds a make list before selecting category in shops
Config.SortAlphabetically = true                      -- will sort make, category, and vehicle selection menus alphabetically
Config.HideCategorySelectForOne = true                -- will hide the category selection menu if a shop only sells one category of vehicle or a make has only one category
Config.discount = 0.75 -- Percent that is deducted from the car price 10%
Config.Shops = {
    ['pdm'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
            vector2(-38.37, -1106.63),
            vector2(-31.86, -1091.06),
            vector2(-46.43, -1085.71),
            vector2(-45.52, -1081.11),
            vector2(-52.37, -1079.52),
            vector2(-58.6, -1099.22),
            vector2(-41.2, -1105.36)
            },
            ['minZ'] = 24.0,                                         -- min height of the shop zone
            ['maxZ'] = 28.0,                                         -- max height of the shop zone
            ['size'] = 2.75                                          -- size of the vehicles zones
        },
        --['Job'] = 'none',                                            -- Name of job or none
        ['ShopLabel'] = 'Power St. PDM',                                    -- Blip name
        ['showBlip'] = true,                                         -- true or false
        ['blipSprite'] = 326,                                        -- Blip sprite
        ['blipColor'] = 3,                                           -- Blip color
        ['TestDriveTimeLimit'] = 0.5,                                -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-43.19, -1095.16, 27.27),             -- Blip Location
        ['ReturnLocation'] = vector3(-16.98, -1080.3, 27.05),       -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-23.56, -1094.32, 26.8, 338.79),   -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-1040.97, -3446.38, 13.44, 60.22), -- Spawn location for test drive
        ['pickupblip'] = vector4(-414.7, -2693.7, 5.36, 316.85), -- BLIP location for PICKUPBLIP (SAME AS SPAWN COORDS)
        ['deliveryblip'] = vector4(-23.56, -1094.32, 26.8, 338.79), -- BLIP location AND DELIVERY location
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-49.91, -1084.14, 26.28, 156.77), -- where the vehicle will spawn on display
                defaultVehicle = 'argento',                       -- Default display vehicle
                chosenVehicle = 'argento',                        -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-54.77, -1096.82, 26.28, 300.98),
                defaultVehicle = 'paradrop',
                chosenVehicle = 'paradrop'
            },
            [3] = {
                coords = vector4(-47.75, -1091.92, 26.28, 193.86),
                defaultVehicle = 'raidenz',
                chosenVehicle = 'raidenz'
            },
            [4] = {
                coords = vector4(-37.08, -1093.18, 26.28, 114.5),
                defaultVehicle = 'ccadeesv',
                chosenVehicle = 'ccadeesv'
            },
            [5] = {
                coords = vector4(-42.24, -1101.44, 26.28, 290.8),
                defaultVehicle = 'cypherct',
                chosenVehicle = 'cypherct'
            }
        },
    },
    ['luxury'] = {
        ['Type'] = 'managed', -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1260.6973876953, -349.21334838867),
                vector2(-1268.6248779297, -352.87365722656),
                vector2(-1274.1533203125, -358.29794311523),
                vector2(-1273.8425292969, -362.73715209961),
                vector2(-1270.5701904297, -368.6716003418),
                vector2(-1266.0561523438, -375.14080810547),
                vector2(-1244.3684082031, -362.70278930664),
                vector2(-1249.8704833984, -352.03326416016),
                vector2(-1252.9503173828, -345.85726928711)
            },
            ['minZ'] = 36.646457672119,
            ['maxZ'] = 37.516143798828,
            ['size'] = 2.75    -- size of the vehicles zones
        },
        --['Job'] = 'cardealer', -- Name of job or none
        ['ShopLabel'] = 'Del Perro PDM',
        ['showBlip'] = true,   -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,     -- Blip color
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(-1255.6, -361.16, 36.91),
        ['ReturnLocation'] = vector3(-1231.46, -349.86, 37.33),
        ['VehicleSpawn'] = vector4(-1231.46, -349.86, 37.33, 26.61),
        ['TestDriveSpawn'] = vector4(-1232.81, -347.99, 37.33, 23.28), -- Spawn location for test drive
        ['pickupblip'] = vector4(-414.7, -2693.7, 5.36, 316.85), -- BLIP location for PICKUPBLIP (SAME AS SPAWN COORDS)
        ['deliveryblip'] = vector4(-23.56, -1094.32, 26.8, 338.79), -- BLIP location AND DELIVERY location
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1265.31, -354.44, 36.2, 205.08),
                defaultVehicle = 'estancia',
                chosenVehicle = 'estancia'
            },
            [2] = {
                coords = vector4(-1270.06, -358.55, 36.2, 247.08),
                defaultVehicle = 'severo',
                chosenVehicle = 'severo'
            },
            [3] = {
                coords = vector4(-1269.21, -365.03, 36.2, 297.12),
                defaultVehicle = 'sunrise1',
                chosenVehicle = 'sunrise1'
            },
            [4] = {
                coords = vector4(-1256.44, -366.55, 36.2, 27.45),
                defaultVehicle = 'domgtcoupe',
                chosenVehicle = 'domgtcoupe'
            },
        }
    },                         -- Add your next table under this comma
}
