# ❓ FAQ - Întrebări Frecvente

## 🎮 DESPRE JOC

### P: Ce e jocul asta?
**R:** Un joc Roblox unde jucători se apără de zombi noaptea și construiesc ferme ziua. Similar cu tower defense + farming simulator + survival.

### P: Cât timp durează un meci?
**R:** ~25-30 minute: 15 min ziua (construire), 10-15 min noaptea (supraviețuire).

### P: Câți jucători pot juca simultan?
**R:** Maxim 20 în lobby. Apoi se pot alege mode-uri: Solo (1), Duo (2), Squad (4+).

### P: E jocul grat sau cu bani reali?
**R:** Gratuit! Banii sunt virtuali, doar în joc. (Crates se pot cumpăra cu Robux - opțional)

### P: Pot juca singur?
**R:** Da! Mode-ul Solo e doar pentru tine vs. zombi.

---

## 🛠️ SETUP & INSTALARE

### P: Unde download Roblox Studio?
**R:** https://www.roblox.com/create → "Start Creating" → "Download Roblox Studio"

### P: Care e versiunea recomandată?
**R:** 0.739.0.7390687 (sau mai nouă - ar trebui să meargă)

### P: Am Roblox Studio dar nu merge?
**R:** 
1. Deschide Output (Ctrl+Shift+O)
2. Citește eroarea roșie
3. Verifică dacă ai copiat codul corect din GitHub

### P: De ce nu apare Lobby-ul?
**R:** Probabil că:
- Baseplate-ul nu a fost șters
- LobbyGenerator nu e în ServerScriptService
- Click Play din nou

### P: GUI-ul nu apare pe ecran
**R:** 
- Verifică că LocalScript-ul e în **StarterGui**
- Asigură-te că e **LocalScript**, nu Script
- Salvează (Ctrl+S) și relanșează

### P: Script-uri cu erori roșii în Output
**R:**
1. Citește mesajul complet de eroare
2. Verifică linia care are eroare
3. Asigură-te că ai copiat codul integral din GitHub
4. Nu lăsa linii goale la început

### P: Cum salvez jocul?
**R:** File → Save As → Alege unde. Sau Ctrl+S pentru quick save.

---

## 💰 SISTEM DE BANI

### P: De unde vin banii inițiali?
**R:** Fiecare jucător primește 100 bani la început (configurat în PlayerDataSystem.lua)

### P: Cum schimb banii inițiali?
**R:** Deschide PlayerDataSystem.lua și schimbă:
```lua
money.Value = 100  -- Schimbă 100 cu valoarea dorită
```

### P: Cum adaug mai mulți bani unui jucător?
**R:** În script, găsește linia și crește valoarea:
```lua
money.Value = 500  -- Schimbă la ce vrei
```

### P: Cum fac ca upgradurile să coste mai puțin?
**R:** Deschide LobbyGui.lua și schimbă:
```lua
local upgradeCost = 50  -- Schimbă 50 cu suma dorită
```

### P: Cum adaug alte tipuri de bani (Gold, Gems)?
**R:** În PlayerDataSystem.lua, adaugă linii noi:
```lua
local gold = Instance.new("IntValue")
gold.Name = "Gold"
gold.Value = 10
gold.Parent = playerData
```

### P: Banii se salvează între sesiuni?
**R:** NU, deocamdată. Implementarea DataStore vine în viitor.

---

## 🎨 DESIGN & GRAFICĂ

### P: Cum schimb culoarea platformei?
**R:** Deschide LobbyGenerator.lua și găsește:
```lua
platform.BrickColor = BrickColor.new("Dark green")
-- Schimbă "Dark green" cu:
-- "Bright red", "Bright blue", "Bright yellow", etc.
```

### P: Cum fac copacii mai mari/mai mici?
**R:** În LobbyGenerator.lua, găsește:
```lua
crown.Size = Vector3.new(10, 10, 10)  -- Schimbă 10 cu altă valoare
trunk.Size = Vector3.new(2, 8, 2)     -- Schimbă dimensiunile
```

### P: Cum adaug mai mulți copaci?
**R:** Deschide LobbyGenerator.lua, în funcția `createTrees`, adaugă mai multe poziții în tabel:
```lua
local treePositions = {
    Vector3.new(-40, 0, -40),
    Vector3.new(40, 0, -40),
    -- Adaugă mai mulți Vector3.new(...) aici
}
```

