local GAME_SCRIPTS = {
    [{17574618959}] = "https://raw.githubusercontent.com/TheGreatOath/Worm/refs/heads/main/loader.lua",
}

if not GAME_SCRIPTS[game.placeId] then
    Players.LocalPlayer:Kick("Worm doesn't support this game | Join our discord for more information")
    return
end
