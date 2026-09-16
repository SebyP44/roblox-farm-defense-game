-- ============================================
-- LOBBY GUI - Interfață pe ecran
-- Afișează bani, butoane, etc
-- ============================================

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local playerData = player:WaitForChild("PlayerData")
local money = playerData:WaitForChild("Money")
local isVip = playerData:WaitForChild("IsVIP")

-- ============================================
-- CREEAZĂ SCREEN GUI PRINCIPAL
-- ============================================
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "LobbyGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- ============================================
-- 1. DISPLAY BANI (TOP LEFT)
-- ============================================
local moneyLabel = Instance.new("TextLabel")
moneyLabel.Name = "MoneyLabel"
moneyLabel.Size = UDim2.new(0, 300, 0, 60)
moneyLabel.Position = UDim2.new(0, 20, 0, 20)
moneyLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
moneyLabel.BackgroundTransparency = 0.3
moneyLabel.BorderSizePixel = 0
moneyLabel.TextColor3 = Color3.fromRGB(255, 215, 0)  -- Auriu
moneyLabel.TextSize = 28
moneyLabel.Font = Enum.Font.GothamBold
moneyLabel.Text = "💰 Bani: " .. money.Value
moneyLabel.Parent = screenGui

-- Corner pentru design frumos
local moneyCorner = Instance.new("UICorner")
moneyCorner.CornerRadius = UDim.new(0, 10)
moneyCorner.Parent = moneyLabel

-- ============================================
-- 2. DISPLAY LEVEL (TOP LEFT, SUB)
-- ============================================
local levelLabel = Instance.new("TextLabel")
levelLabel.Name = "LevelLabel"
levelLabel.Size = UDim2.new(0, 300, 0, 50)
levelLabel.Position = UDim2.new(0, 20, 0, 90)
levelLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
levelLabel.BackgroundTransparency = 0.3
levelLabel.BorderSizePixel = 0
levelLabel.TextColor3 = Color3.fromRGB(100, 255, 100)  -- Verde
levelLabel.TextSize = 22
levelLabel.Font = Enum.Font.GothamBold
levelLabel.Text = "📊 Level: 1"
levelLabel.Parent = screenGui

local levelCorner = Instance.new("UICorner")
levelCorner.CornerRadius = UDim.new(0, 10)
levelCorner.Parent = levelLabel

-- ============================================
-- 3. DISPLAY VIP STATUS (TOP RIGHT)
-- ============================================
local vipLabel = Instance.new("TextLabel")
vipLabel.Name = "VipLabel"
vipLabel.Size = UDim2.new(0, 200, 0, 50)
vipLabel.Position = UDim2.new(1, -220, 0, 20)
vipLabel.BackgroundColor3 = Color3.fromRGB(255, 215, 0)  -- Auriu
vipLabel.BackgroundTransparency = 0.2
vipLabel.BorderSizePixel = 0
vipLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
vipLabel.TextSize = 20
vipLabel.Font = Enum.Font.GothamBold
vipLabel.Text = "👑 Status: Regular"
vipLabel.Parent = screenGui

local vipCorner = Instance.new("UICorner")
vipCorner.CornerRadius = UDim.new(0, 10)
vipCorner.Parent = vipLabel

-- ============================================
-- 4. BUTON PENTRU UPGRADES (STÂNGA JOS)
-- ============================================
local upgradeButton = Instance.new("TextButton")
upgradeButton.Name = "UpgradeButton"
upgradeButton.Size = UDim2.new(0, 200, 0, 50)
upgradeButton.Position = UDim2.new(0, 20, 1, -80)
upgradeButton.BackgroundColor3 = Color3.fromRGB(255, 100, 100)  -- Roșu
upgradeButton.BorderSizePixel = 0
upgradeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
upgradeButton.TextSize = 18
upgradeButton.Font = Enum.Font.GothamBold
upgradeButton.Text = "🔧 Upgrade Gard (50)"
upgradeButton.Parent = screenGui