### P: Cum schimb textul pe sign-uri?
**R:** Găsește în LobbyGenerator.lua:
```lua
createZone("Shop", ..., ..., "SHOP")
-- Schimbă "SHOP" cu textul dorit
```

### P: Cum fac GUI-ul mai mare/mai mic?
**R:** În LobbyGui.lua, găsește:
```lua
moneyLabel.Size = UDim2.new(0, 300, 0, 60)
-- Primul 300 = lățime, 60 = înălțime
```

### P: Pot schimba fontul textului?
**R:** Da! În LobbyGui.lua:
```lua
moneyLabel.Font = Enum.Font.GothamBold
-- Alte opțiuni: GothamBlack, Arial, ComicSansMS, etc.
```

---

## 🎮 GAMEPLAY

### P: Cum fac ca jucătorii să nu poată cădea de pe platformă?
**R:** Aceasta vine în viitoarea fază (Kill Plane). Deocamdată, sunt garduri.

### P: Cum adaug limite de hartă invizibile?
**R:** Va fi implementat în faza următoare cu PartBoundary.

### P: Cum fac ca spawning-ul să fie mai lent/mai rapid?
**R:** Schimbă în LobbyGenerator.lua:
```lua
spawn.Duration = 0  -- Schimbă 0 cu alte valori
```

### P: Pot adauga NPC-uri în lobby?
**R:** Da! Dar necesită scripting avansat. Viitoare fază.

---

## 🧟 ZOMBI ȘI GAME MODES

### P: Cum creez zombi?
**R:** Asta vine în faza următoare. E separat de lobby.

### P: Cum fac valuri de zombi?
**R:** Va fi un script separat: `ZombieWaveSystem.lua`

### P: Cum diferențiez Solo/Duo/Squad?
**R:** Va fi script `GameModeSelector.lua` care teleportează în hărți diferite.

### P: Cum fac ca zombii să atace jucătorii?
**R:** Script `ZombieAI.lua` va controla inițiativa zombilor.

---

## 🛍️ SHOP & UPGRADES

### P: Cum adaug obiecte în shop?
**R:** Va fi script `ShopSystem.lua` cu listă de items.

### P: Cum fac ca un item să coste mai mult?
**R:** În ShopSystem, schimbă valoarea în shop items list.

### P: Cum adaug upgrade-uri noi?
**R:** În PlayerDataSystem.lua, adaugă noi IntValue în folder Upgrades:
```lua
local newUpgrade = Instance.new("IntValue")
newUpgrade.Name = "NewUpgradeName"
newUpgrade.Value = 0
newUpgrade.Parent = upgrades
```

### P: Cum verific dacă jucătorul are upgrade?
**R:** În script:
```lua
local playerUpgrades = player.PlayerData.Upgrades
if playerUpgrades.GardLevel.Value >= 2 then
    -- Jucătorul are Gard Level 2+
end
```

---

## 👑 VIP & COSMETICS

### P: Cum fac pe cineva VIP?
**R:** Setează în game:
```lua
playerData.IsVIP.Value = true
```

### P: Ce beneficii are un VIP?
**R:** Asta va fi definit în game modes. De ex:
- Bani bonus
- Upgrade-uri mai ieftine
- Cosmetice speciale

### P: Cum adaug cosmetice pentru jucători?
**R:** Va fi script `CosmeticSystem.lua` cu hat-uri, glow, etc.

---

## 📊 LEADERBOARD & STATS

### P: Cum creez un leaderboard?
**R:** Va fi script `LeaderboardSystem.lua` care arată top jucători.

### P: Cum verific wins/losses?
**R:** În PlayerDataSystem, deja sunt create:
```lua
playerData.Wins.Value   -- Victorii
playerData.Losses.Value -- Înfrângeri
```

### P: Cum actualizez stats după un meci?
**R:** Va fi script care face asta automat.

---

## 🔧 DEBUGGING

### P: Cum vad ce se întâmplă în script?
**R:** Adaugă print statements:
```lua
print("Debug: Money = " .. money.Value)
```
Apoi vezi în Output (Ctrl+Shift+O).

### P: Cum opresc jocul pentru a testa ceva?
**R:** Click Stop (⏹️) sau Shift+F5

