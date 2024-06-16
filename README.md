# eds_laundry
FiveM laundering script. Based on Ox lib.

### Requirements:
- ox_lib
- ox_target
- ox_inventory

### Features:
- Translate everything.
- Edit dirty to money multipler.
- Skill check before using.
- Animation while washing.
- Toggle skill check.
- Change progressbar time.

Config.lua:
```lua
lib.locale()
Config = {}

Config.FinalMultiplerMIN = 60 -- INT | Set minimum multipler in percents.
Config.FinalMultiplerMAX = 90 -- INT | Set maximum multipler in percents.

Config.EnableSkillCheck = true -- BOLEAN | Enable skill check.

Config.ProgressBarTimeMutli = true -- BOLEAN | Multiply washing amount with "Config.ProgressBarTime" for new time for progressbar.
Config.ProgressBarTime = 100 -- INT | Time to wash in ms.


-- WASHING MACHINES:
Config.Wm1Coords = vec3(1135.75, -992.2, 46.25) -- VECTOR3 | Washing machine 1 coordinates.
Config.Wm2Coords = vec3(1135.75, -990.85, 46.25) -- VECTOR3 | Washing machine 2 coordinates.
Config.Wm3Coords = vec3(1135.65, -989.55, 46.25) -- VECTOR3 | Washing machine 3 coordinates.
Config.Wm4Coords = vec3(1135.45, -988.2, 46.25) -- VECTOR3 | Washing machine 4 coordinates.
Config.WmRadius = 0.45 -- INT | All washing machines' sphere's radius.
Config.WmIntDistance = 0.9 -- INT | All washning machines' distance to interract.
Config.WmIntIcon = "fa-solid fa-money-bill-wave" -- STR | Icon for all washing machine's interaction button.
```
