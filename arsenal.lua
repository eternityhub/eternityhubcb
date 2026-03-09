-- Eternity Hub | Premium Custom V4
-- Developed by Antigravity
-- Created by Tawixz.

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

local Settings = {
    -- UI
    MenuKey         = Enum.KeyCode.Insert,
    Theme           = "Default",
    MenuVisible     = true,
    
    -- Combat
    AimbotEnabled   = false,
    AimbotFOV       = 150,
    AimbotSpeed     = 0.5,
    AimbotBone      = "Head",
    AimbotTeamCheck = true,
    ShowFOV         = false,
    SilentAim       = false,
    
    -- Visuals
    ESPEnabled      = false,
    BoxESP          = false,
    NameESP         = false,
    HealthESP       = false,
    SkeletonESP     = false,
    ESPColor        = Color3.fromRGB(0, 255, 255),
    
    -- Movement
    SpeedHack       = false,
    SpeedValue      = 100,
    Noclip          = false,
}

local Themes = {
    Default = {Main = Color3.fromRGB(20, 20, 25), Sidebar = Color3.fromRGB(15, 15, 20), Accent = Color3.fromRGB(0, 200, 255)},
    Vampire = {Main = Color3.fromRGB(20, 10, 10), Sidebar = Color3.fromRGB(15, 5, 5), Accent = Color3.fromRGB(255, 50, 50)},
    Emerald = {Main = Color3.fromRGB(10, 20, 15), Sidebar = Color3.fromRGB(5, 15, 10), Accent = Color3.fromRGB(50, 255, 100)},
    Midnight = {Main = Color3.fromRGB(5, 5, 10), Sidebar = Color3.fromRGB(2, 2, 5), Accent = Color3.fromRGB(150, 50, 255)}
}

-- ========================
-- CUSTOM UI LIBRARY V2
-- ========================
local UI = {}
local ScreenGui, MainFrame, Sidebar, Stroke, SidebarTitle

function UI:CreateBase()
    ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
    ScreenGui.Name = "EternityHub_V4"
    ScreenGui.ResetOnSpawn = false
    
    MainFrame = Instance.new("Frame", ScreenGui)
    MainFrame.Name = "Main"
    MainFrame.Size = UDim2.new(0, 520, 0, 380)
    MainFrame.Position = UDim2.new(0.5, -260, 0.5, -190)
    MainFrame.BackgroundColor3 = Themes.Default.Main
    MainFrame.BorderSizePixel = 0
    Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 10)
    
    Stroke = Instance.new("UIStroke", MainFrame)
    Stroke.Thickness = 2 ; Stroke.Color = Color3.fromRGB(40, 40, 50)
    
    -- Dragging
    local dragging, dragInput, dragStart, startPos
    MainFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = true ; dragStart = input.Position ; startPos = MainFrame.Position end
    end)
    MainFrame.InputChanged:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then dragInput = input end end)
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
    UserInputService.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end end)
    
    Sidebar = Instance.new("Frame", MainFrame)
    Sidebar.Size = UDim2.new(0, 150, 1, 0)
    Sidebar.BackgroundColor3 = Themes.Default.Sidebar
    Sidebar.BorderSizePixel = 0
    Instance.new("UICorner", Sidebar).CornerRadius = UDim.new(0, 10)
    
    SidebarTitle = Instance.new("TextLabel", Sidebar)
    SidebarTitle.Text = "ETERNITY HUB" ; SidebarTitle.Size = UDim2.new(1, 0, 0, 60)
    SidebarTitle.Font = Enum.Font.GothamBold ; SidebarTitle.TextColor3 = Themes.Default.Accent
    SidebarTitle.TextSize = 20 ; SidebarTitle.BackgroundTransparency = 1
    
    -- Creator Tag
    local CreatorTag = Instance.new("TextLabel", Sidebar)
    CreatorTag.Text = "Created by Tawixz."
    CreatorTag.Size = UDim2.new(1, 0, 0, 20)
    CreatorTag.Position = UDim2.new(0, 0, 1, -25)
    CreatorTag.Font = Enum.Font.GothamMedium
    CreatorTag.TextColor3 = Color3.fromRGB(100, 100, 110)
    CreatorTag.TextSize = 10
    CreatorTag.BackgroundTransparency = 1
    
    local TabContainer = Instance.new("Frame", Sidebar)
    TabContainer.Position = UDim2.new(0, 10, 0, 70) ; TabContainer.Size = UDim2.new(1, -20, 1, -100)
    TabContainer.BackgroundTransparency = 1
    Instance.new("UIListLayout", TabContainer).Padding = UDim.new(0, 6)
    
    local Content = Instance.new("Frame", MainFrame)
    Content.Position = UDim2.new(0, 160, 0, 10) ; Content.Size = UDim2.new(1, -170, 1, -20)
    Content.BackgroundTransparency = 1
    
    return MainFrame, TabContainer, Content
