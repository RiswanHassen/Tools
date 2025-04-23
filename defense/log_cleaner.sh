#!/bin/bash
# 🔥 Log Cleaner Tool (for CTFs / Testing only)

echo "[*] Cleaning up bash history and honeypot logs..."

> ~/.bash_history
[ -f honeypot.log ] && > honeypot.log

history -c
echo "[+] Done."

# Optional: clean up cronjobs or SSH artifacts (example only)
# sed -i '/nc -lvnp 4444 -e \/bin\/bash/d' /etc/crontab
# rm -rf /home/hidden_user
