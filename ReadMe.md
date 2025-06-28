# ARcade Racer 🏎️🕶️

**ARcade Racer** is a real-world RC racing experience enhanced with augmented reality using **Snap Spectacles**. It mounts a virtual driver onto a physical RC car and fills your surroundings with AR coins, obstacles, and collider objects — creating a full-blown spatial arcade racer.

---

## 🎮 Features

### 📱 Real Car Sync with AR (Mobile Controller Binding)
A 3D character is bound to your real RC car using **MotionControllerModule** and a custom **3D-printed mobile mount** for phone alignment.

![Preview Demo](./Preview%20Files/preview1.gif)

- Live positional + rotational tracking using 6DoF
- Accurate syncing with real car movements
- 3D printable files included (`.blend` & `.glb`)

---

### 🔁 Dead Reckoning for Prediction & Smooth Follow
To maintain smooth visuals and gameplay even when tracking drops temporarily, the system implements **dead reckoning**:


- Predicts next position using last known velocity
- Applies smoothing to avoid jitter
- ⏳ Room for improvement: Could integrate real-time ML-based object detection — but may affect performance or accessibility

---

### ✋ Pinch-Based Object Spawning
Uses **Spectacles Interaction Kit** to allow spawning AR objects only on horizontal ground surfaces (avoids walls or verticals).

![Pinch Spawn](./Preview%20Files/preview2.gif)

- Objects spawned via pinch gesture (with hold detection)
- First pinch also spawns an invisible collider plane (index 2)
- Pinch-and-hold for 1 second switches between object types (toggle)

---

## 📁 Project Structure

```bash
ARCADE RACER OS/
├── 3D Print Files/          # Contains mount files (.blend, .glb)
├── Assets/                  # All lens assets, prefabs, and objects
├── Cache/                   # Studio cache (auto-generated)
├── Packages/                # Snap Spectacles and SIK dependencies
├── PluginsUserPreferences/ # Internal Studio configs
├── Support/                 # Docs, notes, or lens helper files
├── Workspaces/              # Scene workspaces
├── ARcade Racer OS.editor  # Lens Studio editor project file
├── icon.png                 # App or project icon
├── jsconfig.json            # JavaScript config (Studio runtime)
└── tsconfig.json            # TypeScript config
````

---

## ⚙️ Core Scripts

### 🎮 `MotionTracking.ts`

* Binds the virtual driver to your real car
* Uses SixDoF transform data from MotionController
* Implements position prediction via dead reckoning

### 🧱 `ARSpawner.ts`

* Listens for **pinch gestures**
* Performs **hit tests** to ensure only ground surfaces allow object placement
* Spawns objects from `objectsToSpawn[]`, including index 2 (collider plane) only on **first spawn**

---

## 📦 Included Files

* `ARcadeRacer_Mount.blend` – 3D-printable phone mount
* `ARcadeRacer_Mount.glb` – GLB version for web previews
* All assets used in Lens Studio
* Clean, modular scripts with comments
* `icon.png` and JSON configs

---

## 🚧 Future Work

* 🔘 **BLE Button Integration** — planned for use in shooting virtual enemies and triggering effects
* 🔄 Improve prediction with ML object tracking (e.g. YOLO or MediaPipe)
* 📡 Add multiplayer support via WebRTC/SyncKit
* 💥 Add more interactions: drifting FX, particle trails, collectibles

---

## 📜 License

MIT License. Use it, fork it, remix it. Credit appreciated.

---



## ✨ Author

 Built with love by  [**Krazyy Krunal**](https://instagram.com/krazyykrunal) 

3D Phone Mount designed & printed by [**Aakash Mansukhani**](https://www.instagram.com/extraakash)

---



