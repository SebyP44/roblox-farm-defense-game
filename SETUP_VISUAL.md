// ============================================
// SETUP INSTRUCTIONS - VIDEO & VISUAL GUIDE
// Pentru Roblox Studio 0.739.0.7390687
// ============================================

# 🎬 INSTRUCTIUNI VIDEO ȘI VIZUALE

## 📺 Video Tutorial Steps

### Video 1: Instalare Roblox Studio
**Durata:** 5 minute
```
1. Accesează https://www.roblox.com/create
2. Click "Start Creating"
3. Descarcă Roblox Studio (versiunea 0.739.0.7390687)
4. Rulează instalatorul
5. Conectează-te cu cont Roblox
```

### Video 2: Crearea Proiectului și Setup
**Durata:** 10 minute
```
1. Deschide Roblox Studio
2. File → New → Baseplate
3. Click Create
4. File → Save As → FarmDefenseGame
5. Șterge Baseplate-ul (click dreapta → Delete)
```

### Video 3: Implementare LobbyGenerator
**Durata:** 15 minute
```
1. Click dreapta pe ServerScriptService
2. Insert Object → Script
3. Copiază codul din GitHub
4. Rename la "LobbyGenerator"
5. Salvează (Ctrl+S)
6. Click Play și observă Output
```

### Video 4: Implementare PlayerDataSystem
**Durata:** 10 minute
```
1. Click dreapta pe ServerScriptService
2. Insert Object → Script
3. Copiază codul PlayerDataSystem
4. Rename la "PlayerDataSystem"
5. Salvează și testează
```

### Video 5: Implementare GUI
**Durata:** 12 minute
```
1. Click dreapta pe StarterGui
2. Insert Object → LocalScript (IMPORTANT!)
3. Copiază codul LobbyGui
4. Rename la "LobbyGui"
5. Testează Play și observă GUI
```

---

## 🎨 DIAGRAME VIZUALE

### Diagrama 1: Structura Directorilor în GitHub

```
roblox-farm-defense-game/
├── README.md (cu instrucțiuni detaliate)
├── SETUP_VISUAL.md (fișierul ăsta)
├── ServerScriptService/
│   ├── LobbyGenerator.lua (creează harta)
│   └── PlayerDataSystem.lua (bani & date)
├── StarterGui/
│   └── LobbyGui.lua (interfață pe ecran)
└── Documentation/
    └── Architecture.md (diagramă sistem)
```

### Diagrama 2: Flow-ul Jocului

```
┌─────────────────────────────────────────┐
│     JUCĂTOR INTRĂ ÎN JOC                │
└─────────────────┬───────────────────────┘
                  │
                  ▼
┌─────────────────────────────────────────┐
│  LOBBY GENERATOR crea harta automat     │
│  - Platformă verde                      │
│  - Spawn point galben                   │
│  - Zone de shop/upgrades/crates/vip     │
│  - Copaci, hambar, garduri              │
└─────────────────┬───────────────────────┘
                  │
                  ▼
┌─────────────────────────────────────────┐
│  PLAYER DATA SYSTEM creează folder      │
│  jucător cu:                            │
│  - 💰 Money: 100                        │
│  - 📊 Level: 1                          │
│  - 👑 IsVIP: false                      │
│  - 🔧 Upgrades folder                   │
└─────────────────┬───────────────────────┘
                  │
                  ▼
┌─────────────────────────────────────────┐
│  LOBBY GUI apare pe ecran cu:           │
│  - Bani display (top-left)              │
│  - Buton Upgrade (bottom-left)          │
│  - Buton Shop (bottom-center)           │
│  - Buton Ieșire (bottom-right)          │
└─────────────────┬───────────────────────┘
                  │
                  ▼
┌─────────────────────────────────────────┐
│  JUCĂTOR INTERACȚIONEAZĂ                │
│  - Click Upgrade → Bani scad            │
│  - Click Shop → Deschide shop           │
│  - Click Ieșire → Pleacă din joc        │
└─────────────────────────────────────────┘
```

