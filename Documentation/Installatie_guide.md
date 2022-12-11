## Installatie/Configuratie RFW
### IDE

- PyCharm installatie guide: https://www.jetbrains.com/help/pycharm/installation-guide.html
- Visual Studio Code Installatie Guide: https://code.visualstudio.com/download

Beide IDE’s werken op Windows, Linux en MacOS.

### Plugins
Plugins die gebruikt kunnen worden voor het uitvoeren van Robot Framework Scripts:
- Python
- Robot Framework Language Server (RF LS)
- Robocorp Code (optioneel en alleen voor Visual Studio Code) (RC)

Voor overige taken (batch runner, GitLab integratie en library ondersteuning):
- Pycharm: Batch Scripts Support, GitLab Projects 2020, IntelliBot @SeleniumLibrary Patched
- Visual Studio: Batch Runner

**Visual Studio Code**

Voor Robot Framework Language Server en Robocorp Code dien je ook een path voor je Python executie bestand in te voeren. Dit kan je door naar  Settings > (search setting: Robot Framework Language Server) > (optie) Robot › Language-server: Python te gaan en vervolgens het pad naar je Python executiebestand in te voeren. Bijv: "C:\Users\<username>\AppData\Local\Programs\Python\Python311\python.exe"

**Voer dit ook uit voor Robocorp:**
Settings > (search setting: Robot Framework Language Server) > (optie) Robocorp › Language-server: Python
 
**PyCharm**

Voor Robot Framework Language Server dien je ook een path voor je Python executie bestand in te voeren. Dit kan je door naar Settings > Language & Frameworks > Robot Framework (Global) > (Optie) Language Server Python te kiezen en vervolgens het pad naar je Python executiebestand in te voeren. Bijv:
 "C:\Users\<username>\AppData\Local\Programs\Python\Python311\python.exe"
 
 **Libraries**

 De volgende libraries zijn nodig om de testen af te kunnen vuren. Je kan pip hiervoor gebruiken, voer in je terminal of command prompt het volgende in:
- pip install robotframework
- pip install robotframework-appiumlibrary
- pip install robotframework-assertion-engine
- pip install robotframework-browser
- pip install robotframework-databaselibrary
- pip install robotframework-datadriver
- pip install robotframework-pythonlibcore
- pip install robotframework-requests
- pip install robotframework-selenium2library
- pip install robotframework-seleniumlibrary
- pip install robotframework-sshlibrary
- pip install pytz
- pip install psycopg2
- pip install selenium

Informatie over Pip-packages: https://packaging.python.org/en/latest/guides/installing-using-pip-and-virtual-environments/

 **Variables** 

 Wellicht dat je niet alle testen kan draaien met een geïntegreerde test runner (bijvoorbeeld voor Visual Studio Code). Dit kan komen door de paden die naar je variabelen wijzen. Om dit op te lossen kan je in Settings > Robot: Variables > Edit in settings.json - Het volgende invoeren:
 
 {"EXECDIR":"pad-naar-RobotFramework-folder" } 
 Bijvoorbeeld
     "robot.variables": {
        
        "EXECDIR": "V:\\DICTU\\art\\rni-art\\RobotFramework"
    }
    
### Uitvoeren van Testen
**Batch-file aanmaken**

Onder het Robot Framework folder kan je een batch-file aanmaken om testen lokaal af te vuren.
In je Batch-file kan je het volgende invoeren:

```
@echo off
SET ENVIRONMENTS=chrome,instance-dynamic
SET INSTANCE_NAME=develop
REM DRAAIEN SCRIPT (user-custom.bat vanuit folder RobotFramework!):
robot --console verbose --xunit rni-xunit.xml --outputdir reportUser V:\pad-naar-test-script
```

**Uitvoeren van Batch-file**

In je Terminal cd je naar het folder waar je Batch-file is opgeslagen en vervolgens voer je het volgende in:
$user .\user-custom.bat