end

local Main, TabHolder, ContentArea = UI:CreateBase()
local CurrentTab = nil

function UI:SetTheme(themeName)
    local t = Themes[themeName] or Themes.Default
    TweenService:Create(MainFrame, TweenInfo.new(0.3), {BackgroundColor3 = t.Main}):Play()
    TweenService:Create(Sidebar, TweenInfo.new(0.3), {BackgroundColor3 = t.Sidebar}):Play()
    TweenService:Create(SidebarTitle, TweenInfo.new(0.3), {TextColor3 = t.Accent}):Play()
    Settings.Theme = themeName
end

function UI:CreateTab(name)
    local TabButton = Instance.new("TextButton", TabHolder)
    TabButton.Size = UDim2.new(1, 0, 0, 38)
    TabButton.BackgroundColor3 = Color3.fromRGB(30,30,40) ; TabButton.Text = name
    TabButton.Font = Enum.Font.GothamSemibold ; TabButton.TextColor3 = Color3.fromRGB(160, 160, 170)
    TabButton.TextSize = 14 ; Instance.new("UICorner", TabButton).CornerRadius = UDim.new(0, 6)
    
    local Page = Instance.new("ScrollingFrame", ContentArea)
    Page.Size = UDim2.new(1, 0, 1, 0) ; Page.BackgroundTransparency = 1 ; Page.Visible = false
    Page.ScrollBarThickness = 2 ; Instance.new("UIListLayout", Page).Padding = UDim.new(0, 10)
    
    TabButton.MouseButton1Click:Connect(function()
        if CurrentTab then CurrentTab.Page.Visible = false ; CurrentTab.Btn.TextColor3 = Color3.fromRGB(160, 160, 170) end
        Page.Visible = true ; TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        CurrentTab = {Page = Page, Btn = TabButton}
    end)
    
    if not CurrentTab then Page.Visible = true ; TabButton.TextColor3 = Color3.fromRGB(255,255,255) ; CurrentTab = {Page = Page, Btn = TabButton} end
    return Page
end

function UI:AddToggle(parent, name, default, callback)
    local ToggleFrame = Instance.new("Frame", parent)
    ToggleFrame.Size = UDim2.new(1, -10, 0, 45) ; ToggleFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
    Instance.new("UICorner", ToggleFrame).CornerRadius = UDim.new(0, 6)
    
    local Label = Instance.new("TextLabel", ToggleFrame)
    Label.Text = "  "..name ; Label.Size = UDim2.new(1, -60, 1, 0)
    Label.TextXAlignment = Enum.TextXAlignment.Left ; Label.Font = Enum.Font.Gotham
    Label.TextColor3 = Color3.fromRGB(210, 210, 220) ; Label.TextSize = 14 ; Label.BackgroundTransparency = 1
    
    local Switch = Instance.new("TextButton", ToggleFrame)
    Switch.Size = UDim2.new(0, 46, 0, 22) ; Switch.Position = UDim2.new(1, -55, 0.5, -11)
    Switch.BackgroundColor3 = default and Themes.Default.Accent or Color3.fromRGB(50, 50, 60)
    Switch.Text = "" ; Instance.new("UICorner", Switch).CornerRadius = UDim.new(1, 0)
    
    local state = default
    Switch.MouseButton1Click:Connect(function()
        state = not state
        local accent = Themes[Settings.Theme].Accent
        TweenService:Create(Switch, TweenInfo.new(0.2), {BackgroundColor3 = state and accent or Color3.fromRGB(50, 50, 60)}):Play()
        callback(state)
    end)