### Diagrama 3: Harta Lobby-ului (Top View)

```
                NORD
           ┌─────────┐
           │ Garduri │
           └────┬────┘
    ┌──────────────────────────┐
    │ COPACI   COPACI   COPACI │
    │                          │
    │  SHOP   [Harta]  UPGRADES│
    │  Cyan          Orange    │
    │                          │
    │ [Spawn]                  │
    │ Galben                   │
    │                          │
    │  CRATES        VIP       │
    │  Magenta       Auriu     │
    │                          │
    │  SOLO   DUO   SQUAD      │
    │  Verde  Galben  Roșu     │
    │                          │
    │            HAMBAR        │
    │            Roșu          │
    │                          │
    └──────────────────────────┘
           ┌────┬────┐
           │ Garduri │
           └─────────┘
                SUD
```

### Diagrama 4: Interfața GUI pe Ecran

```
┌────────────────────────────────────────────────────────────┐
│ 💰 Bani: 100          [desktop 1920x1080]        👑 Status │
│ 📊 Level: 1                                    Regular      │
│                                                             │
│                                                             │
│                                                             │
│                        [JOCUL]                             │
│                    Harta Lobby-ului                         │
│                        Vizuală                              │
│                                                             │
│                                                             │
│                                                             │
│ ┌─────────────┐  ┌──────────┐  ┌────────────┐              │
│ │🔧 Upgrade   │  │🛒 Shop   │  │🚪 Ieșire   │              │
│ │Gard (50)    │  │          │  │            │              │
│ └─────────────┘  └──────────┘  └────────────┘              │
└────────────────────────────────────────────────────────────┘
```

---

## 🔧 HACKS & TRICKS

### Hack 1: Rapidă Copy-Paste din GitHub

**Pasul 1:** Accesează GitHub
```
https://github.com/SebyP44/roblox-farm-defense-game
```

**Pasul 2:** Mergi la fișierul .lua
```
Exemplu: ServerScriptService/LobbyGenerator.lua
```

**Pasul 3:** Click pe butonul "Copy raw contents"
```
Raw button (dreapta sus) → Selectează tot → Ctrl+C
```

**Pasul 4:** Lipește în Roblox Studio
```
Ctrl+V în scriptul gol
```

### Hack 2: Debug Mode (Output)

Pentru a vedea mesaje în timp real:
```
View → Output (Ctrl+Shift+O)
```

**Mesaje importante:**
```
🎮 Inițializez Lobby-ul... = Script pornit
✅ ... = Faze completate
❌ ... = Erori
```

### Hack 3: Salvare Rapid
```
Ctrl+S = Salvare imediată
```

Fă asta după fiecare schimbare importantă!

### Hack 4: Play/Stop Rapid
```
F5 = Play
Shift+F5 = Stop
Ctrl+Shift+S = Save and Play
```

---

## ⚙️ SETĂRI ROBLOX STUDIO

### Setare 1: Output Automat
**File → Settings:**
```
Studio → General
☑ Show Output Window on script errors
☑ Auto-save is enabled
```

### Setare 2: Font pentru Code
**File → Settings:**
```
Studio → Editor Font
Font: Inconsolata
Size: 14 px (recomandare)
```

### Setare 3: Theme Dark Mode
**File → Settings:**
```
Studio → Theme
Theme: Dark
(mai ușor pentru ochi)
```

---

## 🐛 COMMON ERRORS ȘI FIX-URI

### Error 1: "Players is not a valid member of DataModel"
```
❌ CAUZA: LocalScript în ServerScriptService
✅ FIX: Script trebuie să fie în ServerScriptService (nu LocalScript)
```

### Error 2: "player:WaitForChild(PlayerGui) is not a valid member of Player"
```
❌ CAUZA: Script este Server, dar trebui Client
✅ FIX: LocalScript trebuie în StarterGui (nu Script)
```

