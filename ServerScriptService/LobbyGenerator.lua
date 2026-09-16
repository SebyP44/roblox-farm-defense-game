-- ============================================
-- LOBBY GENERATOR - Main Script
-- Generează harta lobby-ului automat
-- ============================================

local workspace = game.Workspace
local LOBBY_SIZE = 100
local SPAWN_HEIGHT = 5

-- ============================================
-- 1. HELPER FUNCTIONS
-- ============================================
local function createMainPlatform()
    local platform = Instance.new("Part")
    platform.Name = "LobbyPlatform"
    platform.Size = Vector3.new(LOBBY_SIZE, 1, LOBBY_SIZE)
    platform.Position = Vector3.new(0, 0, 0)
    platform.BrickColor = BrickColor.new("Dark green")
    platform.Material = Enum.Material.Grass
    platform.CanCollide = true
    platform.TopSurface = Enum.SurfaceType.Smooth
    platform.BottomSurface = Enum.SurfaceType.Smooth
    platform.Parent = workspace

    return platform
end

local function createSpawnPoint()
    local spawn = Instance.new("SpawnLocation")
    spawn.Name = "LobbySpawn"
    spawn.Size = Vector3.new(10, 1, 10)
    spawn.Position = Vector3.new(0, SPAWN_HEIGHT, 0)
    spawn.BrickColor = BrickColor.new("Bright yellow")
    spawn.CanCollide = true
    spawn.TopSurface = Enum.SurfaceType.Smooth
    spawn.BottomSurface = Enum.SurfaceType.Smooth
    spawn.CanTouch = true
    spawn.Duration = 0
    spawn.Parent = workspace

    return spawn
end

local function createZone(name, position, color, signText)
    -- Platformă zonei
    local zonePlatform = Instance.new("Part")
    zonePlatform.Name = name .. "Platform"
    zonePlatform.Size = Vector3.new(20, 0.5, 20)
    zonePlatform.Position = position
    zonePlatform.BrickColor = BrickColor.new(color)
    zonePlatform.Material = Enum.Material.Wood
    zonePlatform.CanCollide = true
    zonePlatform.TopSurface = Enum.SurfaceType.Smooth
    zonePlatform.BottomSurface = Enum.SurfaceType.Smooth
    zonePlatform.Parent = workspace

    -- Sign deasupra
    local sign = Instance.new("Part")
    sign.Name = name .. "Sign"
    sign.Size = Vector3.new(15, 3, 1)
    sign.Position = position + Vector3.new(0, 4, 0)
    sign.BrickColor = BrickColor.new("Dark stone grey")
    sign.Material = Enum.Material.Wood
    sign.CanCollide = false
    sign.TopSurface = Enum.SurfaceType.Smooth
    sign.BottomSurface = Enum.SurfaceType.Smooth
    sign.Parent = workspace

    -- Text pe sign
    local textLabel = Instance.new("SurfaceGui")
    textLabel.Face = Enum.NormalId.Front
    textLabel.Parent = sign

    local text = Instance.new("TextLabel")
    text.Name = "SignText"
    text.Size = UDim2.new(1, 0, 1, 0)
    text.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    text.TextColor3 = Color3.fromRGB(255, 255, 255)
    text.TextSize = 30
    text.Font = Enum.Font.GothamBold
    text.Text = signText
    text.Parent = textLabel

    return zonePlatform, sign
end

