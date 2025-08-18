-- I am desperate
pcall(function()
    local inviter = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Discord%20Inviter/Source.lua"))()
    inviter.Join("https://discord.gg/97aFp97Hfr")
end)

local games = {
    [{17574618959}] = "https://raw.githubusercontent.com/TheGreatOath/Worm/refs/heads/main/loader.lua",
}

for ids, url in next, games do
    if table.find(ids, game.PlaceId) then
        loadstring(game:HttpGet(url))()
        break
    end
end
