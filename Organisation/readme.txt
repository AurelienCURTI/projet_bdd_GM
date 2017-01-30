On creer le user prop depuis une interface sqlplus en tant que sysdba

Tout d'abord il faut creer les tablespace via le fichier create_tablespace.sql en ayant les droits
necessaire (grant create tablespace to prop)

Puis afin de creer la base de données sur les tablespace crées précédemment, il faut lancer le script create_tables.sql toujour avec les droits associés (grant connect, resource to prop)

Ensuite pour l'insertion de quelques tuples dans la base il faut lancer le script insert_table.sql