local function createGameModeZone(name, position, color, signText)
    local platform = Instance.new("Part")
    platform.Name = name .. "GameMode"
    platform.Size = Vector3.new(12, 0.5, 12)
    platform.Position = position
    platform.BrickColor = BrickColor.new(color)
    platform.Material = Enum.Material.Neon
    platform.CanCollide = true
    platform.TopSurface = Enum.SurfaceType.Smooth
    platform.BottomSurface = Enum.SurfaceType.Smooth
    platform.Parent = workspace

    -- Sign
    local sign = Instance.new("Part")
    sign.Name = name .. "Sign"
    sign.Size = Vector3.new(10, 2, 1)
    sign.Position = position + Vector3.new(0, 3, 0)
    sign.BrickColor = BrickColor.new("Dark stone grey")
    sign.Material = Enum.Material.Wood
    sign.CanCollide = false
    sign.Parent = workspace

    -- Text
    local textLabel = Instance.new("SurfaceGui")
    textLabel.Face = Enum.NormalId.Front
    textLabel.Parent = sign

    local text = Instance.new("TextLabel")
    text.Size = UDim2.new(1, 0, 1, 0)
    text.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    text.TextColor3 = Color3.fromRGB(255, 255, 255)
    text.TextSize = 24
    text.Font = Enum.Font.GothamBold
    text.Text = signText
    text.Parent = textLabel
end

-- ============================================
-- 2. DECOR FUNCTIONS
-- ============================================
local function createBarn(parent)
    local barn = Instance.new("Part")
    barn.Name = "Barn"
    barn.Size = Vector3.new(20, 15, 15)
    barn.Position = Vector3.new(35, 8, -35)
    barn.BrickColor = BrickColor.new("Reddish brown")
    barn.Material = Enum.Material.Wood
    barn.CanCollide = true
    barn.Parent = parent

    -- Acoperis (piramida)
    local roof = Instance.new("WedgePart")
    roof.Name = "BarnRoof"
    roof.Size = Vector3.new(20, 10, 15)
    roof.Position = Vector3.new(35, 18, -35)
    roof.BrickColor = BrickColor.new("Dark red")
    roof.Material = Enum.Material.Wood
    roof.CanCollide = true
    roof.Parent = parent

    -- Usa
    local door = Instance.new("Part")
    door.Name = "BarnDoor"
    door.Size = Vector3.new(8, 12, 1)
    door.Position = Vector3.new(35, 8, -42.5)
    door.BrickColor = BrickColor.new("Dark wood")
    door.Material = Enum.Material.Wood
    door.CanCollide = true
    door.Parent = parent
end

local function createFences(parent)
    local fenceHeight = 3
    local fenceThickness = 0.5

    -- 4 garduri (N, S, E, W)
    local fencePositions = {
        {Vector3.new(0, fenceHeight / 2, LOBBY_SIZE / 2 - 1), Vector3.new(LOBBY_SIZE, fenceHeight, fenceThickness)}, -- Nord
        {Vector3.new(0, fenceHeight / 2, -LOBBY_SIZE / 2 + 1), Vector3.new(LOBBY_SIZE, fenceHeight, fenceThickness)}, -- Sud
        {Vector3.new(LOBBY_SIZE / 2 - 1, fenceHeight / 2, 0), Vector3.new(fenceThickness, fenceHeight, LOBBY_SIZE)}, -- Est
        {Vector3.new(-LOBBY_SIZE / 2 + 1, fenceHeight / 2, 0), Vector3.new(fenceThickness, fenceHeight, LOBBY_SIZE)}, -- Vest
    }

    for i, data in ipairs(fencePositions) do
        local fence = Instance.new("Part")
        fence.Name = "Fence_" .. i
        fence.Size = data[2]
        fence.Position = data[1]
        fence.BrickColor = BrickColor.new("Reddish brown")
        fence.Material = Enum.Material.Wood
        fence.CanCollide = true
        fence.Parent = parent
    end
end

