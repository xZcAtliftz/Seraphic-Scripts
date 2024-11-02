if _G.KaitunMode then
    local gamelist = {
        [994732206] = "https://raw.githubusercontent.com/xZcAtliftz/Seraphic-Scripts/main/Kaitun.lua"
    }
    local checkgame = gamelist[game.gameId]

    if gamelist[game.gameId] then
        getgenv().AuthTime = tick()
        print(checkgame)
        loadstring(game:HttpGet(checkgame))()
    else
        game.Players.LocalPlayer:Kick("Game Not Support")
    end
elseif _G.BountyMode then
    local gamelist = {
        [994732206] = "https://raw.githubusercontent.com/xZcAtliftz/Seraphic-Scripts/main/Bounty.lua"
    }
    local checkgame = gamelist[game.gameId]

    if gamelist[game.gameId] then
        getgenv().AuthTime = tick()
        print(checkgame)
        loadstring(game:HttpGet(checkgame))()
    else
        game.Players.LocalPlayer:Kick("Game Not Support")
    end
else
    local gamelist = {
        [1511883870]  = "https://raw.githubusercontent.com/xZcAtliftz/Seraphic-Scripts/main/Shindo-Life",
        [5750914919] = "https://raw.githubusercontent.com/xZcAtliftz/Seraphic-Scripts/main/Fisch.lua",
        [994732206] = "https://raw.githubusercontent.com/xZcAtliftz/Seraphic-Scripts/main/Blox-Fruits.lua",
        [1202096104] = "https://raw.githubusercontent.com/xZcAtliftz/Seraphic-Scripts/main/Driving-Empire.lua",
        [4093155512] = "https://raw.githubusercontent.com/xZcAtliftz/Seraphic-Scripts/main/Sword-Burst3.lua"
    }
    local checkgame = gamelist[game.gameId]

    if gamelist[game.gameId] then
        getgenv().AuthTime = tick()
        print(checkgame)
        loadstring(game:HttpGet(checkgame))()
    else
        game.Players.LocalPlayer:Kick("Game Not Support")
    end
end