end

function UI:AddSlider(parent, name, min, max, default, callback)
    local SliderFrame = Instance.new("Frame", parent)
    SliderFrame.Size = UDim2.new(1, -10, 0, 55) ; SliderFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
    Instance.new("UICorner", SliderFrame).CornerRadius = UDim.new(0, 6)
    
    local Label = Instance.new("TextLabel", SliderFrame)
    Label.Text = "  "..name.." : "..default ; Label.Size = UDim2.new(1, 0, 0, 30)
    Label.TextXAlignment = Enum.TextXAlignment.Left ; Label.Font = Enum.Font.Gotham
    Label.TextColor3 = Color3.fromRGB(210, 210, 220) ; Label.TextSize = 13 ; Label.BackgroundTransparency = 1
    
    local Bar = Instance.new("Frame", SliderFrame)
    Bar.Size = UDim2.new(1, -30, 0, 6) ; Bar.Position = UDim2.new(0, 15, 0.7, 0)
    Bar.BackgroundColor3 = Color3.fromRGB(50, 50, 60) ; Instance.new("UICorner", Bar)
    
    local Fill = Instance.new("Frame", Bar)
    Fill.Size = UDim2.new((default-min)/(max-min), 0, 1, 0) ; Fill.BackgroundColor3 = Themes.Default.Accent
    Instance.new("UICorner", Fill)
    
    local btn = Instance.new("TextButton", Bar)
    btn.Size = UDim2.new(1, 0, 1, 0) ; btn.BackgroundTransparency = 1 ; btn.Text = ""
    
    local function Update(input)
        local pct = math.clamp((input.Position.X - Bar.AbsolutePosition.X) / Bar.AbsoluteSize.X, 0, 1)
        Fill.Size = UDim2.new(pct, 0, 1, 0) ; Fill.BackgroundColor3 = Themes[Settings.Theme].Accent
        local val = math.floor(min + (max - min) * pct)
        Label.Text = "  "..name.." : "..val ; callback(val)
    end
    
    local dragging = false
    btn.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = true end end)
    UserInputService.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end end)
    UserInputService.InputChanged:Connect(function(input) if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then Update(input) end end)
end

