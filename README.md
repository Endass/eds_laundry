# eds_laundry
FiveM laundering script. Based on Ox lib.

### Features:
- Translate everything.
- Edit dirty to money multipler.
- Skill check before using.
- Animation while washing.

Config.lua:
```lua
Config = {}

Config.FianalMultipler = 0.7 -- INT | Set's multipler for dirty to clean money.


Lang = {}

-- TARGET BUTTON
Lang.TgbtLabel = "Money Washer"

-- CANCEL
Lang.CancTitle = "Canceled"
Lang.CancDesc = "You canceled the process!"
Lang.CancType = "error"

-- NOT ENOUGH MONEY
Lang.NemoTitle = "Not enough money"
Lang.NemoDesc = "You do not have enough black money!"
Lang.NemoType = "error"

-- SUCCED SKILL CHECK
Lang.SschTitle = "Success"
Lang.SschDesc = "Successfully did the skill check!"
Lang.SschType = "success"

-- INPUT DIALOG
Lang.InpdTitle = "Money Washer"
Lang.InpdQues = "How much to wash?"
Lang.InpdIcon = "hashtag"

-- PROGRESS BAR
Lang.PrgbLabel = "Washing money..."

-- FINAL MSG
Lang.FinlTitle = "Finished"
Lang.FinlDesc = "You successfully finished washing your dirty money!"
Lang.FinlType = "success"
```
