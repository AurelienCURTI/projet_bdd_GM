Tout d'abord il faut creer les tablespace via le script "create_tablespace.sql" en ayant les droits
necessaire il est pour cela préférable de le faire depuis l'utilisateur system si aucun autre utilisateur n'est défini sinon il faut que l'utilisateur en question ai les droits "grant create tablespace to user" afin de lui permettre de réaliser cette opération.

On creer le user prop qui sera notre utilisateur propriétaire de la base de données et on l'alloue dans le bon tablespace à savoir "tbs_user" toujours depuis sqlplus en tant qu'utilisateur system.

Puis afin de creer la base de données sur les tablespace crées précédemment, il faut lancer le script ""create_tables.sql" toujour avec les droits associés (grant connect, resource to prop) depuis sqlplus ou sqldevelopper, le user prop étant créés il peut à ce stade lancer ce script sur sqldevelopper.

Ensuite pour l'insertion de quelques tuples dans la base il faut lancer le script "insert_table.sql" toujours sur sqldevelloper ou sqlplus.
