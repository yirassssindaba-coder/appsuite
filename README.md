<div align="center">

<!-- Animated Wave Header -->
<img src="https://capsule-render.vercel.app/api?type=waving&height=210&color=0:0ea5e9,100:22c55e&text=AppSuite&fontSize=56&fontColor=ffffff&animation=fadeIn&fontAlignY=35&desc=All-in-One%20Productivity%20Desktop%20App%20(9%20Mini%20Apps)&descAlignY=58" />

<!-- Typing SVG -->
<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=18&duration=2600&pause=650&color=22C55E&center=true&vCenter=true&width=820&lines=One+Window+%E2%86%92+9+Mini+Apps;Pomodoro+%2B+Focus+Timer+%2B+Budget+Tracker;File+Search+%2B+Password+Generator+%2B+Kanban;Sticky+Notes+%2B+CSV+Viewer+%2B+Stopwatch" />

<!-- Badges -->
<p>
  <img src="https://img.shields.io/badge/Windows-10%2F11-0078D6?logo=windows&logoColor=white" />
  <img src="https://img.shields.io/badge/Desktop-HTA%20(mshta)-111827" />
  <img src="https://img.shields.io/badge/JavaScript-UI-F7DF1E?logo=javascript&logoColor=111827" />
  <img src="https://img.shields.io/badge/VBScript-Launcher-2F2F2F" />
  <img src="https://img.shields.io/badge/Portable-No%20Runtime%20Install-22c55e" />
</p>

<p align="center">
  🚀 AppSuite menggabungkan 9 mini-app produktivitas dalam 1 aplikasi desktop modern: timer, board, budget, utilitas, dan viewer.
</p>

</div>

---

## Table of Contents
- [Preview](#preview)
- [Ringkasan](#ringkasan)
- [Fitur Utama](#fitur-utama)
- [Cara Menjalankan](#cara-menjalankan)
- [Penyimpanan Data](#penyimpanan-data)
- [Struktur Project](#struktur-project)
- [Troubleshooting](#troubleshooting)
- [Security Notes](#security-notes)
- [License](#license)

---

## Preview

> Tambahkan screenshot/gif ke folder `./assets/` lalu update path di bawah.

| Home (Focus) | FocusBoard | Stopwatch |
|---|---|---|
| `assets/preview-focus.png` | `assets/preview-board.png` | `assets/preview-stopwatch.png` |

Contoh embed:
```md
![AppSuite](./assets/preview-focus.png)
```

---

## Ringkasan

**AppSuite** adalah **1 aplikasi desktop** yang menyatukan **9 mini-app** dalam satu window, tanpa perlu install runtime (tidak perlu Go/Java/Node/Python).

Cocok untuk:
- Produktivitas harian (Pomodoro + focus sessions)
- Pencatatan cepat (sticky notes + kanban)
- Utilitas praktis (password generator, CSV viewer, file search, stopwatch)

---

## Fitur Utama

1) **GoFocusFlow** — Focus timer + break, simpan log  
2) **PomodoroPulse** — Pomodoro timer, simpan sesi  
3) **BudgetBuddy** — Catat income/expense + export CSV  
4) **FileScout** — Cari file di folder lokal (tanpa upload)  
5) **PasswordForge** — Generate password + history + copy  
6) **FocusBoard** — Kanban (To Do / Doing / Done) drag & drop  
7) **DeskMini** — Quick tools + sticky note (saved)  
8) **CSV QuickView** — Load CSV (max rows) & tampilkan tabel  
9) **StopwatchX** — Stopwatch + lap list

---

## Cara Menjalankan

### Windows (Recommended)
1) **Extract** folder ZIP (jangan dijalankan dari dalam ZIP)
2) Double-click: **Run-AppSuite.vbs**
3) AppSuite akan terbuka (tanpa terminal)

### Jika SmartScreen muncul
- **More info → Run anyway**
- atau: klik kanan ZIP/folder → **Properties → Unblock → Apply**

---

## Penyimpanan Data

Semua data tersimpan otomatis di folder:
- `data\focusflow.json`
- `data\sessions.json`
- `data\budget.json`
- `data\passwords.json`
- `data\tasks.json`
- `data\note.txt`
- `data\laps.json`

Klik tombol **Open Data** untuk membuka folder data.

---

## Struktur Project

```txt
AppSuite/
├─ Run-AppSuite.vbs        # launcher (double-click)
├─ AppSuite.hta            # main desktop app (UI)
├─ data/                   # auto-created (JSON & note)
└─ README.md
```

---

## Troubleshooting

### 1) Tidak muncul apa-apa saat dijalankan
- Pastikan folder sudah di-extract penuh (bukan run dari dalam ZIP)
- Coba klik kanan `Run-AppSuite.vbs` → **Run as administrator** (kadang dibutuhkan untuk policy tertentu)

### 2) Error “The operation was canceled by the user (800704C7)”
Biasanya Windows memblokir prompt / policy.
- Unblock folder/zip (Properties → Unblock)
- Jika ada popup keamanan, pilih **Run anyway**

### 3) HTA diblokir
Beberapa PC kantor/sekolah mematikan `mshta.exe`.
- Solusi: jalankan di PC pribadi, atau minta admin mengizinkan `mshta.exe`

---

## Security Notes

HTA memakai ActiveX untuk:
- read/write file lokal (folder `data`)
- membuka folder/file via Explorer

Jalankan hanya dari source yang kamu percaya (karena HTA punya akses file lokal).

---

## License

Tambahkan `LICENSE` (contoh: MIT) jika ingin open-source.
