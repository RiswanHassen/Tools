# Alpaka Team – EternalBlue Proof of Concept

Dieses Projekt demonstriert eine vollständige Exploit-Kette für MS17-010 in einer Lab-Umgebung:
- Scan und Schwachstellenprüfung via Nmap
- Exploit via Metasploit mit Hintergrund-Session
- Lokale Privilege Escalation via Exploit + Suggester
- Realistische Persistence (Service + Wallpaper)
- Hinweis für Administratoren im Stil einer White-Hat-Aktion

## Nutzung

```bash
./eternalblue_chain.sh <IP> --auto-exploit
```

> ⚠️ **Achtung:** Nur in autorisierten Testumgebungen ausführen!

– Alpaka Team 🦙
