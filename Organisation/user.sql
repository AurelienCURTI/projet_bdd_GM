----------------------------------------------------------------
--------------------Création de l'utilisateur-------------------
----------------------------------------------------------------

-- Creation du propriétaire
CREATE USER prop IDENTIFIED BY passprop
  DEFAULT TABLESPACE tbs_users
  TEMPORARY TABLESPACE tbs_temp
  QUOTA UNLIMITED ON tbs_users;
  
GRANT CONNECT, RESOURCE TO prop;
