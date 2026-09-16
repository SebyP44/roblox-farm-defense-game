# 🎮 Roblox Farm Defense Game - Setup Guide

**Versiune Roblox Studio:** 0.739.0.7390687

---

## 📋 Cuprins
1. [Instalare Roblox Studio](#instalare)
2. [Crearea Proiectului](#creare-proiect)
3. [Implementare Lobby Generator](#lobby-generator)
4. [Implementare Player Data System](#player-data-system)
5. [Implementare Lobby GUI](#lobby-gui)
6. [Testare Jocului](#testare)
7. [Troubleshooting](#troubleshooting)

---

## 🚀 Instalare

### Pasul 1: Descarcă Roblox Studio
1. Accesează: https://www.roblox.com/create
2. Click pe butonul **"Start Creating"**
3. Selectează **"Download Roblox Studio"**
4. Rulează instalatorul și urmează instrucțiunile

### Pasul 2: Conectează-te
- După instalare, deschide **Roblox Studio**
- Click pe **"Sign In"** (colț din stânga sus)
- Introduceți acreditările Roblox

---

## 📁 Creare Proiect

### Pasul 1: Creează un Proiect Nou

**În Roblox Studio:**
1. Click pe **File** (top-left menu)
2. Selectează **New**
3. Alege template: **Baseplate** (cel gri - default)
4. Click pe **Create**

Acum ar trebui să vezi interfața Roblox Studio cu un teren gri în mijloc.

### Pasul 2: Salvează Proiectul

1. Click **File** → **Save As**
2. Nume: `FarmDefenseGame`
3. Click **Save**

---

## 🗺️ Implementare: Lobby Generator

### Pasul 1: Accesează ServerScriptService

În panelul **Explorer** (stânga):

```
Workspace
├── Baseplate (DELETE ASTA!)
├── Camera
├── Terrain
└── ...

ServerScriptService (click dreapta)
```

**IMPORTANT:** Șterge Baseplate-ul! Click dreapta pe **Baseplate** → **Delete**

### Pasul 2: Creează Script

1. Click dreapta pe **ServerScriptService**
2. Selectează **Insert Object** → **Script** (NU LocalScript!)
3. O nouă fereastră va apărea cu codul gol

### Pasul 3: Copiază Codul LobbyGenerator

1. Deschide link-ul din GitHub: 
   ```
   https://raw.githubusercontent.com/SebyP44/roblox-farm-defense-game/main/ServerScriptService/LobbyGenerator.lua
   ```

2. Selectează **tot codul** (Ctrl+A)
3. Copiază (Ctrl+C)

4. Înapoi în Roblox Studio, în script-ul gol:
   - Selectează tot (Ctrl+A)
   - Șterge (Delete)
   - Lipește codul (Ctrl+V)

5. Rename script-ul la: **LobbyGenerator**
   - Click dreapta pe script → **Rename**
   - Scrie: `LobbyGenerator`

6. Salvează: **Ctrl+S**

### Pasul 4: Testează Lobby Generator

1. Click pe butonul **Play** (▶️) din toolbar-ul de sus
2. Privește în **Output** (jos):
   - Ar trebui să vezi mesaje:
     ```
     🎮 Inițializez Lobby-ul...
     ✅ Platformă principală creată
     ✅ Spawn point creat
     ✅ Zone de joc create
     ✅ Decorații create
     ✅ LOBBY GATA!
     ```

3. În **Viewport** (centru), ar trebui să vezi:
   - O platformă verde mare
   - Un spawn point galben în mijloc
   - Zone colorate (cyan, orange, magenta, yellow)
   - Copaci pe margini
   - Hambar roșu
   - Garduri de lemn pe laturi

4. Click **Stop** (⏹️) pentru a opri testarea

✅ **Dacă vezi asta = Lobby Generator funcționează!**

---

## 💾 Implementare: Player Data System

### Pasul 1: Creează Script pentru Date

1. Click dreapta pe **ServerScriptService**
2. **Insert Object** → **Script**
3. O nouă fereastră se deschide

### Pasul 2: Copiază Codul PlayerDataSystem

1. Deschide link-ul GitHub:
   ```
   https://raw.githubusercontent.com/SebyP44/roblox-farm-defense-game/main/ServerScriptService/PlayerDataSystem.lua
   ```

2. Selectează tot codul (Ctrl+A) → Copiază (Ctrl+C)

3. În Roblox Studio:
   - Selectează tot în script (Ctrl+A)
   - Șterge
   - Lipește codul (Ctrl+V)

4. Rename script la: **PlayerDataSystem**
   - Click dreapta → **Rename** → `PlayerDataSystem`

5. Salvează (Ctrl+S)

### Pasul 3: Testează Player Data System

1. Click **Play** ▶️
2. În **Output**, ar trebui să vezi:
   ```
   ✅ Player Data System încărcat!
   🎮 Jucător conectat: [Numele tău]
   💾 Creez date pentru: [Numele tău]
   ✅ Date create pentru: [Numele tău]
   ```

3. Click **Stop** ⏹️

✅ **Dacă vezi mesajele = Player Data System funcționează!**

---

## 🎨 Implementare: Lobby GUI

### Pasul 1: Accesează StarterGui

În **Explorer** (stânga):
```
StarterGui (click dreapta)
```

### Pasul 2: Creează LocalScript

1. Click dreapta pe **StarterGui**
2. **Insert Object** → **LocalScript** (IMPORTANT: LocalScript, nu Script!)
3. O fereastră se deschide cu cod gol

### Pasul 3: Copiază Codul LobbyGui

1. Deschide link-ul GitHub:
   ```
   https://raw.githubusercontent.com/SebyP44/roblox-farm-defense-game/main/StarterGui/LobbyGui.lua
   ```

2. Selectează tot codul (Ctrl+A) → Copiază (Ctrl+C)

3. În Roblox Studio:
   - Selectează tot în LocalScript (Ctrl+A)
   - Șterge
   - Lipește codul (Ctrl+V)

4. Rename LocalScript la: **LobbyGui**
   - Click dreapta → **Rename** → `LobbyGui`

5. Salvează (Ctrl+S)

### Pasul 4: Testează GUI

1. Click **Play** ▶️
2. Ar trebui să vezi pe ecran:
   - **Top-Left:** `💰 Bani: 100` și `📊 Level: 1`
   - **Top-Right:** `👑 Status: Regular`
   - **Bottom-Left:** Buton roșu `🔧 Upgrade Gard (50)`
   - **Bottom-Center:** Buton albastru `🛒 Shop`
   - **Bottom-Right:** Buton gri `🚪 Ieșire`

3. **Testează butoanele:**
   - Click pe `🔧 Upgrade Gard (50)` → Ar trebui să vezi: `✅ Gard Upgraded!` și banii să scadă la 50
   - Click din nou → Ar trebui să zie: `❌ Bani insuficienți!` (pentru că ai doar 50)

4. Click **Stop** ⏹️

✅ **Dacă vezi butoanele și funcționează = GUI este OK!**

---

## 🎮 Testare Completă

### Pasul 1: Rulează Jocul Complet

1. **Salvează totul:** Ctrl+S
2. Click **Play** ▶️
3. Ar trebui să vezi:
   - ✅ Harta cu lobby
   - ✅ Spawn point galben în centru
   - ✅ Zone colorate
   - ✅ GUI cu bani și butoane
   - ✅ Copaci, hambar, garduri

### Pasul 2: Testează Mecanicile

1. **Bani:** Ar trebui să vezi `💰 Bani: 100`
2. **Upgrade:** Click pe buton → banii scad
3. **Chat:** Scrie în chat-ul default Roblox

### Pasul 3: Oprește Testarea

Click **Stop** ⏹️

---

## 🐛 Troubleshooting

### Problema: Nu văd nimic pe ecran

**Soluție:**
1. Deschide **Output** (View → Output)
2. Verifică dacă sunt erori roșii
3. Dacă sunt, citește mesajul de eroare
4. Asigură-te că ai copiat codul corect

### Problema: GUI-ul nu apare

**Soluție:**
1. Verifică că LocalScript-ul e în **StarterGui**
2. Asigură-te că ai folosit **LocalScript**, nu Script
3. Salvează și relanșează

### Problema: Banii nu se actualizează

**Soluție:**
1. Verifică că PlayerDataSystem este în ServerScriptService
2. Rulează din nou (Play → Stop → Play)

### Problema: Script-uri cu erori roșii

**Soluție:**
1. Deschide **Output** și citește eroarea
2. Verifică că ai copiat codul complet
3. Nu lăsa linii goale la început/final

### Problema: Lobby Generator nu creează obiecte

**Soluție:**
1. Asigură-te că ai șters Baseplate-ul
2. Verifică că LobbyGenerator e în ServerScriptService (nu în Workspace)
3. Click Play din nou

---

## 📚 Structura Finală în Roblox Studio

Ar trebui să arate așa în **Explorer**:

```
Workspace
├── LobbyPlatform (verde, 100x100)
├── LobbySpawn (galben, 10x10)
├── ShopPlatform (cyan, 20x20)
├── ShopSign (cu text)
├── UpgradesPlatform (orange, 20x20)
├── UpgradesSign (cu text)
├── CratesPlatform (magenta, 20x20)
├── CratesSign (cu text)
├── VIPPlatform (galben, 20x20)
├── VIPSign (cu text)
├── SoloGameMode (verde, 12x12)
├── DuoGameMode (galben, 12x12)
├── SquadGameMode (roșu, 12x12)
├── Decorations/
│   ├── Barn (roșu, 20x15x15)
│   ├── Fence_1, 2, 3, 4 (garduri)
│   ├── TreeTrunk_1-6 (trunchiuri)
│   ├── TreeCrown_1-6 (coroane copaci)
│   ├── Flower_1-6 (flori colorate)
├── Camera
├── Terrain
└── ...

ServerScriptService
├── LobbyGenerator (script)
└── PlayerDataSystem (script)

StarterGui
└── LobbyGui (LocalScript)
```

---

## ✅ Checklist - Implementare Completă

- [ ] Instalat Roblox Studio 0.739.0.7390687
- [ ] Creat proiect nou cu Baseplate
- [ ] Șters Baseplate-ul
- [ ] Adăugat LobbyGenerator în ServerScriptService
- [ ] Testat LobbyGenerator (Play → Stop)
- [ ] Adăugat PlayerDataSystem în ServerScriptService
- [ ] Testat PlayerDataSystem (Play → Stop)
- [ ] Adăugat LobbyGui ca LocalScript în StarterGui
- [ ] Testat LobbyGui (Play → Stop)
- [ ] Rulează jocul complet și totul funcționează!

---

## 🎉 Felicitări!

Ai terminat Lobby-ul! Acum ai:
- ✅ O hartă cu teren, copaci, hambar, garduri
- ✅ Sistem de bani și date jucător
- ✅ GUI frumos cu butoane
- ✅ Spawn point unic pentru jucători

**Următorii pași:**
1. Creează Game Modes (Solo, Duo, Squad)
2. Adaugă Zombie Waves
3. Adaugă Sistem de Upgrade
4. Adaugă Shop-ul
5. Adaugă Fermele Jucătorilor

---

## 📞 Support

Dacă ai probleme:
1. Verifică **Output** (View → Output)
2. Citește mesajele de eroare
3. Asigură-te că ai copiat codul corect
4. Salvează și relanșează jocul

---

**Cod de actualizare:** v1.0.0 - Lobby System Complete