local function createTrees(parent)
    local treePositions = {
        Vector3.new(-40, 0, -40),
        Vector3.new(40, 0, -40),
        Vector3.new(-40, 0, 40),
        Vector3.new(40, 0, 40),
        Vector3.new(-35, 0, 0),
        Vector3.new(35, 0, 0),
    }

    for i, pos in ipairs(treePositions) do
        -- Trunchi
        local trunk = Instance.new("Part")
        trunk.Name = "TreeTrunk_" .. i
        trunk.Shape = Enum.PartType.Cylinder
        trunk.Size = Vector3.new(2, 8, 2)
        trunk.Position = pos + Vector3.new(0, 4, 0)
        trunk.BrickColor = BrickColor.new("Brown")
        trunk.Material = Enum.Material.Wood
        trunk.CanCollide = true
        trunk.Rotation = Vector3.new(90, 0, 0)
        trunk.Parent = parent

        -- Coroană (sferă)
        local crown = Instance.new("Part")
        crown.Name = "TreeCrown_" .. i
        crown.Shape = Enum.PartType.Ball
        crown.Size = Vector3.new(10, 10, 10)
        crown.Position = pos + Vector3.new(0, 12, 0)
        crown.BrickColor = BrickColor.new("Dark green")
        crown.Material = Enum.Material.Grass
        crown.CanCollide = true
        crown.Parent = parent
    end
end

local function createFlowers(parent)
    local flowerPositions = {
        Vector3.new(-20, 0.5, -20),
        Vector3.new(20, 0.5, -20),
        Vector3.new(-20, 0.5, 20),
        Vector3.new(20, 0.5, 20),
        Vector3.new(0, 0.5, -25),
        Vector3.new(0, 0.5, 25),
    }

    local colors = {
        BrickColor.new("Bright red"),
        BrickColor.new("Bright yellow"),
        BrickColor.new("Magenta"),
        BrickColor.new("Cyan"),
    }

    for i, pos in ipairs(flowerPositions) do
        local flower = Instance.new("Part")
        flower.Name = "Flower_" .. i
        flower.Size = Vector3.new(1, 2, 1)
        flower.Position = pos
        flower.BrickColor = colors[(i % #colors) + 1]
        flower.Material = Enum.Material.Neon
        flower.CanCollide = false
        flower.Parent = parent
    end
end

-- ============================================
-- 3. MAIN ZONE FUNCTIONS
-- ============================================
local function createGameZones()
    -- SHOP
    createZone("Shop", Vector3.new(-35, SPAWN_HEIGHT, 35), "Cyan", "SHOP")

    -- UPGRADES
    createZone("Upgrades", Vector3.new(35, SPAWN_HEIGHT, 35), "Orange", "UPGRADES")

    -- CRATES
    createZone("Crates", Vector3.new(-35, SPAWN_HEIGHT, -35), "Magenta", "CRATES")

    -- ZONE VIP
    createZone("VIP", Vector3.new(35, SPAWN_HEIGHT, -35), "Bright yellow", "VIP ZONE")

    -- GAME MODES (3 platforme)
    createGameModeZone("Solo", Vector3.new(-15, SPAWN_HEIGHT, -15), "Bright green", "SOLO")
    createGameModeZone("Duo", Vector3.new(0, SPAWN_HEIGHT, -15), "Bright yellow", "DUO")
    createGameModeZone("Squad", Vector3.new(15, SPAWN_HEIGHT, -15), "Bright red", "SQUAD")
end

local function createDecor()
    local decorFolder = Instance.new("Folder")
    decorFolder.Name = "Decorations"
    decorFolder.Parent = workspace

    -- HAMBAR
    createBarn(decorFolder)

    -- GARDURI
    createFences(decorFolder)

    -- COPACI
    createTrees(decorFolder)

    -- FLORI
    createFlowers(decorFolder)
end

-- ============================================
-- 4. INITIALIZE
-- ============================================
local function initializeLobby()
    print("🎮 Inițializez Lobby-ul...")

    createMainPlatform()
    print("✅ Platformă principală creată")

    createSpawnPoint()
    print("✅ Spawn point creat")

    createGameZones()
    print("✅ Zone de joc create")

    createDecor()
    print("✅ Decorații create")

    print("✅ LOBBY GATA!")
end

-- Rulează când serverul pornește
initializeLobby()
