repeat task.wait() until game:IsLoaded()
function betterisfile(path)
    local suc, res = pcall(function() readfile(path) end)
    return suc and res ~= nil
end
spawn(function()
    local queueteleport = syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport
    game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
        if State == Enum.TeleportState.Started then
            queueteleport('if betterisfile("CometEdited/Loader.lua") then loadstring(readfile("CometEdited/Loader.lua"))() else loadstring(game:HttpGet("https://raw.githubusercontent.com/ABizzarUser/CometEdited/main/Loader.lua"))()')
        end
    end)
end)
local placeid = game.PlaceId
if placeid == 6872274481 or placeid == 8560631822 or placeid == 8444591321 then
    if betterisfile("CometV2/Modules/Bedwars.lua") then
        loadstring(readfile("CometV2/Modules/Bedwars.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ABizzarUser/CometEdited/main/Modules/Bedwars.lua"))()
    end
elseif placeid == 6872265039 then
    if betterisfile("CometV2/Modules/6872265039.lua") then
        loadstring(readfile("CometV2/Modules/6872265039.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ABizzarUser/CometEdited/main/Modules/6872265039.lua"))()
    end
else
    if betterisfile("CometV2/Modules/CustomModulesTemplate.lua") then
        loadstring(readfile("CometV2/Modules/CustomModulesTemplate.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ABizzarUser/CometEdited/main/Modules/CustomModulesTemplate.lua"))()
    end
end
