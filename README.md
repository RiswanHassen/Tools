# 🛠️ Offensive Security Tools

Dies ist eine Sammlung leichter, effektiver Tools für Offensive Security, CTFs und Red Teaming.

## Struktur

- `attack/` – Angriffs- & Recon-Tools
  - `honeypots/` – Täuschung & Exploitation
- `defense/` – Spurenverwischung, Analyse, Blue Team Tools
- `util/` – Sonstige Helferlein

## Beispiel: Honeypot

Siehe `attack/honeypots/advanced_reverse_honeypot.sh` – ein Bash-basiertes, modular aufgebautes Reverse-Honeypot-Skript mit Recon, Exploits und GPT-Auswertung.

## Lizenz

MIT – freie Nutzung und Weitergabe erlaubt.


---

### 🛡️ Defense Tool: `log_cleaner.sh`

Ein einfaches Bash-Tool zur schnellen Bereinigung sensibler Artefakte nach CTF-Übungen oder beim Testen von Exploits.

- Leert `.bash_history`
- Löscht optional das `honeypot.log`
- (Optional) Entfernt C2-Crontabs oder Benutzerartefakte
