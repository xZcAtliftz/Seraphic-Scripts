local gameLists = {
    KaitunMode = {
        [994732206] = "https://raw.githubusercontent.com/xZcAtliftz/Seraphic-Scripts/main/Kaitun.lua"
    },
    BountyMode = {
        [994732206] = "https://raw.githubusercontent.com/xZcAtliftz/Seraphic-Scripts/main/Bounty.lua"
    },
    Thailand = {
        [994732206] = "https://raw.githubusercontent.com/xZcAtliftz/Seraphic-Scripts/main/BF_THAI.lua",
        [5750914919] = "https://raw.githubusercontent.com/Losenry/REALXLOXERYY/main/Library/Luxury/Raphael/Thailand.zen"
    },
    Default = {
        [1511883870] = "https://raw.githubusercontent.com/xZcAtliftz/Seraphic-Scripts/main/Shindo-Life",
        [5750914919] = "https://raw.githubusercontent.com/Losenry/REALXLOXERYY/main/Library/Luxury/Aleonora.lua", -- Fisch
        [994732206] = "https://raw.githubusercontent.com/xZcAtliftz/Seraphic-Scripts/main/Blox-Fruits.lua",
        [1202096104] = "https://raw.githubusercontent.com/xZcAtliftz/Seraphic-Scripts/main/Driving-Empire.lua",
        [4093155512] = "https://raw.githubusercontent.com/xZcAtliftz/Seraphic-Scripts/main/Sword-Burst3.lua",
        [4777817887] = "https://raw.githubusercontent.com/Losenry/REALXLOXERYY/main/Library/Luxury/Raphael/B14D3B411.lua", -- Blade Ball
        [6325068386] = "https://raw.githubusercontent.com/xZcAtliftz/Seraphic-Scripts/main/Blue-Lock.lua" -- Blue Lock Rivals
    }
}

local function loadGameScript(gameList)
    local scriptUrl = gameList[game.gameId]
    if scriptUrl then
        getgenv().AuthTime = tick()
        print(scriptUrl)
        loadstring(game:HttpGet(scriptUrl))()
    else
        game.Players.LocalPlayer:Kick("Game Not Support")
    end
end

if _G.KaitunMode then
    loadGameScript(gameLists.KaitunMode)
elseif _G.BountyMode then
    loadGameScript(gameLists.BountyMode)
elseif _G.Scripts_Language == "Thailand" then
    loadGameScript(gameLists.Thailand)
else
    loadGameScript(gameLists.Default)
end
