-- Counter Blox: Source 2 | Rayfield UI
-- Made with Rayfield UI Library

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Eternity Hub",
    Icon = 0,
    LoadingTitle = "Eternity Hub",
    LoadingSubtitle = "by Tawixz",
    Theme = "Default",
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "Eternity",
        FileName = "CB"
    },
    Discord = { Enabled = false },
    KeySystem = false,
})

-- ========================
-- SERVICES & VARIABLES
-- ========================
local Players          = game:GetService("Players")
local RunService       = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer      = Players.LocalPlayer
local Camera           = workspace.CurrentCamera

local Settings = {
    -- Aimbot
    AimbotEnabled      = false,
    AimbotFOV          = 150,
    AimbotSmoothing    = 0.3,
    AimbotBone         = "Head",
    AimbotTeamCheck    = true,
    AimbotVisibleCheck = false,

    -- ESP
    ESPEnabled   = false,
    BoxESP       = false,
    NameESP      = false,
    HealthESP    = false,
    DistanceESP  = false,
    TracerESP    = false,
    ESPTeamCheck = true,
    ESPColor     = Color3.fromRGB(255, 0, 0),

    -- Chams (Highlight-based, lives inside ESP tab)
    ChamsEnabled          = false,
    ChamsTeamCheck        = true,
    ChamsVisibleCheck     = false,
    ChamsEnemyColor       = Color3.fromRGB(255, 60, 60),
    ChamsTeamColor        = Color3.fromRGB(60, 160, 255),
    ChamsVisibleColor     = Color3.fromRGB(50, 255, 120),
    ChamsFillTransparency = 0.5,
    ChamsOutlineOnly      = false,

    -- Visuals
    NoRecoil       = false,
    NoSpread       = false,
    BHop           = false,
    FastWalk       = false,
    WalkspeedValue = 16,
    InfiniteJump   = false,

    -- Misc
    FOVChanger  = false,
    FOVValue    = 90,
    ThirdPerson = false,
    SpinBot     = false,
    SpinSpeed   = 5,
}

-- ============================================================
-- CHAMS LOGIC
-- ============================================================
local ChamsObjects = {}

local function IsVisible(character)
    if not character then return false end
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then return false end
    local params = RaycastParams.new()
    params.FilterDescendantsInstances = {
        LocalPlayer.Character or Instance.new("Folder"),
        character
    }
    params.FilterType = Enum.RaycastFilterType.Exclude
    local result = workspace:Raycast(
        Camera.CFrame.Position,
        hrp.Position - Camera.CFrame.Position,
        params
    )
    return result == nil
end

local function GetChamsColor(player)
    if Settings.ChamsVisibleCheck and IsVisible(player.Character) then
        return Settings.ChamsVisibleColor
    end
    local isEnemy = not Settings.ChamsTeamCheck or (player.Team ~= LocalPlayer.Team)
    return isEnemy and Settings.ChamsEnemyColor or Settings.ChamsTeamColor
end

local function RemoveChams(player)
    local hl = ChamsObjects[player]
    if hl then
        if hl.Parent then hl:Destroy() end
        ChamsObjects[player] = nil
    end
end

local function ApplyChams(player)
    if not Settings.ChamsEnabled then return end
    local char = player.Character
    if not char then return end
    if Settings.ChamsTeamCheck and player.Team == LocalPlayer.Team then return end

    RemoveChams(player)

    local color = GetChamsColor(player)

    local hl = Instance.new("Highlight")
    hl.Name                 = "CB_Chams"
    hl.Adornee              = char
    hl.DepthMode            = Enum.HighlightDepthMode.AlwaysOnTop
    hl.FillColor            = color
    hl.FillTransparency     = Settings.ChamsFillTransparency
    hl.OutlineColor         = color
    hl.OutlineTransparency  = Settings.ChamsOutlineOnly and 1 or 0
    hl.Parent               = char

    ChamsObjects[player] = hl
end

local function RefreshAllChams()
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            RemoveChams(player)
            if Settings.ChamsEnabled then ApplyChams(player) end
        end
    end
end

