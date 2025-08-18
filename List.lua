local games = {
    [{17574618959}] = "https://raw.githubusercontent.com/TheGreatOath/Worm/refs/heads/main/loader.lua",
}

for ids, url in next, games do
    if table.find(ids, game.PlaceId) then
        loadstring(game:HttpGet(url))()
        break
    end
end
