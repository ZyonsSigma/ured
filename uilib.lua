--You can leak this shit ui lib I dont care--
local runService = game:GetService("RunService")
local players = game:GetService("Players")
local localPlayer = players.LocalPlayer
local userInputService = game:GetService("UserInputService")
local tweenService = game:GetService("TweenService")

local library = {}

local tree = {}

local tabs = {}

tree["1"] = Instance.new("ScreenGui", runService:IsStudio() and localPlayer:FindFirstChildOfClass("PlayerGui") or game:GetService("CoreGui"));
tree["1"]["IgnoreGuiInset"] = true;
tree["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
tree["1"]["Name"] = "Beanz Hub Is Gay!";

local function make_drag(uiz)
	local UIS = userInputService
	local frame = uiz
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end

function library:Toggle(gui)
	for _, frame in pairs(tree["5"]:GetChildren()) do
		if frame:IsA("Frame") then
			frame.Visible = false
		end
	end
	
	gui.Visible = true
end

function library:AddTab(Name)
	tabs[Name] = {}
	
	tabs[Name].stuff = {}
	
	tabs[Name]["Button"] = Instance.new("TextButton", tree["46"]);
	tabs[Name]["Button"]["TextWrapped"] = true;
	tabs[Name]["Button"]["TextStrokeTransparency"] = 0;
	tabs[Name]["Button"]["TextSize"] = 14;
	tabs[Name]["Button"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	tabs[Name]["Button"]["TextScaled"] = true;
	tabs[Name]["Button"]["BackgroundColor3"] = Color3.fromRGB(191, 191, 191);
	tabs[Name]["Button"]["FontFace"] = Font.new([[rbxasset://fonts/families/PermanentMarker.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	tabs[Name]["Button"]["Size"] = UDim2.new(1, 0, 0.115, 0);
	tabs[Name]["Button"]["Name"] = [[CodesButton]];
	tabs[Name]["Button"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
	tabs[Name]["Button"]["Text"] = [[]];
	tabs[Name]["Button"]["Position"] = UDim2.new(0.01328, 0, 0.53792, 0);
	
	-- StarterGui.Zyons.Fluxion.MainFrame.Frame.CodesButton.UIGradient
	tabs[Name]["48"] = Instance.new("UIGradient", tabs[Name]["Button"]);
	tabs[Name]["48"]["Rotation"] = 90;
	tabs[Name]["48"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.694, Color3.fromRGB(254, 254, 254)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(158, 158, 158))};


	-- StarterGui.Zyons.Fluxion.MainFrame.Frame.CodesButton.UICorner
	tabs[Name]["49"] = Instance.new("UICorner",tabs[Name]["Button"]);
	tabs[Name]["49"]["CornerRadius"] = UDim.new(0, 4);


	-- StarterGui.Zyons.Fluxion.MainFrame.Frame.CodesButton.Label
	tabs[Name]["4a"] = Instance.new("TextLabel", tabs[Name]["Button"]);
	tabs[Name]["4a"]["TextWrapped"] = true;
	tabs[Name]["4a"]["TextStrokeTransparency"] = 0;
	tabs[Name]["4a"]["ZIndex"] = 5;
	tabs[Name]["4a"]["TextScaled"] = true;
	tabs[Name]["4a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
	tabs[Name]["4a"]["TextSize"] = 14;
	tabs[Name]["4a"]["FontFace"] = Font.new([[rbxasset://fonts/families/PermanentMarker.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	tabs[Name]["4a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	tabs[Name]["4a"]["BackgroundTransparency"] = 1;
	tabs[Name]["4a"]["RichText"] = true;
	tabs[Name]["4a"]["Size"] = UDim2.new(0.92874, 0, 0.85673, 0);
	tabs[Name]["4a"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
	tabs[Name]["4a"]["Text"] = Name;
	tabs[Name]["4a"]["Name"] = [[Label]];
	tabs[Name]["4a"]["Position"] = UDim2.new(0.03335, 0, 0.06379, 0);
	
	tabs[Name]["Holder"] = Instance.new("Frame", tree["5"]);
	tabs[Name]["Holder"]["ZIndex"] = 2;
	tabs[Name]["Holder"]["Visible"] = false;
	tabs[Name]["Holder"]["BorderSizePixel"] = 0;
	tabs[Name]["Holder"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	tabs[Name]["Holder"]["Size"] = UDim2.new(1, 0, 1, 0);
	tabs[Name]["Holder"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	tabs[Name]["Holder"]["Name"] = Name;
	tabs[Name]["Holder"]["BackgroundTransparency"] = 1;
	
	tabs[Name]["ScrollingFrame"] = Instance.new("ScrollingFrame", tabs[Name]["Holder"]);
	tabs[Name]["ScrollingFrame"]["Active"] = true;
	tabs[Name]["ScrollingFrame"]["BorderSizePixel"] = 0;
	tabs[Name]["ScrollingFrame"]["CanvasSize"] = UDim2.new(0, 0, 3, 0);
	tabs[Name]["ScrollingFrame"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	tabs[Name]["ScrollingFrame"]["Size"] = UDim2.new(1, 0, 0.80593, 0);
	tabs[Name]["ScrollingFrame"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
	tabs[Name]["ScrollingFrame"]["Position"] = UDim2.new(0, 0, 0.19407, 0);
	tabs[Name]["ScrollingFrame"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	tabs[Name]["ScrollingFrame"]["ScrollBarThickness"] = 0;
	tabs[Name]["ScrollingFrame"]["BackgroundTransparency"] = 1;
	
	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.UIListLayout
	tabs[Name]["9"] = Instance.new("UIListLayout", tabs[Name]["ScrollingFrame"]);
	tabs[Name]["9"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
	tabs[Name]["9"]["Padding"] = UDim.new(0.01, 0);
	tabs[Name]["9"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
	
	tabs[Name]["3e"] = Instance.new("ImageLabel", tabs[Name]["Holder"]);
	tabs[Name]["3e"]["ZIndex"] = 2;
	tabs[Name]["3e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	tabs[Name]["3e"]["ImageTransparency"] = 0.1;
	tabs[Name]["3e"]["Image"] = [[rbxassetid://11638911086]];
	tabs[Name]["3e"]["Size"] = UDim2.new(0.57889, 0, 0.20952, 0);
	tabs[Name]["3e"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
	tabs[Name]["3e"]["BackgroundTransparency"] = 1;
	tabs[Name]["3e"]["Name"] = [[BlackBackground]];
	tabs[Name]["3e"]["Position"] = UDim2.new(0.21047, 0, -0.01545, 0);
	
	tabs[Name]["3f"] = Instance.new("TextLabel", tabs[Name]["Holder"]);
	tabs[Name]["3f"]["TextWrapped"] = true;
	tabs[Name]["3f"]["TextStrokeTransparency"] = 0;
	tabs[Name]["3f"]["ZIndex"] = 5;
	tabs[Name]["3f"]["BorderSizePixel"] = 2;
	tabs[Name]["3f"]["TextScaled"] = true;
	tabs[Name]["3f"]["BackgroundColor3"] = Color3.fromRGB(12, 12, 12);
	tabs[Name]["3f"]["TextSize"] = 14;
	tabs[Name]["3f"]["FontFace"] = Font.new([[rbxasset://fonts/families/PermanentMarker.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	tabs[Name]["3f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	tabs[Name]["3f"]["BackgroundTransparency"] = 1;
	tabs[Name]["3f"]["RichText"] = true;
	tabs[Name]["3f"]["Size"] = UDim2.new(0.48659, 0, 0.13481, 0);
	tabs[Name]["3f"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
	tabs[Name]["3f"]["Text"] = Name;
	tabs[Name]["3f"]["Name"] = [[Label]];
	tabs[Name]["3f"]["Position"] = UDim2.new(0.25909, 0, 0.02235, 0);
	
	tabs[Name]["Button"].MouseButton1Down:Connect(function()
		--Toggle Tab--
		library:Toggle(tabs[Name]["Holder"])
	end)
	
	return tabs[Name]
end

function library:AddSectionLBL(tab,text)
	tab.stuff[text] = {}
	tab.stuff[text]["31"] = Instance.new("Frame", tab["ScrollingFrame"]);
	tab.stuff[text]["31"]["BorderSizePixel"] = 0;
	tab.stuff[text]["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["31"]["Size"] = UDim2.new(0.579, 0, 0.05, 0);
	tab.stuff[text]["31"]["Position"] = UDim2.new(0.2105, 0, 0.37033, 0);
	tab.stuff[text]["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["31"]["Name"] = [[TITLE]];
	tab.stuff[text]["31"]["BackgroundTransparency"] = 1;

	tab.stuff[text]["32"] = Instance.new("ImageLabel", tab.stuff[text]["31"]);
	tab.stuff[text]["32"]["ZIndex"] = 2;
	tab.stuff[text]["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["32"]["ImageTransparency"] = 0.1;
	tab.stuff[text]["32"]["Image"] = [[rbxassetid://11638911086]];
	tab.stuff[text]["32"]["Size"] = UDim2.new(1, 0, 1, 0);
	tab.stuff[text]["32"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
	tab.stuff[text]["32"]["BackgroundTransparency"] = 1;
	tab.stuff[text]["32"]["Name"] = [[BlackBackground]];

	tab.stuff[text]["33"] = Instance.new("TextLabel", tab.stuff[text]["31"]);
	tab.stuff[text]["33"]["TextWrapped"] = true;
	tab.stuff[text]["33"]["TextStrokeTransparency"] = 0;
	tab.stuff[text]["33"]["ZIndex"] = 5;
	tab.stuff[text]["33"]["BorderSizePixel"] = 2;
	tab.stuff[text]["33"]["TextScaled"] = true;
	tab.stuff[text]["33"]["BackgroundColor3"] = Color3.fromRGB(12, 12, 12);
	tab.stuff[text]["33"]["TextSize"] = 14;
	tab.stuff[text]["33"]["FontFace"] = Font.new([[rbxasset://fonts/families/PermanentMarker.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	tab.stuff[text]["33"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["33"]["BackgroundTransparency"] = 1;
	tab.stuff[text]["33"]["RichText"] = true;
	tab.stuff[text]["33"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	tab.stuff[text]["33"]["Size"] = UDim2.new(0.75, 0, 0.75, 0);
	tab.stuff[text]["33"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
	tab.stuff[text]["33"]["Text"] = text;
	tab.stuff[text]["33"]["Name"] = text;
	tab.stuff[text]["33"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
end

function library:AddSectionSlider(tab, text, min, max, callback)
	tab.stuff[text] = {}
	tab.stuff[text]["37"] = Instance.new("LocalScript", tab.stuff[text]["36"]);
	tab.stuff[text]["34"] = Instance.new("Frame", tab["ScrollingFrame"]);
	tab.stuff[text]["34"]["BorderSizePixel"] = 0;
	tab.stuff[text]["34"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["34"]["Size"] = UDim2.new(0.515, 0, 0.04, 0);
	tab.stuff[text]["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["34"]["Name"] = text;
	tab.stuff[text]["34"]["BackgroundTransparency"] = 0.35;

	tab.stuff[text]["35"] = Instance.new("UICorner", tab.stuff[text]["34"]);
	tab.stuff[text]["35"]["CornerRadius"] = UDim.new(0, 4);

	tab.stuff[text]["36"] = Instance.new("Frame", tab.stuff[text]["34"]);
	tab.stuff[text]["36"]["BorderSizePixel"] = 0;
	tab.stuff[text]["36"]["BackgroundColor3"] = Color3.fromRGB(174, 174, 174);
	tab.stuff[text]["36"]["AnchorPoint"] = Vector2.new(0, 0.5);
	tab.stuff[text]["36"]["Size"] = UDim2.new(0.75, 0, 0.156, 0);
	tab.stuff[text]["36"]["Position"] = UDim2.new(0.03, 0, 0.5, 0);
	tab.stuff[text]["36"]["Name"] = [[X-Line]];

	tab.stuff[text]["38"] = Instance.new("UICorner", tab.stuff[text]["36"]);
	tab.stuff[text]["38"]["CornerRadius"] = UDim.new(0.3, 0);

	tab.stuff[text]["39"] = Instance.new("TextButton", tab.stuff[text]["36"]);
	tab.stuff[text]["39"]["BorderSizePixel"] = 0;
	tab.stuff[text]["39"]["TextSize"] = 14;
	tab.stuff[text]["39"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["39"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	tab.stuff[text]["39"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	tab.stuff[text]["39"]["Size"] = UDim2.new(0.03958, 0, 5.48377, 0);
	tab.stuff[text]["39"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
	tab.stuff[text]["39"]["Text"] = [[]];
	tab.stuff[text]["39"]["Position"] = UDim2.new(0, 0, 0.5, 0);

	tab.stuff[text]["3a"] = Instance.new("UICorner", tab.stuff[text]["39"]);
	tab.stuff[text]["3a"]["CornerRadius"] = UDim.new(1, 0);

	tab.stuff[text]["3b"] = Instance.new("UIAspectRatioConstraint", tab.stuff[text]["39"]);
	tab.stuff[text]["3b"]["AspectRatio"] = 0.18667;

	tab.stuff[text]["3c"] = Instance.new("IntValue", tab.stuff[text]["36"]);
	tab.stuff[text]["3c"]["Name"] = [[Percentage]];

	tab.stuff[text]["3d"] = Instance.new("TextLabel", tab.stuff[text]["34"]);
	tab.stuff[text]["3d"]["TextWrapped"] = true;
	tab.stuff[text]["3d"]["BorderSizePixel"] = 0;
	tab.stuff[text]["3d"]["TextScaled"] = true;
	tab.stuff[text]["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["3d"]["TextSize"] = 14;
	tab.stuff[text]["3d"]["FontFace"] = Font.new([[rbxasset://fonts/families/PermanentMarker.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	tab.stuff[text]["3d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["3d"]["BackgroundTransparency"] = 1;
	tab.stuff[text]["3d"]["Size"] = UDim2.new(0.16854, 0, 0.578, 0);
	tab.stuff[text]["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["3d"]["Text"] = tostring(min);
	tab.stuff[text]["3d"]["Position"] = UDim2.new(0.81379, 0, 0.22576, 0);

	local Dragging = false

	tab.stuff[text]["39"].MouseButton1Down:Connect(function()
		Dragging = true
	end)

	local function ChangeToValue(Percent)
		-- Debug print statements

		-- Ensure `Percent` is a number
		Percent = tonumber(Percent)

		-- Perform the arithmetic operation
		local Value = math.floor(min + (Percent * (max - min)))
		return Value
	end

	userInputService.InputChanged:Connect(function()
		if Dragging then
			local MousePos = userInputService:GetMouseLocation()+Vector2.new(0,-36)
			local RelPos = MousePos-tab.stuff[text]["36"].AbsolutePosition
			local Percent = math.clamp(RelPos.X/tab.stuff[text]["36"].AbsoluteSize.X,0,1)

			tab.stuff[text]["39"].Position = UDim2.new(Percent,0,tab.stuff[text]["39"].Position.Y.Scale,0)
			local FinalValue = ChangeToValue(Percent)

			tab.stuff[text]["3c"].Value = FinalValue
			tab.stuff[text]["3d"].Text = tostring(FinalValue)
			callback(FinalValue)
		end
	end)

	userInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			Dragging = false
		end
	end)
end

function library:AddSectionToggle(tab, text, callback)
	tab.stuff[text] = {}
	tab.stuff[text]["1c"] = Instance.new("Frame", tab["ScrollingFrame"]);
	tab.stuff[text]["1c"]["BorderSizePixel"] = 0;
	tab.stuff[text]["1c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["1c"]["Size"] = UDim2.new(0.515, 0, 0.04, 0);
	tab.stuff[text]["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["1c"]["Name"] = text;
	tab.stuff[text]["1c"]["BackgroundTransparency"] = 0.35;


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Toggle.UICorner
	tab.stuff[text]["1d"] = Instance.new("UICorner", tab.stuff[text]["1c"]);
	tab.stuff[text]["1d"]["CornerRadius"] = UDim.new(0, 4);


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Toggle.CrossButton
	tab.stuff[text]["1e"] = Instance.new("TextButton", tab.stuff[text]["1c"]);
	tab.stuff[text]["1e"]["TextWrapped"] = true;
	tab.stuff[text]["1e"]["TextStrokeTransparency"] = 0.7;
	tab.stuff[text]["1e"]["BorderSizePixel"] = 0;
	tab.stuff[text]["1e"]["TextSize"] = 14;
	tab.stuff[text]["1e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["1e"]["TextScaled"] = true;
	tab.stuff[text]["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
	tab.stuff[text]["1e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	tab.stuff[text]["1e"]["ZIndex"] = 4;
	tab.stuff[text]["1e"]["Size"] = UDim2.new(0.33745, 0, 0.84308, 0);
	tab.stuff[text]["1e"]["BackgroundTransparency"] = 1;
	tab.stuff[text]["1e"]["Name"] = [[CrossButton]];
	tab.stuff[text]["1e"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["1e"]["Text"] = [[]];
	tab.stuff[text]["1e"]["Position"] = UDim2.new(0.635, 0, 0.157, 0);


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Toggle.CrossButton.UICorner
	tab.stuff[text]["1f"] = Instance.new("UICorner", tab.stuff[text]["1e"]);
	tab.stuff[text]["1f"]["CornerRadius"] = UDim.new(0, 5);


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Toggle.CrossButton.Knotch
	tab.stuff[text]["20"] = Instance.new("Frame", tab.stuff[text]["1e"]);
	tab.stuff[text]["20"]["ZIndex"] = 4;
	tab.stuff[text]["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["20"]["AnchorPoint"] = Vector2.new(0, 0.5);
	tab.stuff[text]["20"]["Size"] = UDim2.new(1.02931, 0, 0.93118, 0);
	tab.stuff[text]["20"]["Position"] = UDim2.new(0, 0, 0.4, 0);
	tab.stuff[text]["20"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
	tab.stuff[text]["20"]["Name"] = [[Knotch]];


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Toggle.CrossButton.Knotch.UICorner
	tab.stuff[text]["21"] = Instance.new("UICorner", tab.stuff[text]["20"]);
	tab.stuff[text]["21"]["CornerRadius"] = UDim.new(0, 14);


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Toggle.CrossButton.Knotch.BackColor
	tab.stuff[text]["22"] = Instance.new("Frame", tab.stuff[text]["20"]);
	tab.stuff[text]["22"]["ZIndex"] = 4;
	tab.stuff[text]["22"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
	tab.stuff[text]["22"]["Size"] = UDim2.new(0.94055, 0, 0.87403, 0);
	tab.stuff[text]["22"]["Position"] = UDim2.new(0.02691, 0, 0.0593, 0);
	tab.stuff[text]["22"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
	tab.stuff[text]["22"]["Name"] = [[BackColor]];


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Toggle.CrossButton.Knotch.BackColor.UICorner
	tab.stuff[text]["23"] = Instance.new("UICorner", tab.stuff[text]["22"]);
	tab.stuff[text]["23"]["CornerRadius"] = UDim.new(0, 14);


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Toggle.CrossButton.Knotch.BackColor.UIGradient
	tab.stuff[text]["24"] = Instance.new("UIGradient", tab.stuff[text]["22"]);
	tab.stuff[text]["24"]["Rotation"] = 90;
	tab.stuff[text]["24"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(195, 195, 195))};


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Toggle.CrossButton.Knotch.Knob
	tab.stuff[text]["25"] = Instance.new("Frame", tab.stuff[text]["20"]);
	tab.stuff[text]["25"]["ZIndex"] = 4;
	tab.stuff[text]["25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["25"]["Size"] = UDim2.new(0.25584, 0, 0.61355, 0);
	tab.stuff[text]["25"]["Position"] = UDim2.new(0.09, 0, 0.189, 0);
	tab.stuff[text]["25"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
	tab.stuff[text]["25"]["Name"] = [[Knob]];


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Toggle.CrossButton.Knotch.Knob.UICorner
	tab.stuff[text]["26"] = Instance.new("UICorner", tab.stuff[text]["25"]);
	tab.stuff[text]["26"]["CornerRadius"] = UDim.new(0, 40);


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Toggle.CrossButton.Knotch.KnobOffPos
	tab.stuff[text]["27"] = Instance.new("Frame", tab.stuff[text]["20"]);
	tab.stuff[text]["27"]["Visible"] = false;
	tab.stuff[text]["27"]["ZIndex"] = 4;
	tab.stuff[text]["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["27"]["Size"] = UDim2.new(0.25831, 0, 0.6, 0);
	tab.stuff[text]["27"]["Position"] = UDim2.new(0.09048, 0, 0.18878, 0);
	tab.stuff[text]["27"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
	tab.stuff[text]["27"]["Name"] = [[KnobOffPos]];
	tab.stuff[text]["27"]["BackgroundTransparency"] = 1;


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Toggle.CrossButton.Knotch.KnobOnPos
	tab.stuff[text]["28"] = Instance.new("Frame", tab.stuff[text]["20"]);
	tab.stuff[text]["28"]["Visible"] = false;
	tab.stuff[text]["28"]["ZIndex"] = 4;
	tab.stuff[text]["28"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["28"]["Size"] = UDim2.new(0.25831, 0, 0.6, 0);
	tab.stuff[text]["28"]["Position"] = UDim2.new(0.63633, 0, 0.18878, 0);
	tab.stuff[text]["28"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
	tab.stuff[text]["28"]["Name"] = [[KnobOnPos]];
	tab.stuff[text]["28"]["BackgroundTransparency"] = 1;


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Toggle.CrossButton.LocalScript
	tab.stuff[text]["29"] = Instance.new("LocalScript", tab.stuff[text]["1e"]);



	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Toggle.TextLabel
	tab.stuff[text]["2a"] = Instance.new("TextLabel", tab.stuff[text]["1c"]);
	tab.stuff[text]["2a"]["TextWrapped"] = true;
	tab.stuff[text]["2a"]["TextStrokeTransparency"] = 0;
	tab.stuff[text]["2a"]["BorderSizePixel"] = 0;
	tab.stuff[text]["2a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	tab.stuff[text]["2a"]["TextScaled"] = true;
	tab.stuff[text]["2a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["2a"]["TextSize"] = 14;
	tab.stuff[text]["2a"]["FontFace"] = Font.new([[rbxasset://fonts/families/PermanentMarker.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	tab.stuff[text]["2a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["2a"]["BackgroundTransparency"] = 1;
	tab.stuff[text]["2a"]["AnchorPoint"] = Vector2.new(0, 0.5);
	tab.stuff[text]["2a"]["Size"] = UDim2.new(0.57167, 0, 0.74992, 0);
	tab.stuff[text]["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["2a"]["Text"] = text;
	tab.stuff[text]["2a"]["Position"] = UDim2.new(0.025, 0, 0.5, 0);
	
	local TInfo = TweenInfo.new(0.1, Enum.EasingStyle.Bounce, Enum.EasingDirection.In)
	local Toggle = false

	tab.stuff[text]["1e"].MouseButton1Down:Connect(function()
		local Toggle = not Toggle

		if Toggle == true then
			tweenService:Create(tab.stuff[text]["20"].Knob, TInfo, {Position = tab.stuff[text]["20"].KnobOnPos.Position}):Play()
			tab.stuff[text]["20"].BackColor.BackgroundColor3 = Color3.fromRGB(0,255,0)
		else
			tweenService:Create(tab.stuff[text]["20"].Knob, TInfo, {Position = tab.stuff[text]["20"].KnobOffPos.Position}):Play()

			tab.stuff[text]["20"].BackColor.BackgroundColor3 = Color3.fromRGB(255,0,0)
		end
		
		callback(Toggle)
	end)
end

function library:AddSectionButton(tab, text, callback)
	tab.stuff[text] = {}
	tab.stuff[text]["1a"] = Instance.new("TextButton", tab["ScrollingFrame"]);
	tab.stuff[text]["1a"]["TextWrapped"] = true;
	tab.stuff[text]["1a"]["TextStrokeTransparency"] = 0;
	tab.stuff[text]["1a"]["AutoButtonColor"] = false;
	tab.stuff[text]["1a"]["TextSize"] = 14;
	tab.stuff[text]["1a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["1a"]["TextScaled"] = true;
	tab.stuff[text]["1a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/PermanentMarker.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	tab.stuff[text]["1a"]["Selectable"] = false;
	tab.stuff[text]["1a"]["ZIndex"] = 2;
	tab.stuff[text]["1a"]["Size"] = UDim2.new(0.515, 0, 0.04, 0);
	tab.stuff[text]["1a"]["BackgroundTransparency"] = 0.35;
	tab.stuff[text]["1a"]["Name"] = [[Btn]];
	tab.stuff[text]["1a"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
	tab.stuff[text]["1a"]["Text"] = text;
	tab.stuff[text]["1a"]["Position"] = UDim2.new(0.24261, 0, 0.5449, 0);


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Btn.UICorner
	tab.stuff[text]["1b"] = Instance.new("UICorner", tab.stuff[text]["1a"]);
	tab.stuff[text]["1b"]["CornerRadius"] = UDim.new(0, 4);
	
	tab.stuff[text]["1a"].MouseButton1Down:Connect(callback)
end

function library:AddSectionTxtLbl(tab, text)
	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.TextLbL
	tab.stuff[text] = {}
	tab.stuff[text]["2b"] = Instance.new("Frame", tab["ScrollingFrame"]);
	tab.stuff[text]["2b"]["BorderSizePixel"] = 0;
	tab.stuff[text]["2b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["2b"]["Size"] = UDim2.new(0.515, 0, 0.04, 0);
	tab.stuff[text]["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["2b"]["Name"] = text;
	tab.stuff[text]["2b"]["BackgroundTransparency"] = 0.35;


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.TextLbL.UICorner
	tab.stuff[text]["2c"] = Instance.new("UICorner", tab.stuff[text]["2b"]);
	tab.stuff[text]["2c"]["CornerRadius"] = UDim.new(0, 4);


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.TextLbL.TextLabel
	tab.stuff[text]["2d"] = Instance.new("TextLabel", tab.stuff[text]["2b"]);
	tab.stuff[text]["2d"]["TextWrapped"] = true;
	tab.stuff[text]["2d"]["TextStrokeTransparency"] = 0;
	tab.stuff[text]["2d"]["BorderSizePixel"] = 0;
	tab.stuff[text]["2d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	tab.stuff[text]["2d"]["TextScaled"] = true;
	tab.stuff[text]["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["2d"]["TextSize"] = 14;
	tab.stuff[text]["2d"]["FontFace"] = Font.new([[rbxasset://fonts/families/PermanentMarker.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	tab.stuff[text]["2d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["2d"]["BackgroundTransparency"] = 1;
	tab.stuff[text]["2d"]["AnchorPoint"] = Vector2.new(0, 0.5);
	tab.stuff[text]["2d"]["Size"] = UDim2.new(0.94604, 0, 0.74992, 0);
	tab.stuff[text]["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["2d"]["Text"] = text;
	tab.stuff[text]["2d"]["Position"] = UDim2.new(0.025, 0, 0.5, 0);
end

function library:AddSectionTextBox(tab, text, callback)
	tab.stuff[text] = {}
	tab.stuff[text]["2e"] = Instance.new("Frame", tab["ScrollingFrame"]);
	tab.stuff[text]["2e"]["BorderSizePixel"] = 0;
	tab.stuff[text]["2e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["2e"]["Size"] = UDim2.new(0.515, 0, 0.04, 0);
	tab.stuff[text]["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["2e"]["Name"] = text;
	tab.stuff[text]["2e"]["BackgroundTransparency"] = 0.35;


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.TextBox.UICorner
	tab.stuff[text]["2f"] = Instance.new("UICorner", tab.stuff[text]["2e"]);
	tab.stuff[text]["2f"]["CornerRadius"] = UDim.new(0, 4);


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.TextBox.TextBox
	tab.stuff[text]["30"] = Instance.new("TextBox", tab.stuff[text]["2e"]);
	tab.stuff[text]["30"]["CursorPosition"] = -1;
	tab.stuff[text]["30"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["30"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["30"]["BorderSizePixel"] = 0;
	tab.stuff[text]["30"]["TextStrokeTransparency"] = 0
	tab.stuff[text]["30"]["TextWrapped"] = true;
	tab.stuff[text]["30"]["TextSize"] = 14;
	tab.stuff[text]["30"]["TextScaled"] = true;
	tab.stuff[text]["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["30"]["FontFace"] = Font.new([[rbxasset://fonts/families/PermanentMarker.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	tab.stuff[text]["30"]["AnchorPoint"] = Vector2.new(0, 0.5);
	tab.stuff[text]["30"]["PlaceholderText"] = text;
	tab.stuff[text]["30"]["Size"] = UDim2.new(0.946, 0, 0.75, 0);
	tab.stuff[text]["30"]["Position"] = UDim2.new(0.025, 0, 0.5, 0);
	tab.stuff[text]["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["30"]["Text"] = [[]];
	tab.stuff[text]["30"]["BackgroundTransparency"] = 1;
	
	tab.stuff[text]["30"].Changed:Connect(function()
		callback(tab.stuff[text]["30"].Text)
	end)
end

function library:AddSectionDropDown(tab, text, options, callback)
	local tgl = false
	tab.stuff[text] = {}
	tab.stuff[text]["a"] = Instance.new("Frame", tab["ScrollingFrame"]);
	tab.stuff[text]["a"]["BorderSizePixel"] = 0;
	tab.stuff[text]["a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["a"]["Size"] = UDim2.new(0.515, 0, 0.04, 0);
	tab.stuff[text]["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["a"]["Name"] = [[Dropdown]];
	tab.stuff[text]["a"]["BackgroundTransparency"] = 0.35;


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Dropdown.UICorner
	tab.stuff[text]["b"] = Instance.new("UICorner", tab.stuff[text]["a"]);
	tab.stuff[text]["b"]["CornerRadius"] = UDim.new(0, 4);


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Dropdown.Title
	tab.stuff[text]["c"] = Instance.new("TextLabel", tab.stuff[text]["a"]);
	tab.stuff[text]["c"]["TextWrapped"] = true;
	tab.stuff[text]["c"]["TextStrokeTransparency"] = 0;
	tab.stuff[text]["c"]["BorderSizePixel"] = 0;
	tab.stuff[text]["c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	tab.stuff[text]["c"]["TextScaled"] = true;
	tab.stuff[text]["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["c"]["TextSize"] = 14;
	tab.stuff[text]["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/PermanentMarker.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	tab.stuff[text]["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["c"]["BackgroundTransparency"] = 1;
	tab.stuff[text]["c"]["Size"] = UDim2.new(0.78261, 0, 0.66035, 0);
	tab.stuff[text]["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["c"]["Text"] = text;
	tab.stuff[text]["c"]["Name"] = [[Title]];
	tab.stuff[text]["c"]["Position"] = UDim2.new(0.0322, 0, 0.15769, 0);


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Dropdown.Toggle
	tab.stuff[text]["d"] = Instance.new("TextButton", tab.stuff[text]["a"]);
	tab.stuff[text]["d"]["TextWrapped"] = true;
	tab.stuff[text]["d"]["TextStrokeTransparency"] = 0;
	tab.stuff[text]["d"]["BorderSizePixel"] = 0;
	tab.stuff[text]["d"]["TextSize"] = 14;
	tab.stuff[text]["d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["d"]["TextScaled"] = true;
	tab.stuff[text]["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/PermanentMarker.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	tab.stuff[text]["d"]["Size"] = UDim2.new(0.15872, 0, 1, 0);
	tab.stuff[text]["d"]["BackgroundTransparency"] = 1;
	tab.stuff[text]["d"]["Name"] = [[Toggle]];
	tab.stuff[text]["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["d"]["Text"] = [[>]];
	tab.stuff[text]["d"]["Rotation"] = 90;
	tab.stuff[text]["d"]["Position"] = UDim2.new(0.83609, 0, 0, 0);
	
	

	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Dropdown.Holder
	tab.stuff[text]["e"] = Instance.new("Frame", tab.stuff[text]["a"]);
	tab.stuff[text]["e"]["Visible"] = false;
	tab.stuff[text]["e"]["ZIndex"] = 5;
	tab.stuff[text]["e"]["BorderSizePixel"] = 0;
	tab.stuff[text]["e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["e"]["AnchorPoint"] = Vector2.new(0, 1);
	tab.stuff[text]["e"]["Size"] = UDim2.new(1, 0, 2.62633, 0);
	tab.stuff[text]["e"]["Position"] = UDim2.new(0, 0, 3.63922, 0);
	tab.stuff[text]["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["e"]["Name"] = [[Holder]];
	tab.stuff[text]["e"]["BackgroundTransparency"] = 0.35;


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Dropdown.Holder.UICorner
	tab.stuff[text]["f"] = Instance.new("UICorner", tab.stuff[text]["e"]);
	tab.stuff[text]["f"]["CornerRadius"] = UDim.new(0, 6);


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Dropdown.Holder.ScrollingFrame
	tab.stuff[text]["10"] = Instance.new("ScrollingFrame", tab.stuff[text]["e"]);
	tab.stuff[text]["10"]["Active"] = true;
	tab.stuff[text]["10"]["BorderSizePixel"] = 0;
	tab.stuff[text]["10"]["CanvasSize"] = UDim2.new(0, 0, 2, 0);
	tab.stuff[text]["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	tab.stuff[text]["10"]["Size"] = UDim2.new(1, 0, 0.94494, 0);
	tab.stuff[text]["10"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["10"]["Position"] = UDim2.new(-0, 0, 0.05506, 0);
	tab.stuff[text]["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	tab.stuff[text]["10"]["ScrollBarThickness"] = 5;
	tab.stuff[text]["10"]["BackgroundTransparency"] = 1;
	tab.stuff[text]["10"]["ZIndex"] = 7


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Dropdown.Holder.ScrollingFrame.UIListLayout
	tab.stuff[text]["11"] = Instance.new("UIListLayout", tab.stuff[text]["10"]);
	tab.stuff[text]["11"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
	tab.stuff[text]["11"]["Padding"] = UDim.new(0.035, 0);
	tab.stuff[text]["11"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
	
	tab.stuff[text]["d"].MouseButton1Down:Connect(function()
		tgl = not tgl
		tab.stuff[text]["e"]["Visible"] = tgl
		if tgl == true then
			tab.stuff[text]["d"]["Text"] = "<"
		else
			tab.stuff[text]["d"]["Text"] = ">"
		end
	end)
	
	local function makeButton(t)
		-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Dropdown.Holder.ScrollingFrame.TextButton
		tab.stuff[text][t] = Instance.new("TextButton", tab.stuff[text]["10"]);
		tab.stuff[text][t]["TextWrapped"] = true;
		tab.stuff[text][t]["TextStrokeTransparency"] = 0;
		tab.stuff[text][t]["BorderSizePixel"] = 0;
		tab.stuff[text][t]["TextSize"] = 14;
		tab.stuff[text][t]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		tab.stuff[text][t]["TextScaled"] = true;
		tab.stuff[text][t]["BackgroundColor3"] = Color3.fromRGB(191, 191, 191);
		tab.stuff[text][t]["FontFace"] = Font.new([[rbxasset://fonts/families/PermanentMarker.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		tab.stuff[text][t]["ZIndex"] = 8;
		tab.stuff[text][t]["Size"] = UDim2.new(0.95, 0, 0.13, 0);
		tab.stuff[text][t]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		tab.stuff[text][t]["Text"] = t;
		tab.stuff[text][t]["Position"] = UDim2.new(0.025, 0, 0, 0);


		-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Dropdown.Holder.ScrollingFrame.TextButton.UICorner
		tab.stuff[text]["13"] = Instance.new("UICorner", tab.stuff[text][t]);
		tab.stuff[text]["13"]["CornerRadius"] = UDim.new(0, 4);


		-- StarterGui.Zyons.Fluxion.MainFrame.Holder.ExampleTab.ScrollingFrame.Dropdown.Holder.ScrollingFrame.TextButton.UIGradient
		tab.stuff[text]["14"] = Instance.new("UIGradient", tab.stuff[text][t]);
		tab.stuff[text]["14"]["Rotation"] = 90;
		tab.stuff[text]["14"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.694, Color3.fromRGB(254, 254, 254)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(158, 158, 158))};
		
		tab.stuff[text][t]["MouseButton1Down"]:Connect(function()
			callback(t)
		end)
	end
	
	for _, opt in pairs(options) do
		makeButton(opt)
	end
end

function library:Create(Name, Versions)
	tree["2"] = Instance.new("Frame", tree["1"]);
	tree["2"]["ZIndex"] = 2;
	tree["2"]["BackgroundColor3"] = Color3.fromRGB(43, 43, 43);
	tree["2"]["Size"] = UDim2.new(0.263, 0,0.526, 0);
	tree["2"]["Position"] = UDim2.new(0.35583, 0, 0.19291, 0);
	tree["2"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
	tree["2"]["Name"] = Name;
	tree["2"]["BackgroundTransparency"] = 1;
	
	make_drag(tree["2"])
	
	-- StarterGui.Zyons.Toggle
	tree["51"] = Instance.new("ImageButton", tree["1"]);
	tree["51"]["BorderSizePixel"] = 0;
	tree["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	tree["51"]["AnchorPoint"] = Vector2.new(0.5, 0);
	tree["51"]["Image"] = [[http://www.roblox.com/asset/?id=116690115699495]];
	tree["51"]["Size"] = UDim2.new(0.03464, 0, 0.06747, 0);
	tree["51"]["BackgroundTransparency"] = 1;
	tree["51"]["Name"] = [[Toggle]];
	tree["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	tree["51"]["Position"] = UDim2.new(0.5, 0, 0.05, 0);


	-- StarterGui.Zyons.Toggle.UICorner
	tree["52"] = Instance.new("UICorner", tree["51"]);
	tree["52"]["CornerRadius"] = UDim.new(0, 100);
	
	tree["51"]["MouseButton1Down"]:Connect(function()
		tree["2"].Visible = not tree["2"].Visible
	end)
	
	-- StarterGui.Zyons.Fluxion.MainFrame
	tree["3"] = Instance.new("Frame", tree["2"]);
	tree["3"]["BorderSizePixel"] = 0;
	tree["3"]["BackgroundColor3"] = Color3.fromRGB(137, 137, 137);
	tree["3"]["Size"] = UDim2.new(1.6847, 0, 1.00641, 0);
	tree["3"]["Position"] = UDim2.new(-0.35874, 0, 0.06166, 0);
	tree["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	tree["3"]["Name"] = [[MainFrame]];
	tree["3"]["BackgroundTransparency"] = 0.2;


	-- StarterGui.Zyons.Fluxion.MainFrame.UIGradient
	tree["4"] = Instance.new("UIGradient", tree["3"]);
	tree["4"]["Rotation"] = 90;
	tree["4"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(160, 160, 160)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(44, 44, 44))};


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder
	tree["5"] = Instance.new("Frame", tree["3"]);
	tree["5"]["BorderSizePixel"] = 0;
	tree["5"]["BackgroundColor3"] = Color3.fromRGB(214, 214, 214);
	tree["5"]["Size"] = UDim2.new(0.68335, 0, 0.7812, 0);
	tree["5"]["Position"] = UDim2.new(0.30434, 0, 0.19872, 0);
	tree["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	tree["5"]["Name"] = [[Holder]];


	-- StarterGui.Zyons.Fluxion.MainFrame.Holder.UIGradient
	tree["6"] = Instance.new("UIGradient", tree["5"]);
	tree["6"]["Rotation"] = 90;
	tree["6"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(136, 136, 136))};
	
	tree["40"] = Instance.new("UICorner", tree["5"]);
	tree["40"]["CornerRadius"] = UDim.new(0, 6);


	-- StarterGui.Zyons.Fluxion.MainFrame.TopBar
	tree["41"] = Instance.new("Frame", tree["3"]);
	tree["41"]["BorderSizePixel"] = 0;
	tree["41"]["BackgroundColor3"] = Color3.fromRGB(90, 90, 90);
	tree["41"]["Size"] = UDim2.new(0.9744, 0, -0.16729, 0);
	tree["41"]["Position"] = UDim2.new(0.01328, 0, 0.18665, 0);
	tree["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	tree["41"]["Name"] = [[TopBar]];


	-- StarterGui.Zyons.Fluxion.MainFrame.TopBar.UICorner
	tree["42"] = Instance.new("UICorner", tree["41"]);
	tree["42"]["CornerRadius"] = UDim.new(0, 6);


	-- StarterGui.Zyons.Fluxion.MainFrame.TopBar.UIGradient
	tree["43"] = Instance.new("UIGradient", tree["41"]);
	tree["43"]["Rotation"] = 90;
	tree["43"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(160, 160, 160)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(44, 44, 44))};


	-- StarterGui.Zyons.Fluxion.MainFrame.Label
	tree["44"] = Instance.new("TextLabel", tree["3"]);
	tree["44"]["TextWrapped"] = true;
	tree["44"]["TextStrokeTransparency"] = 0;
	tree["44"]["ZIndex"] = 5;
	tree["44"]["BorderSizePixel"] = 0;
	tree["44"]["TextScaled"] = true;
	tree["44"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	tree["44"]["TextSize"] = 14;
	tree["44"]["FontFace"] = Font.new([[rbxasset://fonts/families/PermanentMarker.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	tree["44"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	tree["44"]["BackgroundTransparency"] = 1;
	tree["44"]["RichText"] = true;
	tree["44"]["Size"] = UDim2.new(0.35053, 0, 0.13133, 0);
	tree["44"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
	tree["44"]["Text"] = Name;
	tree["44"]["Name"] = [[Label]];
	tree["44"]["Position"] = UDim2.new(0.32422, 0, 0.0365, 0);


	-- StarterGui.Zyons.Fluxion.MainFrame.Version
	tree["45"] = Instance.new("TextLabel", tree["3"]);
	tree["45"]["TextWrapped"] = true;
	tree["45"]["TextStrokeTransparency"] = 0;
	tree["45"]["ZIndex"] = 5;
	tree["45"]["BorderSizePixel"] = 2;
	tree["45"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	tree["45"]["TextScaled"] = true;
	tree["45"]["BackgroundColor3"] = Color3.fromRGB(12, 12, 12);
	tree["45"]["TextSize"] = 14;
	tree["45"]["FontFace"] = Font.new([[rbxasset://fonts/families/PermanentMarker.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	tree["45"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	tree["45"]["BackgroundTransparency"] = 1;
	tree["45"]["RichText"] = true;
	tree["45"]["Size"] = UDim2.new(0.18156, 0, 0.09281, 0);
	tree["45"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
	tree["45"]["Text"] = Versions;
	tree["45"]["Name"] = [[Version]];
	tree["45"]["Position"] = UDim2.new(0.02239, 0, 0.01782, 0);


	-- StarterGui.Zyons.Fluxion.MainFrame.Frame
	tree["46"] = Instance.new("Frame", tree["3"]);
	tree["46"]["BorderSizePixel"] = 0;
	tree["46"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	tree["46"]["Size"] = UDim2.new(0.28346, 0, 0.77768, 0);
	tree["46"]["Position"] = UDim2.new(0.01282, 0, 0.20224, 0);
	tree["46"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	tree["46"]["BackgroundTransparency"] = 1;
	tree["46"]["Name"] = "Buttons";
	tree["4b"] = Instance.new("UIListLayout", tree["46"]);
	tree["4b"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
	tree["4b"]["Padding"] = UDim.new(0.025, 0);
	tree["4b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
	Instance.new("UICorner", tree["3"]);
end

print(library)

return library;