local function HookChamsForPlayer(player)
    player.CharacterAdded:Connect(function()
        task.wait(0.5)
        if Settings.ChamsEnabled then ApplyChams(player) end
    end)
    if player.Character and Settings.ChamsEnabled then
        ApplyChams(player)
    end
end

RunService.Heartbeat:Connect(function()
    if not Settings.ChamsEnabled then return end
    for player, hl in pairs(ChamsObjects) do
        if not hl or not hl.Parent then
            ChamsObjects[player] = nil
            continue
        end
        local color = GetChamsColor(player)
        hl.FillColor           = color
        hl.OutlineColor        = color
        hl.FillTransparency    = Settings.ChamsFillTransparency
        hl.OutlineTransparency = Settings.ChamsOutlineOnly and 1 or 0
    end
end)

-- ========================
-- TAB: AIMBOT
-- ========================
local AimbotTab = Window:CreateTab("Aimbot", 4483362458)
AimbotTab:CreateSection("Aimbot Settings")

AimbotTab:CreateToggle({
    Name = "Enable Aimbot", CurrentValue = false, Flag = "AimbotEnabled",
    Callback = function(v) Settings.AimbotEnabled = v end
})
AimbotTab:CreateSlider({
    Name = "FOV Radius", Range = {10, 500}, Increment = 10,
    Suffix = "px", CurrentValue = 150, Flag = "AimbotFOV",
    Callback = function(v) Settings.AimbotFOV = v end
})
AimbotTab:CreateSlider({
    Name = "Smoothing", Range = {1, 100}, Increment = 1,
    Suffix = "%", CurrentValue = 30, Flag = "AimbotSmoothing",
    Callback = function(v) Settings.AimbotSmoothing = v / 100 end
})
AimbotTab:CreateDropdown({
    Name = "Target Bone",
    Options = {"Head", "HumanoidRootPart", "UpperTorso", "LowerTorso"},
    CurrentOption = {"Head"}, Flag = "AimbotBone", MultipleOptions = false,
    Callback = function(v) Settings.AimbotBone = v[1] end
})
AimbotTab:CreateToggle({
    Name = "Team Check", CurrentValue = true, Flag = "AimbotTeamCheck",
    Callback = function(v) Settings.AimbotTeamCheck = v end
})
AimbotTab:CreateToggle({
    Name = "Visible Check", CurrentValue = false, Flag = "AimbotVisibleCheck",
    Callback = function(v) Settings.AimbotVisibleCheck = v end
})
AimbotTab:CreateKeybind({
    Name = "Aimbot Key", CurrentKeybind = "MouseButton2",
    HoldToInteract = false, Flag = "AimbotKey",
    Callback = function() end
})

-- ========================
-- TAB: ESP  (+ Chams section)
-- ========================
local ESPTab = Window:CreateTab("ESP", 4483362458)
ESPTab:CreateSection("ESP Settings")

ESPTab:CreateToggle({
    Name = "Enable ESP", CurrentValue = false, Flag = "ESPEnabled",
    Callback = function(v) Settings.ESPEnabled = v end
})
ESPTab:CreateToggle({
    Name = "Box ESP", CurrentValue = false, Flag = "BoxESP",
    Callback = function(v) Settings.BoxESP = v end
})
ESPTab:CreateToggle({
    Name = "Name ESP", CurrentValue = false, Flag = "NameESP",
    Callback = function(v) Settings.NameESP = v end
})
ESPTab:CreateToggle({
    Name = "Health Bar", CurrentValue = false, Flag = "HealthESP",
    Callback = function(v) Settings.HealthESP = v end
})
ESPTab:CreateToggle({
    Name = "Distance", CurrentValue = false, Flag = "DistanceESP",
    Callback = function(v) Settings.DistanceESP = v end
})
ESPTab:CreateToggle({
    Name = "Tracers", CurrentValue = false, Flag = "TracerESP",
    Callback = function(v) Settings.TracerESP = v end
})
ESPTab:CreateToggle({
    Name = "Team Check", CurrentValue = true, Flag = "ESPTeamCheck",
    Callback = function(v) Settings.ESPTeamCheck = v end
})
ESPTab:CreateColorPicker({
    Name = "ESP Color", Color = Color3.fromRGB(255, 0, 0), Flag = "ESPColor",
    Callback = function(v) Settings.ESPColor = v end
})

