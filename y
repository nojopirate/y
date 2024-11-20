local soundToReplace = 15806232934
local newsoundID = 6282198271
newsoundID = "rbxassetid://6282198271"..newsoundID
soundToReplace = "rbxassetid://15806232934"..soundToReplace
print("replacing oldsound:", soundToReplace, "with newsound:", newsoundID)
function replaceSound(path)
for _, child in ipairs(path:GetDescendants()) do
if child:IsA("Sound") and child.SoundId == soundToReplace then
print("replaced sound", child.Name)
child.SoundId = newsoundID
end
end
replaceSound(workspace.Live.ChildAdded:Connect(function(plr))
replaceSound(game.ReplicatedStorage)
replaceSound(game.ServerStorage)
