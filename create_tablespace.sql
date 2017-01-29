----------------------------------------------------------------
---------------------Creation des tablespaces--------------------
----------------------------------------------------------------
CREATE TABLESPACE tbs_datas
DATAFILE '/home/aurelien/Documents/M1IFI/tbs_oradata/projectbdd/tbs_datas.dbf' SIZE 25M
EXTENT MANAGEMENT LOCAL AUTOALLOCATE;

CREATE TABLESPACE tbs_indexes
DATAFILE '/home/aurelien/Documents/M1IFI/tbs_oradata/projectbdd/tbs_indexes.dbf' SIZE 10M
EXTENT MANAGEMENT LOCAL AUTOALLOCATE;

CREATE TABLESPACE tbs_users
DATAFILE '/home/aurelien/Documents/M1IFI/tbs_oradata/projectbdd/tbs_user.dbf' SIZE 20M
EXTENT MANAGEMENT LOCAL UNIFORM SIZE 200k;

CREATE TEMPORARY TABLESPACE tbs_temp
TEMPFILE '/home/aurelien/Documents/M1IFI/tbs_oradata/projectbdd/tbs_temp.dbf' SIZE 5M
EXTENT MANAGEMENT LOCAL UNIFORM SIZE 100k;
