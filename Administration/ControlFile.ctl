--Pour executer le script, il faut taper dans la console windows ou linux la commande
--sqlldr 'nom / mdp @ cweb.ddns.net' control='ControlFile.ctl' log='LoadResults.log'
--Si sqlldr n'est pas reconnu, il faut installer le client Oracle

----------------------------------------------------------------------
-- SQL-Loader Control File
----------------------------------------------------------------------
OPTIONS 
   (skip=0                                               
   , rows=5                                            
   , errors=10                                             
-- , load=5                                                
   , direct=false                                          
   , parallel=false                                        
   )
----------------------------------------------------------------------
LOAD DATA
   INFILE        'table.csv'                          
   BADFILE       'LoadResults_BAD.log'                     
   DISCARDFILE   'LoadResults_DISCARDED.log'               
   APPEND                                                  
   INTO TABLE     CLIENTS                       
-- WHEN           id_num <> ''                             
----------------------------------------------------------------------
Fields Terminated    by ","            --a changer selon les separateurs de champs, ici on a des virgules                     
Optionally Enclosed  by '"'                                
Trailing Nullcols                                          
----------------------------------------------------------------------
                                                           
   ( ID_CLIENT
   , NOM                                         
   , PRENOM  
   , ADRESSE                    
   , VILLE
   , TELEPHONE
   , EMAIL
   )
----------------------------------------------------------------------
