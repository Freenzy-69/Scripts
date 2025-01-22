--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local NOGUI	= false
local Message = false
local IntroMessage = false -- this help to not let you get exposed online

--// main script //--

local CoverTool = Instance.new("Tool")
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local ImgUrl = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. player.UserId .. "&width=100&height=100&format=png"
local humanoid = char:WaitForChild("Humanoid")
local PreSpeed 
local CoverAnim = Instance.new("Animation")

local UsingExec

if identifyexecutor then
	UsingExec = tostring(identifyexecutor())
elseif getexecutor then
    UsingExec = tostring(getexecutor())
else
    UsingExec = "getexecutor/identifyexecutor Function Faliure."
end

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Cover Eyes Tool By RumNewbie0", 
    Text = "Executor : " .. UsingExec, 
    Icon = ImgUrl,
    Duration = 5, 
    Button1 = "Ok",
    Button2 = "I Dont Fucking Care" 
})


--// Main Script //--

local function chat(message)
    local chatService = game:GetService("TextChatService")
    local defaultChat = game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents")

    if Message then
        if chatService:FindFirstChild("TextChannels") then
            chatService.TextChannels.RBXGeneral:SendAsync(message)
        else
            defaultChat.SayMessageRequest:FireServer(message, "All")
        end
    end
end

local function chat2(message)
    local chatService = game:GetService("TextChatService")
    local defaultChat = game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents")

    if IntroMessage then
        if chatService:FindFirstChild("TextChannels") then
            chatService.TextChannels.RBXGeneral:SendAsync(message)
        else
            defaultChat.SayMessageRequest:FireServer(message, "All")
        end
    end
end

chat2("Cover Eyes Script By RumNewbie0 For Sure")

CoverAnim.AnimationId = "rbxassetid://183696478"
CoverAnim.Parent = char --i put this so the instance doesnt feel sad and lonely :)
local CoverAnimTrack = humanoid:LoadAnimation(CoverAnim)
local BlackGui = Instance.new("ScreenGui")
BlackGui.IgnoreGuiInset = true
BlackGui.Enabled = false
BlackGui.Parent = player.PlayerGui
BlackGui.Name = "CoverEyesGUI"
local BlackFrame = Instance.new("Frame")
BlackFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BlackFrame.Parent = BlackGui
BlackFrame.Size = UDim2.new(1, 0, 1,0)
BlackFrame.ZIndex = 9999
if NOGUI then
	BlackFrame.BackgroundTransparency = 1
end
PreSpeed = humanoid.WalkSpeed

CoverTool.Parent = player.Backpack
CoverTool.Name = "Cover Eyes"
CoverTool.RequiresHandle = false

CoverTool.Equipped:Connect(function()
   chat("i cant see nothing because im covering my eyes on purpose")
   BlackGui.Enabled = true
   CoverAnimTrack:Play()
   humanoid.WalkSpeed = 1.3
end)

CoverTool.Unequipped:Connect(function()
   chat("i can see everything because i put my arms away from my eyes on purpose")
   BlackGui.Enabled = false
   CoverAnimTrack:Stop()
   humanoid.WalkSpeed = PreSpeed
end)
