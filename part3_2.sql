-----------------------------------------------------------------
-------------------------- Partie 3.2 ---------------------------
-----------------------------------------------------------------
--Requete 1

SELECT name AS DATABASEFILES FROM V$DATAFILE UNION SELECT member FROM V$LOGFILE UNION SELECT name FROM V$ARCHIVED_LOG;

--Requete 2
SELECT datas.tablespace_name AS NOM_TABLESPACE, datas.file_name AS FICHIER_TABLESPACE, datas.total_space_mb AS ESPACE_TOTAL, (datas.total_space_mb - free.free_space_mb) AS ESPACE_UTILISE_MB, free.free_space_mb AS ESPACE_LIBRE_MB
FROM (SELECT tablespace_name, file_name, SUM(bytes) AS TOTAL_SPACE, ROUND(SUM(bytes) / 1048576) AS TOTAL_SPACE_MB
      FROM dba_data_files
      GROUP BY tablespace_name, file_name) datas,
     (SELECT tablespace_name, SUM(bytes) AS FREE_SPACE, ROUND(SUM(bytes) / 1048576) AS FREE_SPACE_MB
       FROM dba_free_space
       GROUP BY tablespace_name) free
WHERE datas.tablespace_name = free.tablespace_name(+)
ORDER BY free.tablespace_name;

--Requete 3
SELECT  OWNER AS "SCHEMA",TABLESPACE_NAME AS "TABLESPACE", SEGMENT_TYPE AS "TYPE OBJET", Sum(BYTES) / 1024 / 1024    AS "TAILLE (Mb)" 
FROM    DBA_EXTENTS
WHERE OWNER='AUREL'
GROUP BY OWNER, TABLESPACE_NAME, SEGMENT_TYPE
ORDER BY OWNER, TABLESPACE_NAME;

--Requete 4 -------------------A COMPLETER
SELECT SEGMENT_NAME, SEGMENT_TYPE, TABLESPACE_NAME, BLOCKS
FROM DBA_SEGMENTS;
--DBMS_SPACE pour les blocs libres et utilisés.

--Requete 5 -------------------A VERIFIER
ALTER TABLE prop.FILM SHRINK SPACE COMPACT;

--Requete 6
select * from dba_sys_privs;
