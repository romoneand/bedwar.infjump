local vu = game:GetService("VirtualUser")

game:GetService("Players").LocalPlayer.Idled:connect(function()

    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

    wait(1)

    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

end)

 

game.StarterGui:SetCore("SendNotification", {

    Title = "Bedwars OP Script";

    Text = "Made by romlnwza007#3770"; -- what the text says (ofc)

    Duration = 60;

})

wait(1)

game.StarterGui:SetCore("SendNotification", {

    Title = "Enjoy";

    Text = "make by romlnwza007#3770"; -- what the text says (ofc)

    Duration = 60;

})

 

-- Gui to Lua

-- Version: 3.

-- Instances:

 

local ScreenGui = Instance.new("ScreenGui")

local Main = Instance.new("Frame")

local TextLabel = Instance.new("TextLabel")

local TextButton = Instance.new("TextButton")

 

--Properties:

 

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

 

Main.Name = "Main"

Main.Parent = ScreenGui

Main.BackgroundColor3 = Color3.fromRGB(39, 15, 245)

Main.Position = UDim2.new(0.363293529, 0, 0.28638497, 0)

Main.Size = UDim2.new(0, 300, 0, 154)

Main.Style = Enum.FrameStyle.ChatRed

 

TextLabel.Parent = Main

TextLabel.BackgroundColor3 = Color3.fromRGB(17, 1, 1)

TextLabel.BackgroundTransparency = 1.000

TextLabel.Position = UDim2.new(-0.025588274, 0, -0.0890700519, 0)

TextLabel.Size = UDim2.new(0, 250, 0, 30)

TextLabel.Font = Enum.Font.SciFi

TextLabel.Text = "Romlnwza007 Gaming speed"

TextLabel.TextColor3 = Color3.fromRGB(245, 16, 16)

TextLabel.TextScaled = true

TextLabel.TextSize = 12.000

TextLabel.TextWrapped = true

 

TextButton.Parent = Main

TextButton.BackgroundColor3 = Color3.fromRGB(17, 1, 1)

TextButton.Position = UDim2.new(0.136470661, 0, 0.458670378, 0)

TextButton.Size = UDim2.new(0, 200, 0, 58)

TextButton.Style = Enum.ButtonStyle.RobloxRoundDefaultButton

TextButton.Font = Enum.Font.SciFi

TextButton.Text = "Click To Activate!"

TextButton.TextColor3 = Color3.fromRGB(21, 235, 78)

TextButton.TextScaled = true

TextButton.TextSize = 14.000

TextButton.TextWrapped = true

TextButton.MouseButton1Down:connect(function()

 while true do wait() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 23 end

Walkspeed()

end)

-- Scripts:

 

local function LASGYB_fake_script() -- ScreenGui.Script 

	local script = Instance.new('Script', ScreenGui) 

	frame = script.Parent.Main -- Take out {}s, and put name of frame

	frame.Draggable = true

	frame.Active = true

	frame.Selectable = true

end

coroutine.wrap(LASGYB_fake_script)()

 

local InfiniteJumpEnabled = true

game:GetService("UserInputService").JumpRequest:connect(function()

	if InfiniteJumpEnabled then

		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")

	end

end)