-- ── Chams Section ────────────────────────────────────────────
ESPTab:CreateSection("Chams")

ESPTab:CreateToggle({
    Name = "Enable Chams", CurrentValue = false, Flag = "ChamsEnabled",
    Callback = function(v)
        Settings.ChamsEnabled = v
        if not v then
            for _, p in ipairs(Players:GetPlayers()) do RemoveChams(p) end
        else
            for _, p in ipairs(Players:GetPlayers()) do
                if p ~= LocalPlayer then ApplyChams(p) end
            end
        end
    end
})

ESPTab:CreateToggle({
    Name = "Team Check", CurrentValue = true, Flag = "ChamsTeamCheck",
    Callback = function(v)
        Settings.ChamsTeamCheck = v
        RefreshAllChams()
    end
})

ESPTab:CreateToggle({
    Name = "Visible Color Switch", CurrentValue = false, Flag = "ChamsVisibleCheck",
    Callback = function(v) Settings.ChamsVisibleCheck = v end
})

ESPTab:CreateToggle({
    Name = "Outline Only", CurrentValue = false, Flag = "ChamsOutlineOnly",
    Callback = function(v)
        Settings.ChamsOutlineOnly = v
    end
})

ESPTab:CreateSlider({
    Name = "Fill Transparency", Range = {0, 9}, Increment = 1,
    Suffix = "", CurrentValue = 5, Flag = "ChamsFillTransparency",
    Callback = function(v)
        Settings.ChamsFillTransparency = v / 10
    end
})

ESPTab:CreateColorPicker({
    Name = "Enemy Color", Color = Color3.fromRGB(255, 60, 60),
    Flag = "ChamsEnemyColor",
    Callback = function(v) Settings.ChamsEnemyColor = v end
})

ESPTab:CreateColorPicker({
    Name = "Team Color", Color = Color3.fromRGB(60, 160, 255),
    Flag = "ChamsTeamColor",
    Callback = function(v) Settings.ChamsTeamColor = v end
})

ESPTab:CreateColorPicker({
    Name = "Visible Color", Color = Color3.fromRGB(50, 255, 120),
    Flag = "ChamsVisibleColor",
    Callback = function(v) Settings.ChamsVisibleColor = v end
})

-- ========================
-- TAB: VISUALS
-- ========================
local VisualsTab = Window:CreateTab("Visuals", 4483362458)
VisualsTab:CreateSection("Weapon")

VisualsTab:CreateToggle({
    Name = "No Recoil", CurrentValue = false, Flag = "NoRecoil",
    Callback = function(v) Settings.NoRecoil = v end
})
VisualsTab:CreateToggle({
    Name = "No Spread", CurrentValue = false, Flag = "NoSpread",
    Callback = function(v) Settings.NoSpread = v end
})

VisualsTab:CreateSection("Movement")

VisualsTab:CreateToggle({
    Name = "BunnyHop", CurrentValue = false, Flag = "BHop",
    Callback = function(v) Settings.BHop = v end
})
VisualsTab:CreateToggle({
    Name = "Infinite Jump", CurrentValue = false, Flag = "InfiniteJump",
    Callback = function(v)
        Settings.InfiniteJump = v
        if v then
            UserInputService.JumpRequest:Connect(function()
                if Settings.InfiniteJump and LocalPlayer.Character then
                    local hum = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                    if hum then hum:ChangeState(Enum.HumanoidStateType.Jumping) end
                end
            end)
        end
    end
})
VisualsTab:CreateToggle({
    Name = "Fast Walk", CurrentValue = false, Flag = "FastWalk",
    Callback = function(v)
        Settings.FastWalk = v
        if LocalPlayer.Character then
            local hum = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            if hum then hum.WalkSpeed = v and Settings.WalkspeedValue or 16 end
        end
    end
})
VisualsTab:CreateSlider({
    Name = "Walk Speed", Range = {16, 100}, Increment = 1,
    Suffix = "", CurrentValue = 16, Flag = "WalkspeedValue",
    Callback = function(v)
        Settings.WalkspeedValue = v
        if Settings.FastWalk and LocalPlayer.Character then
            local hum = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            if hum then hum.WalkSpeed = v end
        end
    end
})

