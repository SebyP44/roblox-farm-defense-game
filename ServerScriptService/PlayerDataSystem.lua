-- ============================================
-- PLAYER DATA SYSTEM - Sistem de Bani
-- Generează datele pentru fiecare jucător
-- ============================================

local Players = game:GetService("Players")

-- ============================================
-- CREEAZĂ FOLDER CU DATE JUCĂTOR
-- ============================================
local function createPlayerData(player)
    print("💾 Creez date pentru: " .. player.Name)
    
    -- Folder principal pentru date
    local playerData = Instance.new("Folder")
    playerData.Name = "PlayerData"
    playerData.Parent = player
    
    -- BANI
    local money = Instance.new("IntValue")
    money.Name = "Money"
    money.Value = 100  -- Bani inițiali
    money.Parent = playerData
    
    -- LEVEL
    local level = Instance.new("IntValue")
    level.Name = "Level"
    level.Value = 1
    level.Parent = playerData
    
    -- UPGRADES (pentru gard, turete, etc)
    local upgrades = Instance.new("Folder")
    upgrades.Name = "Upgrades"
    upgrades.Parent = playerData
    
    -- Gard Level
    local gardLevel = Instance.new("IntValue")
    gardLevel.Name = "GardLevel"
    gardLevel.Value = 1
    gardLevel.Parent = upgrades
    
    -- Turete
    local turretsCount = Instance.new("IntValue")
    turretsCount.Name = "TurretsCount"
    turretsCount.Value = 0
    turretsCount.Parent = upgrades
    
    -- Casa Level
    local houseLevel = Instance.new("IntValue")
    houseLevel.Name = "HouseLevel"
    houseLevel.Value = 1
    houseLevel.Parent = upgrades
    
    -- VIP Status
    local isVip = Instance.new("BoolValue")
    isVip.Name = "IsVIP"
    isVip.Value = false
    isVip.Parent = playerData
    
    -- Wins/Losses
    local wins = Instance.new("IntValue")
    wins.Name = "Wins"
    wins.Value = 0
    wins.Parent = playerData
    
    local losses = Instance.new("IntValue")
    losses.Name = "Losses"
    losses.Value = 0
    losses.Parent = playerData
    
    print("✅ Date create pentru: " .. player.Name)
end

-- ============================================
-- SALVEAZĂ DATELE (OPTIONAL - cu DataStore)
-- ============================================
local function savePlayerData(player)
    -- Asta e pentru salvare în viitor cu DataStore
    print("💾 Salvez date pentru: " .. player.Name)
    -- Implementare în viitor
end

-- ============================================
-- ȘTERGE DATELE CÂND JUCĂTORUL PLEACĂ
-- ============================================
local function removePlayerData(player)
    print("👋 Jucător plecat: " .. player.Name)
    savePlayerData(player)  -- Salvează înainte de ștergere
end

-- ============================================
-- EVENTS
-- ============================================

-- Când un jucător se conectează
Players.PlayerAdded:Connect(function(player)
    print("🎮 Jucător conectat: " .. player.Name)
    createPlayerData(player)
end)

-- Când un jucător se deconectează
Players.PlayerRemoving:Connect(function(player)
    print("🚪 Jucător deconectat: " .. player.Name)
    removePlayerData(player)
end)

print("✅ Player Data System încărcat!")