### P: Cum restaurez o eroare pe care am făcut-o?
**R:** Ctrl+Z (Undo) de mai multe ori, sau reíncarc fișierul.

### P: Cum sterg un script care nu merge?
**R:** Click dreapta → Delete. Sau Ctrl+Z pentru undo.

### P: Cum vad toți jucătorii conectați?
**R:** În Output, PlayerDataSystem tipărește numele fiecărui jucător.

---

## 🚀 ADVANCED

### P: Cum adaug Teleport în alte hărți?
**R:** Folosind TeleportService. Va veni în game modes.

### P: Cum fac Matchmaking (pairing jucători)?
**R:** Script separat: `MatchmakingSystem.lua`

### P: Cum salvez datele jucătorilor permanent?
**R:** DataStore API. Va fi implementat în viitor.

### P: Cum creez chat customizat?
**R:** ChatService API. Roblox are default chat.

### P: Cum adaug sunet în joc?
**R:** Adaugă SoundId în obiectele Roblox. Ex:
```lua
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://12345678"
```

### P: Cum fac ca jocul să ruleze pe mobile?
**R:** Roblox e compatibil automat. GUI se adaptează.

---

## 🐛 ERORI SPECIALE

### P: "Attempt to index nil with 'WaitForChild'"
**R:** Un obiect nu a fost găsit. Verifică structura (Explorer).

### P: "infinite yield on 'PlayerGui:WaitForChild'"
**R:** PlayerGui nu existe. Asigură-te că ești în LocalScript în StarterGui.

### P: "attempt to call a nil value"
**R:** Funcția nu e definită. Verifică sintaxa și nume-ul.

### P: Jocul merge lent/lag
**R:** Prea multe obiecte. Reduce copacii, flori, etc.

---

## 📞 SUPORT SUPLIMENTAR

### P: Unde găsesc ajutor?

**Opțiuni:**
1. **README.md** - Instrucțiuni de bază
2. **SETUP_VISUAL.md** - Diagrame și vizual
3. **Output (Ctrl+Shift+O)** - Erori și debug
4. **GitHub Issues** - Raportează bug-uri
5. **Roblox DevForum** - https://devforum.roblox.com/

### P: Cum raportez un bug?
**R:** 
1. Deschide GitHub repo
2. Click "Issues"
3. Click "New Issue"
4. Descrie problema și atașează screenshot

### P: Pot modifica codul?
**R:** **DA!** E open-source. Fă ce vrei cu el.

### P: Pot contribui la proiect?
**R:** Da! Fork repo → Fă modificări → Pull Request

### P: Cum distribuiesc jocul pe Roblox?
**R:** 
1. Finalizează jocul
2. File → Publish
3. Selectează "Create new game"
4. Completează detalii
5. Publică!

---

## 🎯 ROADMAP VIITOR

**Faze următoare planificate:**

| Faza | Conținut | Status |
|------|----------|--------|
| 1 (ACTUAL) | Lobby System | ✅ Done |
| 2 | Game Modes | ⏳ In Progress |
| 3 | Zombie Waves | ⏳ TODO |
| 4 | Farm System | ⏳ TODO |
| 5 | Shop & Items | ⏳ TODO |
| 6 | Leaderboard | ⏳ TODO |
| 7 | Data Persistence | ⏳ TODO |
| 8 | Mobile Optimization | ⏳ TODO |

---

## ✅ ÎNAINTE ȘI DUPĂ

### Înainte (fără joc):
```
❌ Nici o idee cum să fac joc Roblox
❌ Nu știu lua
❌ Confuz cu Roblox Studio
```

### După (cu FAQ-ul + repo):
```
✅ Ai lobby complet și funcțional
✅ Înțelegi Lua basics
✅ Știi cum să modifici codul
✅ Poți adăuga feature-uri noi
```

---

## 🎉 FELICITĂRI!

Ai rezolvat cele mai frecvente întrebări! Dacă mai ai alte probleme, încearcă:

1. Caută în FAQ
2. Deschide Output
3. Verifică GitHub
4. Google + "Roblox"

---

**Versiune:** v1.0.0 - FAQ Complete
**Ultima actualizare:** 16.09.2026
**Status:** ✅ 50+ întrebări răspunse

**Îți mai trebuie ceva? Zice-mi! 🚀**