local upgradeCorner = Instance.new("UICorner")
upgradeCorner.CornerRadius = UDim.new(0, 10)
upgradeCorner.Parent = upgradeButton

-- ============================================
-- 5. BUTON PENTRU SHOP (CENTRU JOS)
-- ============================================
local shopButton = Instance.new("TextButton")
shopButton.Name = "ShopButton"
shopButton.Size = UDim2.new(0, 200, 0, 50)
shopButton.Position = UDim2.new(0.5, -100, 1, -80)
shopButton.BackgroundColor3 = Color3.fromRGB(100, 150, 255)  -- Albastru
shopButton.BorderSizePixel = 0
shopButton.TextColor3 = Color3.fromRGB(255, 255, 255)
shopButton.TextSize = 18
shopButton.Font = Enum.Font.GothamBold
shopButton.Text = "🛒 Shop"
shopButton.Parent = screenGui

local shopCorner = Instance.new("UICorner")
shopCorner.CornerRadius = UDim.new(0, 10)
shopCorner.Parent = shopButton

-- ============================================
-- 6. BUTON PENTRU DISCONNECT (DREAPTA JOS)
-- ============================================
local exitButton = Instance.new("TextButton")
exitButton.Name = "ExitButton"
exitButton.Size = UDim2.new(0, 150, 0, 50)
exitButton.Position = UDim2.new(1, -170, 1, -80)
exitButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)  -- Gri
exitButton.BorderSizePixel = 0
exitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
exitButton.TextSize = 18
exitButton.Font = Enum.Font.GothamBold
exitButton.Text = "🚪 Ieșire"
exitButton.Parent = screenGui

local exitCorner = Instance.new("UICorner")
exitCorner.CornerRadius = UDim.new(0, 10)
exitCorner.Parent = exitButton

-- ============================================
-- ACTUALIZEAZĂ BANI PE ECRAN
-- ============================================
money.Changed:Connect(function()
    moneyLabel.Text = "💰 Bani: " .. money.Value
end)

-- Actualizează VIP Status
isVip.Changed:Connect(function()
    if isVip.Value then
        vipLabel.Text = "👑 Status: VIP"
        vipLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 255)  -- Magenta
    else
        vipLabel.Text = "👑 Status: Regular"
        vipLabel.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
    end
end)

-- ============================================
-- FUNCȚII PENTRU BUTOANE
-- ============================================

-- Upgrade Gard
upgradeButton.MouseButton1Click:Connect(function()
    local upgradeCost = 50
    
    if money.Value >= upgradeCost then
        money.Value = money.Value - upgradeCost
        upgradeButton.Text = "✅ Gard Upgraded!"
        upgradeButton.BackgroundColor3 = Color3.fromRGB(100, 255, 100)
        
        -- Animație de revenire
        wait(1)
        upgradeButton.Text = "🔧 Upgrade Gard (50)"
        upgradeButton.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
    else
        -- Animație de eroare
        upgradeButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
        upgradeButton.Text = "❌ Bani insuficienți!"
        wait(1)
        upgradeButton.Text = "🔧 Upgrade Gard (50)"
        upgradeButton.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
    end
end)

-- Shop Button
shopButton.MouseButton1Click:Connect(function()
    print("📖 Shop deschis!")
    shopButton.BackgroundColor3 = Color3.fromRGB(50, 100, 200)
    wait(0.3)
    shopButton.BackgroundColor3 = Color3.fromRGB(100, 150, 255)
end)

-- Exit Button
exitButton.MouseButton1Click:Connect(function()
    print("👋 Jucător iese din joc...")
    game:GetService("TeleportService"):Teleport(game.PlaceId, player)
end)

-- Hover Effects (mouse enter/exit)
local function onMouseEnter(button)
    button.MouseEnter:Connect(function()
        button.BackgroundTransparency = 0.1
    end)
    button.MouseLeave:Connect(function()
        button.BackgroundTransparency = 0
    end)
end

onMouseEnter(upgradeButton)
onMouseEnter(shopButton)
onMouseEnter(exitButton)

print("✅ Lobby GUI încărcat!")
