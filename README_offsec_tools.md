# 🛠️ OffSec Tools

![MIT License](https://img.shields.io/badge/license-MIT-green)
![Built with Bash](https://img.shields.io/badge/built%20with-bash-1f425f.svg)
![CTF Ready](https://img.shields.io/badge/ctf-ready-blueviolet)
![Powered by GPT](https://img.shields.io/badge/powered%20by-GPT-ff69b4)
![Made with ❤️ by Riswan](https://img.shields.io/badge/made%20with-%E2%9D%A4%EF%B8%8F%20by%20Riswan-orange)

---

This is a personal collection of lightweight tools and scripts for Offensive Security, Red Teaming and CTF-style scenarios.  
Written mostly in Bash (for now) – Python & PowerShell versions are coming.

---

## 📁 Structure

```
tools/
├── attack/
│   ├── honeypots/
│   │   └── advanced_reverse_honeypot.sh
├── defense/
│   └── log_cleaner.sh
```

---

## ✨ Highlights

- **Stealth Recon & Honeypots**
- **Fake Payloads (Webshell, Reverse Shell)**
- **GPT-Enhanced Exploit Report Analysis**
- **Auto Logging (classic or JSON)**
- **Modular Bash scripts with CLI flags**

---

## 🔥 Example Tool: Advanced Reverse Honeypot

> Located in `attack/honeypots/`

- Simulates exploitation activity (uploads, fake C2, honey traffic)
- Performs stealth recon before engagement
- Generates a full report and optionally sends it to GPT-4 for next-step suggestions
- Optional persistence (hidden users, cronjobs, ssh)

---

## 🧹 Defense Tool: `log_cleaner.sh`

Quickly clears `.bash_history`, logs, and C2 artifacts after testing or demo use.  
Great for CTF resets or forensic avoidance practice.

---

## 📝 License

MIT – Free to use, modify, and share. No warranty.

---

_Keep it clean. Keep it fast. Keep it real._
