verschiedene Frequenzbereiche (~2.4/~5GHz) 
IEEE 802.11

CSMACA = Carrier Sends Multiple Access (with) Collission Avoidence

einer der ersten IEEE 802.11b

a, b, g, n = Basis-Standarts

| Standart | Übertragungsgeschwindigkeit | Frequenz      | Infos                   | Verkauft unter |
| -------- | --------------------------- | ------------- | ----------------------- | -------------- |
| a        | Mbit/s                      | 5GHz          |                         |                |
| b        | 11Mbit/s                    | 2.4GHz        |                         |                |
| g        | 54Mbit/s                    | 2.4GHz        |                         |                |
| n        | 72Mbit/s                    | 2.4GHz & 5GHz | Kanalbündelung / MiMo   | WiFi4          |
| ac       | 1.1Gbit/s                   | 5GHz          |                         | WiFi5          |
| ax       | 1.1Gbit/s                   | 2.4GHz & 5GHz | andere Verfahren als ac | WiFi6          |
| ax       |                             | 6GHz          |                         | WiFi6E         |


ssid = Name vom WLAN

## Verschlüsselung

[WPA](https://en.wikipedia.org/wiki/Wi-Fi_Protected_Access#EAP_extensions_under_WPA_and_WPA2_Enterprise#WPA) (WiFi Protected Accsess)
[WPA2](https://en.wikipedia.org/wiki/Wi-Fi_Protected_Access#EAP_extensions_under_WPA_and_WPA2_Enterprise#WPA2) ist am populärsten
[WPA3](https://en.wikipedia.org/wiki/Wi-Fi_Protected_Access#EAP_extensions_under_WPA_and_WPA2_Enterprise#WPA3) ist als ersetzung gedacht

Password ist pre-shared -> privat nutzen
Verschlüsselte Daten können mit dem Passwort aufgelöst werden

[WPA Enterprise](https://en.wikipedia.org/wiki/Wi-Fi_Protected_Access#Target_users_(authentication_key_distribution)) (WPA-802.1X mode)
zertifikate oder benutzer und passwort
IEEE 802.1X oder 1x Auth


Computer -- 802.1X --> Access Point -- Radius --> Radius Server -- ldap --> eDirectory

PEAP (Protected Extensible Authentication Protocol)
[MS-CHAPv2](https://en.wikipedia.org/wiki/MS-CHAP) (Microsoft Protected Extensible Authentication Protocol)
(EAP-TLS)
(EAP-TTLS)