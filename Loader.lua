    local gamelist = {
        [1511883870]  = "https://raw.githubusercontent.com/xZcAtliftz/Seraphic-Scripts/main/Shindo-Life"
    }
    local checkgame = gamelist[game.gameId]

    if gamelist[game.gameId] then
        getgenv().AuthTime = tick()
        print(checkgame)
        loadstring(game:HttpGet(checkgame))()
    else
        game.Players.LocalPlayer:Kick("Game Not Support")
    end