-- ========================
-- TAB: MISC
-- ========================
local MiscTab = Window:CreateTab("Misc", 4483362458)
MiscTab:CreateSection("Miscellaneous")

MiscTab:CreateToggle({
    Name = "FOV Changer", CurrentValue = false, Flag = "FOVChanger",
    Callback = function(v)
        Settings.FOVChanger = v
        if not v then Camera.FieldOfView = 70 end
    end
})
MiscTab:CreateSlider({
    Name = "FOV Value", Range = {40, 120}, Increment = 1,
    Suffix = "°", CurrentValue = 90, Flag = "FOVValue",
    Callback = function(v)
        Settings.FOVValue = v
        if Settings.FOVChanger then Camera.FieldOfView = v end
    end
})
MiscTab:CreateToggle({
    Name = "Third Person", CurrentValue = false, Flag = "ThirdPerson",
    Callback = function(v)
        Settings.ThirdPerson = v
        if LocalPlayer.Character then
            local hum = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            if hum then
                hum.CameraOffset = v and Vector3.new(0, 0, -6) or Vector3.new(0, 0, 0)
            end
        end
    end
})
MiscTab:CreateToggle({
    Name = "Spin Bot", CurrentValue = false, Flag = "SpinBot",
    Callback = function(v) Settings.SpinBot = v end
})
MiscTab:CreateSlider({
    Name = "Spin Speed", Range = {1, 20}, Increment = 1,
    Suffix = "", CurrentValue = 5, Flag = "SpinSpeed",
    Callback = function(v) Settings.SpinSpeed = v end
})
MiscTab:CreateButton({
    Name = "Rejoin Server",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer)
    end
})
MiscTab:CreateButton({
    Name = "Copy Server ID",
    Callback = function()
        setclipboard(tostring(game.JobId))
        Rayfield:Notify({
            Title = "Copied!", Content = "Server Job ID copied.", Duration = 3, Image = 4483362458
        })
    end
})

-- ========================
-- LOGIC: AIMBOT
-- ========================
local function GetClosestPlayer()
    local closestPlayer = nil
    local closestDist   = Settings.AimbotFOV
    local center        = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)

    for _, player in ipairs(Players:GetPlayers()) do
        if player == LocalPlayer then continue end
        if Settings.AimbotTeamCheck and player.Team == LocalPlayer.Team then continue end
        if not player.Character then continue end
        local part = player.Character:FindFirstChild(Settings.AimbotBone)
        if not part then continue end
        local hum = player.Character:FindFirstChildOfClass("Humanoid")
        if not hum or hum.Health <= 0 then continue end
        local sp, onScreen = Camera:WorldToViewportPoint(part.Position)
        if not onScreen then continue end
        local dist = (Vector2.new(sp.X, sp.Y) - center).Magnitude
        if dist < closestDist then
            closestDist   = dist
            closestPlayer = player
        end
    end
    return closestPlayer
end

-- ========================
-- LOGIC: ESP DRAWINGS
-- ========================
local ESPObjects = {}

local function CreateESPForPlayer(player)
    local t = {}

    -- Corner box: 4 corners x 2 lines = 8 lines
    t.Corners = {}
    for i = 1, 8 do
        local line = Drawing.new("Line")
        line.Visible = false
        line.Color = Settings.ESPColor
        line.Thickness = 1
        table.insert(t.Corners, line)
    end

    local nameLabel = Drawing.new("Text")
    nameLabel.Visible = false ; nameLabel.Color = Color3.fromRGB(255,255,255)
    nameLabel.Size = 14 ; nameLabel.Center = true ; nameLabel.Outline = true
    t.NameLabel = nameLabel

    local healthBar = Drawing.new("Square")
    healthBar.Visible = false ; healthBar.Color = Color3.fromRGB(0,255,0)
    healthBar.Thickness = 1 ; healthBar.Filled = true
    t.HealthBar = healthBar

    local tracer = Drawing.new("Line")
    tracer.Visible = false ; tracer.Color = Settings.ESPColor ; tracer.Thickness = 1
    t.Tracer = tracer

    ESPObjects[player] = t
