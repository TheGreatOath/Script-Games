pcall(function()
    local inviter = loadstring(game:HttpGet("https://raw.githubusercontent.com/TheGreatOath/Utilities/refs/heads/main/Inviter.lua"))()
    inviter.Join("https://discord.gg/97aFp97Hfr")
end)

local games = {
    [{17574618959}] = "https://raw.githubusercontent.com/TheGreatOath/Script-Games/refs/heads/main/Type%20Soul/Script.lua",
}

for ids, url in next, games do
    if table.find(ids, game.PlaceId) then
        loadstring(game:HttpGet(url))()
        break
    end
end
