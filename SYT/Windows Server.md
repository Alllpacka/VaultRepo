| Server Core                         | vs. | Desktop Experience     |
| ----------------------------------- | --- | ---------------------- |
| Minimale Installationsoptionen      |     | vereinfachte Benutzung | 
| Kleinere Codebasis                  |     |                        |
| Geriner Speicherplatzbedarf (7.1GB) |     |                        |
| Kleiner Angriffsfläche              |     |                        |

Installation Serverrollen

+ DNS - Domain Name Service
	+ Beantwortung von anfragen zur Namensauflösung
	+ Bsp. Server kennt windowsclient1.hthl.at und kann bei Anfragen dei zugehörige IP-Adresse liefern
	+ Administrative Tools - "DNS" zur Verwaltung der DNS-Einträge

+ AD DS - Active Directory Domain Services
	+ Verzeichnisdienst (Zuordnungsliste)
	+ Verwaltung von Objekten im Netzwerk
		+ z.B.: Benutzer, Gruppen, Computer, Dienste, Server, Freigaben, Drucker und deren Eigenschaften
	+ Ermöglicht Zugriffsbeschrenkungen
		+ UserA darf Dienst X verwenden
		+ UserA dar auf Drucker Z nicht drucken


Domain Forest

Forest
+ Teilen sich einen globalen Katalog
+ Kommunikation zwischen Forests durch Forest-Level-Trust

Domain
+ Gruooe von Netzwerkobjekte (computer, User, Geräte) die dasselbe Active Directory verwenden
+ Kommunikation zwischen Domains durch Domain-Level-Trust

Domain-Controller (Domänencontroller)
+ Serer zur zentralen Authentifizierung von Computern bzw. Benutzern
+ In einem Netztwerk mit DC werden Computer zu einer Domain (Domäne)
+ Oft kommen mehrere DC zum Einsatz



PS als Admin öffnen
Add-Computer -DomainName "Nachname.at"
	Domain\\Administrator
	Passwort


Get-Service -Name sshd

Get-Service | Where-Object { $\_.name -like "ssh" }


Get-WindowsCapability -Online -Name 
+ rsat.servermanager* | Add-WindowsCapability -Online
+ rsat.activedir* | Add-WindowsCapability -Online
+ rsat.dhcp* | Add-WindowsCapability -Online
+ rsat.dns* | Add-WindowsCapability -Online

## Ohne gui

zum hauptmenü: SConfig

Get-WindowsFeature -Name \*AD*
Get-WindowsFeature -Name Active