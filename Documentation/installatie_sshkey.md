## Verbinding maken met GitLab voor VCS
Binnen dit project maken we gebruik van SSH-keys om verbinding te maken met GitLab.

### Wat zijn SSH-keys?
SSH-keys, ook bekend als een SSH key-pair, zijn sleutels waarmee je een beveiligde netwerkverbinding kunt opzetten met een computersysteem of server.

Een SSH key-pair bestaat uit een public key en een private key. De private key blijft op je eigen computer of laptop waar vandaan je verbindt met een andere computer of server. De private key bevat handtekeningen die geverifieerd kunnen worden door de public key.
Mocht je hier meer over willen lezen, dan kan je dit vinden op:
https://www.transip.nl/knowledgebase/artikel/3416-wat-zijn-ssh-keys/

### SSH-Key aanmaken
Voor het committen en pushen van veranderingen via je IDE dien je eerst een SSH-key aan te maken op jouw device. 
Dit kan je op twee verschillende manieren doen.
- Command Prompt (Windows)
	In je command prompt typ je het volgende in:
	"
	ssh-keygen
	"
	- Vervolgens zal je de vraag krijgen om je SSH-key een naam te geven, dit mag je zelf kiezen maar zorg ervoor dat dit een duidelijke naam is zodat het makkelijker te herkennen zal zijn.
	- Je zal ook een pad moeten kiezen waar je het bestand zal opslaan. Sla dit bestand in een veilige op, mocht je je key vergeten zijn dan kan je hier altijd terug op terugvallen.
- PuTTY Key Generator
Link naar handleiding: https://www.ssh.com/academy/ssh/putty/windows/puttygen

### Linken met GitLab
Om de verbinding af te ronden dien je nog twee stappen uit te voeren.

1. Het SSH-key bestand dat is aangemaakt kan je openen met Notepad++ of een IDE naar keuze. De code die erin staat dien je vervolgens te kopiëren.
2. Je kan vervolgens naar GitLab gaan en dan onder account: Account > SSH Keys - tab vinden. In 'Key' dien je de code die je uit je SSH-Key bestand hebt gekopiëerd, plakken. Onder title mag je een eigen naam kiezen (handig als je meerdere devices zal toevoegen) en Expiration date kan je onveranderd laten.  
3. Vervolgens Add key klikken.

## PyCharm
Als laatste dien je voor PyCharm ook een url toe te voegen onder Version Control.
1. Open PyCharm > Settings > Version Control (tab) > GitLab
2. Je krijgt een tabel te zien die momenteel leeg staat. Kies vervolgens "Add New GitLab Server"
3. Een pop-up zal verschijnen. Onder "GitLab UI Server Url (Example: https://gitlab.com)" voer je het volgende in "https://gitlab.com"
4. Het kopje "Prefferred checkout method" dient SSH te staan en het vinkje "Default Remove Source Branch when Merged" aangevinkt.
5. Klik vervolgens op "OK" en het zal moeten werken. Sluit "Settings" door op OK te klikken.

### Stage, Commit en Push
Het toevoegen, committen en pushen van veranderingen zou nu mogelijk moeten zijn via je IDE of Command Prompt/Terminal. Door middel van je SSH-key maakt het niet uit of je een ander IDE gebruikt op je device. Dit betekent wel dat wanneer je een ander device toe wil voegen, dat je het proces weer moet uitvoeren om daarmee veranderingen te pushen naar de repositorie. 


