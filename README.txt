Enviromment de développement :

	Le base de données ORACLE a été installé sur une machine Ubuntu 16.04 LTS et manipulé via 
SQLPLUS, RMAN, EXPDP, IMDP ou encore le logiciel SQLDEVELOPPER version 4.1.5.

	Divers utilisateurs ont étés crées afin de permettre à chaques membres du groupe d'avoir son "propre environnement de travail et leurs propre données" puisque chaque utilisateur dispose de son schéma de données individuel.
De plus, toutes modification de droits et de configuration de la base de données ont étés effectués grâce à l'utilisateur system grace à la commande "sqlplus sys as sysdba" et le mot de passe administrateur définis lors de la création de la base oracle.

Procedure et définitions des droits pour les répertoires ajoutées à la base de données oracle :

	Tous les répertoires créés pour le projet et qui ne sont pas des repertoires par défaut de la base de données oracle ont étés crées avec les droits "oracle" pour le "owner" sous linux grace à la commande "chown -R oracle repertoire" et les droit dba pour le "groupe" sous linux grace à la commande "chgrp -R dba repertoire", ces commandes étant lancées depuis l'utilisateur "root" de la machine linux.
	Il en vas de même pour les permissions des fichiers.


Les fichiers contenus dans ces repectoires sont les suivant :
Le sujet du projet.
Partie 1. 
	- Le schéma logique de la base de donnée au format PDF dont le nom est "schema_logique.pdf".

Partie 2. Repertoire Oranisation
	 - Creation des tablespace dans le fichier "create_tablespace.sql".
	 - Creation de l'utilisateur propriétaire de la base dans le fichier "user.sql".
	 - Creation des tables, des index, des triggers dans les diverses tablespaces dans le ficher "creates_tables.sql".
 	 - Insertion des données dans toutes les tables de la base grâce au fichier "insert_table.sql"
	 - Un fichier "readme_org.txt" expliquant brièvement comment s'y prendre pour lancer scripts sql précédemment cités et les droits nécéssaires.

Partie 3. Repertoire Administration
	 - Un fichier "table.csv" qui représente les données à charger via sqlloader.
	 - Un fichier "ControlFile.ctl" qui est le fichier de configuration à charger pour que sqlloader charge bien les données du fichier csv précédemment cité.
	  - Un fichiers "requete_partie_3_2.sql" qui représentes les requetes demandées à la partie 3.2 du sujet.
	 - Un fichier "script_rman.txt" qui est le script permettant la sauvegardes des fichiers de données, fichiers de controles et fichiers de redo logs.
	 - Un fichier "rman_readme.txt" qui explique comment il faut s'y prendre pour sauvegarder la base avec RMAN, comment passer le serveur en mode ARCHIVELOG et comment la restaurer en cas de pannes.
	 - Un fichier "Import_Export.txt" qui décrit comment importer le schéma d'un utilisateur puis comment l'importer.
