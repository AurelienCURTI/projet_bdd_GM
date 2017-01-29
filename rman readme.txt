Sur RMAN :

Pour executer le script de sauvegarde :

RUN {EXECUTE SCRIPT full_backup;}

Pour restaurer la base de données :

restore database;
restore controlfile to '/home/aurelien/Documents/M1IFI/control_oracle/control2.dbf';

