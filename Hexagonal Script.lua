local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Hexagonal Team",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Hexagonal Team",
   LoadingSubtitle = "by night_night_luv91 on Discord, dm for support, ideas or other.",
   Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "hexagonal"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "SNxcuEPrV5", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Hexagonal Keysystem",
      Subtitle = "Key System",
      Note = "Join our discord and go to the 'keysystem-help' channel to get key.", -- Use this to tell the user how to get a key
      FileName = "hexagonalkey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/raw/eJAGuNgP"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }          
})
end

local MainTab = Window:CreateTab("🏡 Misc", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Hexagonal Team")

Rayfield:Notify({
   Title = "Welcome, user!",
   Content = "wsg",
   Duration = 3.5,
   Image = 4483362458,
    end
})

local Button = MainTab:CreateButton({
   Name = "Join Discord ",
   Callback = function()
-- Lua script to open a browser page
local function openBrowser()
    local url = "https://discord.gg/SNxcuEPrV5"

    -- Adjust for the operating system
    if os.getenv("OS") == "Windows_NT" then
        -- For Windows
        os.execute('start "" "' .. url .. '"')
    else
        -- For macOS or Linux
        os.execute('xdg-open "' .. url .. '" || open "' .. url .. '"')
    end
end
Rayfield:Notify({
   Title = "Sent Discord Link Successfully!",
   Content = "nil",
   Duration = 6.5,
   Image = 4483362458,
})
-- Call the function to open the browser
openBrowser()

   end,
})

local Tab = Window:CreateTab(" 🎉Fun Stuff 🎉", nil) -- Title, Image
local Section = Tab:CreateSection("Player")

local Slider = Tab:CreateSlider({
   Name = "Walkspeed Range",
   Range = {0, 300},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,

local Slider = Tab:CreateSlider({
   Name = "JumpPower Range",
   Range = {0, 300},
   Increment = 1,
   Suffix = "Jump",
   CurrentValue = 50,
   Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,

local Button = MainTab:CreateButton({
   Name = "Infinite Jump",
   Callback = function()
  local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
local InfiniteJump = CreateButton("Infinite Jump: On", StuffFrame)
InfiniteJump.Position = UDim2.new(0,10,0,130)
InfiniteJump.Size = UDim2.new(0,150,0,30)
InfiniteJump.MouseButton1Click:connect(function()
	local state = InfiniteJump.Text:sub(string.len("Infinite Jump: ") + 1) --too lazy to count lol
	local new = state == "Off" and "On" or state == "On" and "Off"
	InfiniteJumpEnabled = new == "On"
	InfiniteJump.Text = "Infinite Jump: " .. new
end)
   end,


  local Button = Tab:CreateButton({
   Name = "Button Example",
   Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
  Rayfield:Notify({
   Title = "Fly Script Executed Successfully!",
   Content = "nil",
   Duration = 6.5,
   Image = 4483362458,
})                          
   end,
                        
local Section = Tab:CreateSection("Other Players")

local Button = Tab:CreateButton({
   Name = "ESP All Players",
   Callback = function()
   local Players = game:GetService("Players")


local function highlightAllPlayers()
    for _, player in pairs(Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            local highlight = Instance.new("Highlight")
            highlight.Parent = player.Character
            highlight.Adornee = player.Character
            highlight.FillColor = Color3.fromRGB(255, 105, 180) -- Bright pink
            highlight.FillTransparency = 0.5
            highlight.OutlineTransparency = 0.5
        end
    end
end

-- Call the function to highlight all players when the button is clicked
highlightAllPlayers()
Rayfield:Notify({
   Title = "ESP Script Executed Successfully!",
   Content = "nil",
   Duration = 6.5,
   Image = 4483362458,
})                          
   end,
local Button = Tab:CreateButton({
   Name = "Aimbot",
   Callback = function()
   local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = game.Workspace.CurrentCamera

-- The function that takes place when the button is pressed
local function lockCameraToNearestPlayer()
    local nearestPlayer = nil
    local shortestDistance = math.huge -- Start with an infinitely large distance

    -- Loop through all players to find the nearest one
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
            local distance = (LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).magnitude
            if distance < shortestDistance then
                nearestPlayer = player
                shortestDistance = distance
            end
        end
    end

    -- If a nearest player was found, lock the camera to their head
    if nearestPlayer then
        Camera.CameraSubject = nearestPlayer.Character.Head
        Camera.CFrame = CFrame.new(Camera.CFrame.Position, nearestPlayer.Character.Head.Position)
    end
end

-- Call the function to lock camera to the nearest player when the button is clicked
lockCameraToNearestPlayer()

   end,
})
})

local Tab = Window:CreateTab(" 😂Trolling 😂", nil) -- Title, Image
local Section = Tab:CreateSection("Fun Stuff")

local Button = Tab:CreateButton({
   Name = "Fling Player",
   Callback = function()
   local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

-- Create the GUI
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 300, 0, 150)
Frame.Position = UDim2.new(0.5, -150, 0.5, -75)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Parent = ScreenGui

local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(1, 0, 0, 50)
TextLabel.Position = UDim2.new(0, 0, 0, 0)
TextLabel.Text = "Enter Player Name"
TextLabel.TextSize = 18
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.Parent = Frame

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(1, 0, 0, 30)
TextBox.Position = UDim2.new(0, 0, 0, 50)
TextBox.PlaceholderText = "Player Name"
TextBox.TextSize = 18
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.Parent = Frame

local SubmitButton = Instance.new("TextButton")
SubmitButton.Size = UDim2.new(0, 100, 0, 40)
SubmitButton.Position = UDim2.new(0.5, -50, 0, 100)
SubmitButton.Text = "Submit"
SubmitButton.TextSize = 18
SubmitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitButton.BackgroundColor3 = Color3.fromRGB(0, 123, 255)
SubmitButton.Parent = Frame

-- Function to fling the player
local function flingPlayer(player)
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
        bodyVelocity.Velocity = Vector3.new(0, 50, 0) * 100
        bodyVelocity.Parent = character.HumanoidRootPart
        wait(1)
        bodyVelocity:Destroy() -- Stop the fling after 1 second
    end
end

-- Function to handle the button click
SubmitButton.MouseButton1Click:Connect(function()
    local playerName = TextBox.Text
    local targetPlayer = Players:FindFirstChild(playerName)

    -- If player exists, fling them
    if targetPlayer then
        flingPlayer(targetPlayer)
    else
        print("Invalid player name.")
    end

    -- Remove the GUI after the button is clicked
    ScreenGui:Destroy()
end)

   end,
Rayfield:Notify({
   Title = "Enter Username",
   Content = "Please enter the name of that player to fling.",
   Duration = 6.5,
   Image = 4483362458,

local Button = Tab:CreateButton({
   Name = "Bring Player",
   Callback = function()
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

-- Create the GUI
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 300, 0, 150)
Frame.Position = UDim2.new(0.5, -150, 0.5, -75)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Parent = ScreenGui

local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(1, 0, 0, 50)
TextLabel.Position = UDim2.new(0, 0, 0, 0)
TextLabel.Text = "Enter Player Name"
TextLabel.TextSize = 18
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.Parent = Frame

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(1, 0, 0, 30)
TextBox.Position = UDim2.new(0, 0, 0, 50)
TextBox.PlaceholderText = "Player Name"
TextBox.TextSize = 18
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.Parent = Frame

local SubmitButton = Instance.new("TextButton")
SubmitButton.Size = UDim2.new(0, 100, 0, 40)
SubmitButton.Position = UDim2.new(0.5, -50, 0, 100)
SubmitButton.Text = "Submit"
SubmitButton.TextSize = 18
SubmitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitButton.BackgroundColor3 = Color3.fromRGB(0, 123, 255)
SubmitButton.Parent = Frame

-- Function to bring the player to the local player
local function bringPlayerToMe(player)
    local character = player.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        -- Set the target player's HumanoidRootPart position to the local player's position
        character:SetPrimaryPartCFrame(LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end

-- Function to handle the button click
SubmitButton.MouseButton1Click:Connect(function()
    local playerName = TextBox.Text
    local targetPlayer = Players:FindFirstChild(playerName)

    -- If player exists, bring them to the local player
    if targetPlayer then
        bringPlayerToMe(targetPlayer)
    else
        print("Invalid player name.")
    end

    -- Remove the GUI after the button is clicked
    ScreenGui:Destroy()
end)
Rayfield:Notify({
   Title = "Brought Player!",
   Content = "Player Brought Successfully!",
   Duration = 6.5,
   Image = 4483362458,
})
                                                    
})
})