function UI:AddDropdown(parent, name, options, default, callback)
    local DropFrame = Instance.new("Frame", parent)
    DropFrame.Size = UDim2.new(1, -10, 0, 45) ; DropFrame.BackgroundColor3 = Color3.fromRGB(30,30,35)
    Instance.new("UICorner", DropFrame).CornerRadius = UDim.new(0, 6)
    
    local btn = Instance.new("TextButton", DropFrame)
    btn.Text = "  "..name.." : "..default ; btn.Size = UDim2.new(1, 0, 1, 0)
    btn.BackgroundTransparency = 1 ; btn.TextColor3 = Color3.fromRGB(200,200,210)
    btn.Font = Enum.Font.Gotham ; btn.TextSize = 14 ; btn.TextXAlignment = Enum.TextXAlignment.Left
    
    local open = false
    btn.MouseButton1Click:Connect(function()
        open = not open
        if open then
            DropFrame.Size = UDim2.new(1, -10, 0, 45 + (#options * 30))
            for i, opt in ipairs(options) do
                local oBtn = Instance.new("TextButton", DropFrame)
                oBtn.Text = opt ; oBtn.Size = UDim2.new(1, 0, 0, 30) ; oBtn.Position = UDim2.new(0, 0, 0, 45 + (i-1)*30)
                oBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 45) ; oBtn.BorderSizePixel = 0
                oBtn.TextColor3 = Color3.fromRGB(180, 180, 190) ; oBtn.Font = Enum.Font.Gotham ; oBtn.TextSize = 13
                oBtn.MouseButton1Click:Connect(function()
                    btn.Text = "  "..name.." : "..opt ; callback(opt) ; open = false
                    DropFrame.Size = UDim2.new(1, -10, 0, 45)
                    for _, child in ipairs(DropFrame:GetChildren()) do if child:IsA("TextButton") and child ~= btn then child:Destroy() end end
                end)
            end
        else
            DropFrame.Size = UDim2.new(1, -10, 0, 45)
            for _, child in ipairs(DropFrame:GetChildren()) do if child:IsA("TextButton") and child ~= btn then child:Destroy() end end
        end
    end)
end

function UI:AddKeybind(parent, name, default, callback)
    local BindFrame = Instance.new("Frame", parent)
    BindFrame.Size = UDim2.new(1, -10, 0, 45) ; BindFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
    Instance.new("UICorner", BindFrame).CornerRadius = UDim.new(0, 6)
    
    local Label = Instance.new("TextLabel", BindFrame)
    Label.Text = "  "..name ; Label.Size = UDim2.new(1, -100, 1, 0)
    Label.TextXAlignment = Enum.TextXAlignment.Left ; Label.Font = Enum.Font.Gotham
    Label.TextColor3 = Color3.fromRGB(210, 210, 220) ; Label.TextSize = 14 ; Label.BackgroundTransparency = 1
    
    local btn = Instance.new("TextButton", BindFrame)
    btn.Size = UDim2.new(0, 80, 0, 25) ; btn.Position = UDim2.new(1, -90, 0.5, -12)
    btn.BackgroundColor3 = Color3.fromRGB(50, 50, 60) ; btn.Text = default.Name
    btn.TextColor3 = Color3.fromRGB(255,255,255) ; btn.Font = Enum.Font.GothamBold ; btn.TextSize = 12
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 4)
    
    local listen = false
    btn.MouseButton1Click:Connect(function() btn.Text = "..." ; listen = true end)
    UserInputService.InputBegan:Connect(function(input)
        if listen and input.UserInputType == Enum.UserInputType.Keyboard then
            btn.Text = input.KeyCode.Name ; listen = false ; callback(input.KeyCode)
        end
    end)
end

-- ========================
-- PAGES & CONTENT
-- ========================
local CombatPage = UI:CreateTab("Combat")
local VisualPage = UI:CreateTab("Visuals")
local MovePage   = UI:CreateTab("Movement")
local SettingsPage = UI:CreateTab("Settings")

-- COMBAT
UI:AddToggle(CombatPage, "Enabled Aimbot", false, function(v) Settings.AimbotEnabled = v end)
UI:AddSlider(CombatPage, "Aimbot Speed", 1, 100, 100, function(v) Settings.AimbotSpeed = v/100 end)
UI:AddSlider(CombatPage, "FOV Radius", 10, 800, 150, function(v) Settings.AimbotFOV = v end)
UI:AddToggle(CombatPage, "Show FOV Circle", false, function(v) Settings.ShowFOV = v end)
UI:AddToggle(CombatPage, "Silent Aim", false, function(v) Settings.SilentAim = v end)

-- VISUALS
UI:AddToggle(VisualPage, "Enable ESP", false, function(v) Settings.ESPEnabled = v end)
UI:AddToggle(VisualPage, "Name ESP", false, function(v) Settings.NameESP = v end)
UI:AddToggle(VisualPage, "Box ESP", false, function(v) Settings.BoxESP = v end)
UI:AddToggle(VisualPage, "Health Bar", false, function(v) Settings.HealthESP = v end)
UI:AddToggle(VisualPage, "Skeleton ESP", false, function(v) Settings.SkeletonESP = v end)

-- MOVE
UI:AddToggle(MovePage, "Speed Hack", false, function(v) Settings.SpeedHack = v end)
UI:AddSlider(MovePage, "Value", 16, 250, 100, function(v) Settings.SpeedValue = v end)
UI:AddToggle(MovePage, "Noclip", false, function(v) Settings.Noclip = v end)

