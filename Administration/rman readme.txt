Sous SQLPLUS :

Il faut creer un tablespace qui contiendra notre calatogue

SQL>CREATE TABLESPACE tbs_rman
DATAFILE '/home/aurelien/Documents/M1IFI/tbs_oradata/projectbdd/tbs_rman.dbf' SIZE 25M
EXTENT MANAGEMENT LOCAL UNIFORM SIZE 500k;

Ensuite Il faut creer le user rman avec le mot de passe rpass

SQL>create user rman identified by rpass  default tablespace tbs_rman;

Puis lui donner les droits

SQL>grant connect, resource, recovery_catalog_owner to rman;

Il faut activer le mode ARCHIVELOG pour pouvoir cr�er le catalogue, pour cela :

sql> SHUTDOWN
sql> STARTUP MOUNT
sql> ALTER SYSTEM SET LOG_ARCHIVE_DEST='/home/aurelien/Documents/M1IFI/archvlog_oracle/' scope=spfile;
sql> ALTER DATABASE ARCHIVELOG; 
sql> ALTER DATABASE OPEN; 

On quitte SQLPLUS et on se connecte au serveur sur RMAN via :

$rman catalog rman/rpass@cweb.ddns.net

Sur RMAN :

Pour cr�er le catalog :
RMAN>create catalog tablespace tbs_rman;

On sort de RMAN et on fait:

$rman target / catalog rman@cweb.ddns.net
puis on indique le mot de passe de rman c'est-�-dire rpass

De nouveau sur RMAN on lance :
RMAN> register database ;

Pour enregistrer le script dans le catalogue:

RMAN>CREATE SCRIPT full_backup FROM FILE 'script_rman.txt';

le fichier 'script_rman.txt' est fourni dans l'archive.

Pour executer le script de sauvegarde :

RMAN>RUN {EXECUTE SCRIPT full_backup;}

Pour restaurer la base de donn�es :

RMAN>restore database;
RMAN>restore controlfile to '/home/aurelien/Documents/M1IFI/control_oracle/control2.dbf';

