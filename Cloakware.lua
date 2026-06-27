-- Create the ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LoginGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

-- Create the Frame
local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 246, 0, 134)
Frame.Active = true
Frame.Draggable = true -- Allows moving the GUI

-- UI Elements
local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0, 5)

local TextLabel = Instance.new("TextLabel", Frame)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.0325, 0, 0.097, 0)
TextLabel.Size = UDim2.new(0, 246, 0, 27)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = "Login"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 20
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

local TextBox = Instance.new("TextBox", Frame)
TextBox.BackgroundColor3 = Color3.fromRGB(235, 235, 235)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.065, 0, 0.552, 0)
TextBox.Size = UDim2.new(0, 214, 0, 16)
TextBox.Font = Enum.Font.Gotham
TextBox.PlaceholderText = "Login Key"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(33, 33, 33)
local UICorner_2 = Instance.new("UICorner", TextBox)

local TextButton = Instance.new("TextButton", Frame)
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1
TextButton.Position = UDim2.new(0.434, 0, 0.776, 0)
TextButton.Size = UDim2.new(0, 147, 0, 19)
TextButton.Font = Enum.Font.Gotham
TextButton.Text = "Enter"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)

-- Close Button
local CloseButton = Instance.new("TextButton", Frame)
CloseButton.Name = "CloseButton"
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
CloseButton.Size = UDim2.new(0, 25, 0, 25)
CloseButton.Position = UDim2.new(0.92, 0, -0.15, 0)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Font = Enum.Font.Bold
local UICorner_Close = Instance.new("UICorner", CloseButton)

-- Logic
CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

TextButton.MouseButton1Click:Connect(function()
    local ValidKey = "HAVEN"
    
    if TextBox.Text == ValidKey then
        Frame.Visible = false
        
        -- Executing your script
        getgenv().SCRIPT_KEY = "keyless"
        loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/5578a703861d2dbde370120f1080e871b14e8ac38daacf6e3bc39348d46bbe28/download"))()
    else
        TextBox.Text = ""
        TextBox.PlaceholderText = "Invalid Key"
    end
end)