-- SETTINGS
UI:AddKeybind(SettingsPage, "Menu Open/Close", Settings.MenuKey, function(k) Settings.MenuKey = k end)
UI:AddDropdown(SettingsPage, "Menu Theme", {"Default", "Vampire", "Emerald", "Midnight"}, "Default", function(t) UI:SetTheme(t) end)
UI:AddDropdown(SettingsPage, "ESP Color", {"Cyan", "Red", "Green", "White", "Yellow"}, "Cyan", function(c) 
    if c == "Cyan" then Settings.ESPColor = Color3.fromRGB(0, 255, 255)
    elseif c == "Red" then Settings.ESPColor = Color3.fromRGB(255, 0, 0)
    elseif c == "Green" then Settings.ESPColor = Color3.fromRGB(0, 255, 0)
    elseif c == "White" then Settings.ESPColor = Color3.fromRGB(255, 255, 255)
    elseif c == "Yellow" then Settings.ESPColor = Color3.fromRGB(255, 255, 0) end
end)

-- ========================
-- CORE LOGIC
-- ========================
local function GetClosestPlayer()
    local closestPlayer, closestDist = nil, Settings.AimbotFOV
    local center = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    for _, player in ipairs(Players:GetPlayers()) do
        if player == LocalPlayer or (Settings.AimbotTeamCheck and player.Team == LocalPlayer.Team) then continue end
        if player.Character and player.Character:FindFirstChild(Settings.AimbotBone) then
            local hum = player.Character:FindFirstChildOfClass("Humanoid")
            if not hum or hum.Health <= 0 then continue end
            local sp, onScreen = Camera:WorldToViewportPoint(player.Character[Settings.AimbotBone].Position)
            if onScreen then
                local dist = (Vector2.new(sp.X, sp.Y) - center).Magnitude
                if dist < closestDist then closestDist = dist ; closestPlayer = player end
            end
        end
    end
    return closestPlayer
end

-- ESP
local ESPObjects = {}
local function CreateESP(player)
    local t = {}
    t.Box = Drawing.new("Square") ; t.Box.Thickness = 1 ; t.Box.Filled = false ; t.Box.Visible = false
    t.Name = Drawing.new("Text") ; t.Name.Size = 14 ; t.Name.Center = true ; t.Name.Outline = true ; t.Name.Visible = false
    t.HealthBar = Drawing.new("Square") ; t.HealthBar.Thickness = 1 ; t.HealthBar.Filled = true ; t.HealthBar.Visible = false
    t.Skeleton = {}
    for i = 1, 10 do local l = Drawing.new("Line") ; l.Thickness = 1 ; l.Visible = false ; table.insert(t.Skeleton, l) end
    ESPObjects[player] = t
end

local function HideESP(p)
    local esp = ESPObjects[p]
    if esp then esp.Box.Visible = false ; esp.Name.Visible = false ; esp.HealthBar.Visible = false ; for _, l in pairs(esp.Skeleton) do l.Visible = false end end
end

for _, p in ipairs(Players:GetPlayers()) do if p ~= LocalPlayer then CreateESP(p) end end
Players.PlayerAdded:Connect(CreateESP)
Players.PlayerRemoving:Connect(function(p)
    if ESPObjects[p] then for _, v in pairs(ESPObjects[p]) do if type(v) == "table" then for _, l in pairs(v) do l:Remove() end else v:Remove() end end ESPObjects[p] = nil end
end)

local FOVCircle = Drawing.new("Circle") ; FOVCircle.Thickness = 1 ; FOVCircle.NumSides = 64 ; FOVCircle.Visible = false

