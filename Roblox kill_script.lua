-- Simple Kill All GUI by Dhairya
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local KillAllBtn = Instance.new("TextButton")

-- Parent the GUI to your player
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "KillAllGUI"

-- Frame styling
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Position = UDim2.new(0.05, 0, 0.4, 0)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 2
Frame.Active = true
Frame.Draggable = true

-- Button styling
KillAllBtn.Parent = Frame
KillAllBtn.Size = UDim2.new(1, 0, 1, 0)
KillAllBtn.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
KillAllBtn.Text = "KILL ALL"
KillAllBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
KillAllBtn.Font = Enum.Font.SourceSansBold
KillAllBtn.TextSize = 24

-- Kill All function
KillAllBtn.MouseButton1Click:Connect(function()
    local lp = game.Players.LocalPlayer
    for _, plr in pairs(game.Players:GetPlayers()) do
        if plr ~= lp and plr.Character and plr.Character:FindFirstChild("Humanoid") then
            plr.Character.Humanoid.Health = 0
        end
    end
end)￼Enter
