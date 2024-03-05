getgenv().Weapon = string.lower(getgenv().Weapon);
local SwordTable = {
    ["single"] = "rbxassetid://13772445960";
    ["dual"] = "rbxassetid://16222455283";
    ["whip"] = "rbxassetid://16218869460";
    ["bow"] = "rbxassetid://16135743249";
    ["scissors"] = "rbxassetid://16492133628";
}

local Parry = Instance.new("Animation")
Parry.AnimationId = SwordTable[getgenv().Weapon] -- Roblox dance emote

local Players = game:GetService("Players")
local lp = Players.LocalPlayer

while getgenv().Toggle and task.wait(1) do
    if workspace.Alive:FindFirstChild(lp.Name) and lp.Character:FindFirstChild("Humanoid")and lp.Character.Humanoid.Health > 0 then 
        local hum = lp.Character:FindFirstChild("Humanoid")
        local ParryTrack = hum:LoadAnimation(Parry)
        ParryTrack:Play()
    end;
end;

print("Made by localisback")