-- RENDER LOOP
RunService.RenderStepped:Connect(function()
    FOVCircle.Visible = Settings.ShowFOV ; FOVCircle.Radius = Settings.AimbotFOV
    FOVCircle.Position = Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2) ; FOVCircle.Color = Themes[Settings.Theme].Accent

    local char = LocalPlayer.Character
    if char then
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum and Settings.SpeedHack then hum.WalkSpeed = Settings.SpeedValue elseif hum then hum.WalkSpeed = 16 end
        if Settings.Noclip then for _, v in ipairs(char:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end end
    end

    -- Aimbot
    if Settings.AimbotEnabled and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
        local target = GetClosestPlayer()
        if target and target.Character then
            local bone = target.Character:FindFirstChild(Settings.AimbotBone)
            if bone then
                local sp = Camera:WorldToViewportPoint(bone.Position)
                local center = Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2)
                local moveX = (sp.X - center.X) * Settings.AimbotSpeed
                local moveY = (sp.Y - center.Y) * Settings.AimbotSpeed
                if math.abs(moveX) < 1 then moveX = (sp.X - center.X) end
                if math.abs(moveY) < 1 then moveY = (sp.Y - center.Y) end
                mousemoverel(moveX, moveY)
            end
        end
    end

    -- ESP
    for p, esp in pairs(ESPObjects) do
        local pchar = p.Character
        local proot = pchar and pchar:FindFirstChild("HumanoidRootPart")
        local phum  = pchar and pchar:FindFirstChildOfClass("Humanoid")
        if Settings.ESPEnabled and phum and phum.Health > 0 and proot and (p.Team ~= LocalPlayer.Team) then
            local pos, onScreen = Camera:WorldToViewportPoint(proot.Position)
            if onScreen then
                local headPos = Camera:WorldToViewportPoint(proot.Position + Vector3.new(0, 3, 0))
                local h = math.abs(headPos.Y - Camera:WorldToViewportPoint(proot.Position - Vector3.new(0, 3, 0)).Y) ; local w = h * 0.6
                
                if Settings.BoxESP then esp.Box.Visible = true ; esp.Box.Size = Vector2.new(w, h) ; esp.Box.Position = Vector2.new(pos.X - w/2, pos.Y - h/2) ; esp.Box.Color = Settings.ESPColor end
                if Settings.NameESP then esp.Name.Visible = true ; esp.Name.Text = p.Name ; esp.Name.Position = Vector2.new(pos.X, pos.Y - h/2 - 15) ; esp.Name.Color = Settings.ESPColor end
                if Settings.HealthESP then
                    local pct = phum.Health / phum.MaxHealth
                    esp.HealthBar.Visible = true ; esp.HealthBar.Size = Vector2.new(2, h * pct) ; esp.HealthBar.Position = Vector2.new(pos.X - w/2 - 5, pos.Y + h/2 - (h * pct))
                    esp.HealthBar.Color = Color3.fromRGB(255 * (1-pct), 255 * pct, 0)
                end
                if Settings.SkeletonESP then
                    local function DrawLine(p1, p2, idx)
                        local part1, part2 = pchar:FindFirstChild(p1), pchar:FindFirstChild(p2)
                        if part1 and part2 then
                            local sp1, os1 = Camera:WorldToViewportPoint(part1.Position)
                            local sp2, os2 = Camera:WorldToViewportPoint(part2.Position)
                            if os1 and os2 then local l = esp.Skeleton[idx] ; l.Visible = true ; l.From = Vector2.new(sp1.X, sp1.Y) ; l.To = Vector2.new(sp2.X, sp2.Y) ; l.Color = Settings.ESPColor end
                        end
                    end
                    DrawLine("Head", "UpperTorso", 1) ; DrawLine("UpperTorso", "LowerTorso", 2)
                    DrawLine("UpperTorso", "LeftUpperArm", 3) ; DrawLine("LeftUpperArm", "LeftLowerArm", 4)
                    DrawLine("UpperTorso", "RightUpperArm", 5) ; DrawLine("RightUpperArm", "RightLowerArm", 6)
                    DrawLine("LowerTorso", "LeftUpperLeg", 7) ; DrawLine("LeftUpperLeg", "LeftLowerLeg", 8)
                    DrawLine("LowerTorso", "RightUpperLeg", 9) ; DrawLine("RightUpperLeg", "RightLowerLeg", 10)
                end
            else HideESP(p) end
        else HideESP(p) end
    end
end)

-- Menu Toggle Keybind Logic
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Settings.MenuKey then
        Settings.MenuVisible = not Settings.MenuVisible
        MainFrame.Visible = Settings.MenuVisible
    end
end)

Rayfield:Notify({Title = "Eternity Hub", Content = "Created by Tawixz.", Duration = 4})