end

local function RemoveESPForPlayer(player)
    if ESPObjects[player] then
        for _, line in pairs(ESPObjects[player].Corners or {}) do line:Remove() end
        for key, obj in pairs(ESPObjects[player]) do
            if key ~= "Corners" then obj:Remove() end
        end
        ESPObjects[player] = nil
    end
end

-- Init existing players
for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        CreateESPForPlayer(player)
        HookChamsForPlayer(player)
    end
end

Players.PlayerAdded:Connect(function(player)
    CreateESPForPlayer(player)
    HookChamsForPlayer(player)
end)

Players.PlayerRemoving:Connect(function(player)
    RemoveESPForPlayer(player)
    RemoveChams(player)
end)

-- ========================
-- MAIN RENDER LOOP
-- ========================
local spinAngle = 0

RunService.RenderStepped:Connect(function()
    -- FOV
    if Settings.FOVChanger then Camera.FieldOfView = Settings.FOVValue end

    -- SpinBot
    if Settings.SpinBot and LocalPlayer.Character then
        local hrp = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if hrp then
            spinAngle = spinAngle + Settings.SpinSpeed
            hrp.CFrame = CFrame.new(hrp.Position) * CFrame.Angles(0, math.rad(spinAngle), 0)
        end
    end

    -- Aimbot
    if Settings.AimbotEnabled and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
        local target = GetClosestPlayer()
        if target and target.Character then
            local bone = target.Character:FindFirstChild(Settings.AimbotBone)
            if bone then
                local tp  = Camera:WorldToViewportPoint(bone.Position)
                local ctr = Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2)
                local sm  = Vector2.new(
                    ctr.X + (tp.X - ctr.X) * Settings.AimbotSmoothing,
                    ctr.Y + (tp.Y - ctr.Y) * Settings.AimbotSmoothing
                )
                mousemoverel(sm.X - ctr.X, sm.Y - ctr.Y)
            end
        end
    end

    -- BHop
    if Settings.BHop and LocalPlayer.Character then
        local hum = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if hum and hum:GetState() == Enum.HumanoidStateType.Landed then
            hum:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end

    -- ESP update
    for _, player in ipairs(Players:GetPlayers()) do
        if player == LocalPlayer then continue end
        local esp = ESPObjects[player]
        if not esp then continue end

        local char    = player.Character
        local hrp     = char and char:FindFirstChild("HumanoidRootPart")
        local hum     = char and char:FindFirstChildOfClass("Humanoid")
        local isEnemy = not Settings.ESPTeamCheck or (player.Team ~= LocalPlayer.Team)
        local isAlive = hum and hum.Health > 0

        if not Settings.ESPEnabled or not char or not hrp or not isAlive or not isEnemy then
            for _, line in pairs(esp.Corners) do line.Visible = false end
            esp.NameLabel.Visible = false
            esp.HealthBar.Visible = false
            esp.Tracer.Visible    = false
            continue
        end

        local rootPos, onScreen = Camera:WorldToViewportPoint(hrp.Position)
        if not onScreen then
            for _, line in pairs(esp.Corners) do line.Visible = false end
            esp.NameLabel.Visible = false
            esp.HealthBar.Visible = false
            esp.Tracer.Visible    = false
            continue
        end

        -- Corner Box ESP
        if Settings.BoxESP then
            local headPos = Camera:WorldToViewportPoint(hrp.Position + Vector3.new(0, 3, 0))
            local feetPos = Camera:WorldToViewportPoint(hrp.Position - Vector3.new(0, 3, 0))
            local h  = math.abs(headPos.Y - feetPos.Y)
            local w  = h * 0.6
            local x  = rootPos.X - w / 2
            local y  = rootPos.Y - h / 2
            local cs = math.min(w, h) * 0.25  -- corner length = 25% of shortest side
            local col = Settings.ESPColor
            local corners = esp.Corners

            -- Top-left
            corners[1].From = Vector2.new(x, y)         ; corners[1].To = Vector2.new(x + cs, y)
            corners[2].From = Vector2.new(x, y)         ; corners[2].To = Vector2.new(x, y + cs)
            -- Top-right
            corners[3].From = Vector2.new(x + w, y)     ; corners[3].To = Vector2.new(x + w - cs, y)
            corners[4].From = Vector2.new(x + w, y)     ; corners[4].To = Vector2.new(x + w, y + cs)
            -- Bottom-left
            corners[5].From = Vector2.new(x, y + h)     ; corners[5].To = Vector2.new(x + cs, y + h)
            corners[6].From = Vector2.new(x, y + h)     ; corners[6].To = Vector2.new(x, y + h - cs)
            -- Bottom-right
            corners[7].From = Vector2.new(x + w, y + h) ; corners[7].To = Vector2.new(x + w - cs, y + h)
            corners[8].From = Vector2.new(x + w, y + h) ; corners[8].To = Vector2.new(x + w, y + h - cs)

            for _, line in ipairs(corners) do
                line.Visible = true
                line.Color   = col
            end
        else
            for _, line in ipairs(esp.Corners) do line.Visible = false end
        end

        -- Name / Distance
        if Settings.NameESP then
            local headPos = Camera:WorldToViewportPoint(hrp.Position + Vector3.new(0, 3.5, 0))
            local dist    = (hrp.Position - Camera.CFrame.Position).Magnitude
            local label   = player.Name
            if Settings.DistanceESP then label = label .. " [" .. math.floor(dist) .. "m]" end
            esp.NameLabel.Visible  = true
            esp.NameLabel.Text     = label
            esp.NameLabel.Position = Vector2.new(headPos.X, headPos.Y)
        else esp.NameLabel.Visible = false end

        -- Health bar
        if Settings.HealthESP then
            local headPos = Camera:WorldToViewportPoint(hrp.Position + Vector3.new(0, 3, 0))
            local feetPos = Camera:WorldToViewportPoint(hrp.Position - Vector3.new(0, 3, 0))
            local h       = math.abs(headPos.Y - feetPos.Y)
            local pct     = hum.Health / hum.MaxHealth
            local boxW    = h * 0.6
            esp.HealthBar.Visible  = true
            esp.HealthBar.Size     = Vector2.new(4, h * pct)
            esp.HealthBar.Position = Vector2.new(rootPos.X - boxW/2 - 6, rootPos.Y + h/2 - h*pct)
            esp.HealthBar.Color    = Color3.fromRGB(255 - 255*pct, 255*pct, 0)
        else esp.HealthBar.Visible = false end

        -- Tracer
        if Settings.TracerESP then
            esp.Tracer.Visible = true
            esp.Tracer.Color   = Settings.ESPColor
            esp.Tracer.From    = Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y)
            esp.Tracer.To      = Vector2.new(rootPos.X, rootPos.Y)
        else esp.Tracer.Visible = false end
    end
end)

-- ========================
-- WEAPON PATCHES
-- ========================
local function ApplyWeaponPatches()
    if not LocalPlayer.Character then return end
    for _, tool in ipairs(LocalPlayer.Character:GetChildren()) do
        if tool:IsA("Tool") then
            for _, v in ipairs(tool:GetDescendants()) do
                if v:IsA("NumberValue") then
                    if Settings.NoRecoil and v.Name:lower():find("recoil") then v.Value = 0 end
                    if Settings.NoSpread and v.Name:lower():find("spread") then v.Value = 0 end
                end
            end
        end
    end
end

LocalPlayer.CharacterAdded:Connect(function(char)
    char.ChildAdded:Connect(function(child)
        if child:IsA("Tool") then task.wait(0.1) ApplyWeaponPatches() end
    end)
    local hum = char:WaitForChild("Humanoid")
    if Settings.FastWalk then hum.WalkSpeed = Settings.WalkspeedValue end
end)

-- ========================
-- INIT NOTIFY
-- ========================
Rayfield:Notify({
    Title   = "CB:S2 Hub Loaded",
    Content = "Welcome! Configure settings in each tab.",
    Duration = 5,
    Image   = 4483362458,
})