### Error 3: "Cannot find module PlayerDataSystem"
```
❌ CAUZA: Script nu este pornit
✅ FIX: Verifică că PlayerDataSystem e în ServerScriptService
```

### Error 4: GUI-ul nu apare
```
❌ CAUZA: LocalScript nu este în StarterGui
✅ FIX: Mută LocalScript-ul în StarterGui
```

### Error 5: "nil value" la money.Changed
```
❌ CAUZA: PlayerDataSystem nu a creat Money
✅ FIX: Asigură-te că PlayerDataSystem rulează înaintea GUI
```

---

## ✅ TESTING CHECKLIST

După fiecare implementare, testează:

### Test 1: Harta (LobbyGenerator)
- [ ] Platformă verde apare
- [ ] Spawn point galben în mijloc
- [ ] 4 zone colorate (shop, upgrades, crates, vip)
- [ ] 3 game mode zones (solo, duo, squad)
- [ ] Copaci pe margini (6 copaci)
- [ ] Hambar pe margine
- [ ] 4 garduri pe laturi
- [ ] Flori colorate
- [ ] Output arată "✅ LOBBY GATA!"

### Test 2: Bani (PlayerDataSystem)
- [ ] Output arată "✅ Player Data System încărcat!"
- [ ] Output arată "🎮 Jucător conectat: [Nume]"
- [ ] Output arată "💾 Creez date pentru: [Nume]"
- [ ] Output arată "✅ Date create pentru: [Nume]"

### Test 3: GUI (LobbyGui)
- [ ] "💰 Bani: 100" apare top-left
- [ ] "📊 Level: 1" apare sub bani
- [ ] "👑 Status: Regular" apare top-right
- [ ] "🔧 Upgrade Gard (50)" buton funcționează
- [ ] "🛒 Shop" buton apare
- [ ] "🚪 Ieșire" buton apare
- [ ] Click pe Upgrade scade banii la 50
- [ ] Click din nou arată "❌ Bani insuficienți!"

---

## 📱 COMANDA KEYBOARD SHORTCUTS

| Shortcut | Funcție |
|----------|---------|
| Ctrl+S | Salvează |
| Ctrl+Z | Undo |
| Ctrl+Y | Redo |
| Ctrl+A | Select All |
| Ctrl+C | Copy |
| Ctrl+V | Paste |
| Ctrl+D | Duplicate |
| Delete | Șterge obiect |
| F5 | Play |
| Shift+F5 | Stop |
| Ctrl+Shift+O | Output |
| Ctrl+Shift+E | Explorer |
| Ctrl+Shift+P | Properties |

---

## 🎓 LEARNING RESOURCES

### Resurse Oficiale Roblox
- https://create.roblox.com/docs
- https://developer.roblox.com/en-us/api-reference/

### Scripting Lua
- https://www.lua.org/manual/5.1/
- https://create.roblox.com/docs/scripting/lua

### Community
- https://devforum.roblox.com/
- https://www.roblox.com/groups/search

---

## 🎯 NEXT STEPS DUPĂ LOBBY

După ce terminați Lobby-ul:

### Fase următoare:
1. **Game Modes Implementation** - Solo/Duo/Squad
2. **Zombie Waves System** - Valuri de zombi
3. **Farm System** - Fiecare jucător are propria fermă
4. **Tower Defense** - Turele de apărare
5. **Shop System** - Cumpărare obiecte
6. **Leaderboard** - Clasament jucători
7. **Rewards System** - Premii pentru victorii

---

## 📞 QUICK SUPPORT

Dacă ceva nu merge:

1. **Deschide Output:** Ctrl+Shift+O
2. **Citește mesajul de eroare**
3. **Google eroarea** + "Roblox"
4. **Verifică GitHub repo** pentru cod actualizat
5. **Relanșează jocul:** Stop → Play

---

**Versiune:** v1.0.0 - Setup Visual Guide
**Ultima actualizare:** 16.09.2026
**Status:** ✅ Complete și tested pe Roblox Studio 0.739.0.7390687
