--Insertion table CLIENTS
INSERT INTO CLIENTS (nom, prenom, adresse, ville, telephone, email) VALUES ('DURAND', 'PATRICK', '125 rue des moulineaux', 'Rouen', '0612131415', 'durandp@yahoo.fr');
INSERT INTO CLIENTS (nom, prenom, adresse, ville, telephone, email) VALUES ('CARIER', 'FANCOISE', '52 rue des loupette', 'Nice', '0654252525', 'cfrancoise@orange.fr');
INSERT INTO CLIENTS (nom, prenom, adresse, ville, telephone, email) VALUES ('LORIER', 'HUBERT', '69 route de pre', 'Marseille', '0745454545', 'hublor@free.fr');
INSERT INTO CLIENTS (nom, prenom, adresse, ville, email) VALUES ('KETLER', 'ROMAIN', '32 avenue des champs-elysees', 'Paris', 'krom@sfr.fr');
INSERT INTO CLIENTS (nom, prenom, adresse, ville, email) VALUES ('TYRUS', 'MARC', '9 rue des karier', 'Rennes', 'tmarc@wanadoo.fr');
INSERT INTO CLIENTS (nom, prenom, adresse, ville, telephone, email) VALUES ('LIKA', 'SANDRINE', '7 route de mars', 'Toulon', '0604060505', 'sandrinelika@orange.fr');
INSERT INTO CLIENTS (nom, prenom, adresse, ville, email) VALUES ('DELMAR', 'KATIA', '1356 impasse des liserai', 'Nice', 'delkatia@aol.fr');
INSERT INTO CLIENTS (nom, prenom, adresse, ville, telephone, email) VALUES ('DERUE', 'ELISABETH', '56 rue des princes', 'Toulouse', '0621212121', 'derue.eli@free.fr');
INSERT INTO CLIENTS (nom, prenom, adresse, ville, telephone, email) VALUES ('POIRIER', 'ALBERT', '96 avenue de la grande instance', 'Biaritz', '0632313029', 'apoirer@orange.fr');
INSERT INTO CLIENTS (nom, prenom, adresse, ville, email) VALUES ('FENOIS', 'JEAN', '32 boulevard des charcoups', 'Pau', 'fjean@sfr.fr');

--Insertion table FILM
INSERT INTO FILM (titre, genre, date_sortie) VALUES ('La grande vadrouille', 'Comedie', TO_DATE('1966', 'YYYY'));
INSERT INTO FILM (titre, genre, date_sortie) VALUES ('300', 'Action', TO_DATE('2006', 'YYYY'));
INSERT INTO FILM (titre, genre, date_sortie) VALUES ('Titanic', 'Romantique', TO_DATE('1997', 'YYYY'));
INSERT INTO FILM (titre, genre, date_sortie) VALUES ('Mission impossible', 'Action',  TO_DATE('1996', 'YYYY'));
INSERT INTO FILM (titre, genre, date_sortie) VALUES ('Matrix', 'Action', TO_DATE('1999', 'YYYY'));
INSERT INTO FILM (titre, genre, date_sortie) VALUES ('La ligne verte', 'Action',  TO_DATE('1999', 'YYYY'));
INSERT INTO FILM (titre, genre, date_sortie) VALUES ('Forest Gump', 'Comedie',  TO_DATE('1994', 'YYYY'));
INSERT INTO FILM (titre, genre, date_sortie) VALUES ('Armageddon', 'Catastrophe', TO_DATE('1998', 'YYYY'));
INSERT INTO FILM (titre, genre, date_sortie) VALUES ('Galadiator', 'Action',  TO_DATE('2000', 'YYYY'));
INSERT INTO FILM (titre, genre, date_sortie) VALUES ('Saw', 'Horreur',  TO_DATE('2004', 'YYYY'));

--Insertion table DVD
INSERT INTO DVD (id_f#, quantite) VALUES (0, 12);
INSERT INTO DVD (id_f#, quantite) VALUES (1, 25);
INSERT INTO DVD (id_f#, quantite) VALUES (2, 13);
INSERT INTO DVD (id_f#, quantite) VALUES (3, 16);
INSERT INTO DVD (id_f#, quantite) VALUES (4, 41);
INSERT INTO DVD (id_f#, quantite) VALUES (6, 19);
INSERT INTO DVD (id_f#, quantite) VALUES (7, 4);
INSERT INTO DVD (id_f#, quantite) VALUES (8, 6);
INSERT INTO DVD (id_f#, quantite) VALUES (9, 32);


--Insertion table BLUERAY
INSERT INTO BLUERAY (id_f#, quantite) VALUES (0, 6);
INSERT INTO BLUERAY (id_f#, quantite) VALUES (1, 42);
INSERT INTO BLUERAY (id_f#, quantite) VALUES (2, 23);
INSERT INTO BLUERAY (id_f#, quantite) VALUES (3, 96);
INSERT INTO BLUERAY (id_f#, quantite) VALUES (4, 12);
INSERT INTO BLUERAY (id_f#, quantite) VALUES (5, 54);
INSERT INTO BLUERAY (id_f#, quantite) VALUES (7, 69);
INSERT INTO BLUERAY (id_f#, quantite) VALUES (8, 18);
INSERT INTO BLUERAY (id_f#, quantite) VALUES (9, 20);


--Insertion table VHS
INSERT INTO VHS (id_f#, quantite) VALUES (0, 9);
INSERT INTO VHS (id_f#, quantite) VALUES (1, 5);
INSERT INTO VHS (id_f#, quantite) VALUES (2, 7);
INSERT INTO VHS (id_f#, quantite) VALUES (3, 4);
INSERT INTO VHS (id_f#, quantite) VALUES (4, 2);
INSERT INTO VHS (id_f#, quantite) VALUES (5, 9);
INSERT INTO VHS (id_f#, quantite) VALUES (7, 12);
INSERT INTO VHS (id_f#, quantite) VALUES (8, 1);

--Insertion table LOCATIONS
INSERT INTO LOCATIONS (id_cli#, id_dvd#, id_vhs#, qte_dvd, qte_vhs, date_debut_loc, date_fin_loc, prix_loc) 
VALUES (1, 3, 2, 1, 1, TO_DATE('25/02/2017', 'DD/MM/YYYY'), TO_DATE('28/04/2017', 'DD/MM/YYYY'), 9);
INSERT INTO LOCATIONS (id_cli#, id_dvd#, id_br#, qte_dvd, qte_br, date_debut_loc, date_fin_loc, prix_loc) 
VALUES (3, 2, 7, 2, 2, TO_DATE('14/03/2017', 'DD/MM/YYYY'), TO_DATE('04/08/2017', 'DD/MM/YYYY'), 27);
INSERT INTO LOCATIONS (id_cli#, id_dvd#, id_br#, id_vhs#, qte_dvd, qte_br, qte_vhs, date_debut_loc, date_fin_loc, prix_loc) 
VALUES (4, 2, 7, 3, 2, 2, 2, TO_DATE('10/02/2017', 'DD/MM/YYYY'), TO_DATE('14/07/2017', 'DD/MM/YYYY'), 36);
INSERT INTO LOCATIONS (id_cli#, id_br#, qte_br, date_debut_loc, date_fin_loc, prix_loc) 
VALUES (3, 3, 1, TO_DATE('10/01/2017', 'DD/MM/YYYY'), TO_DATE('18/12/2018', 'DD/MM/YYYY'), 8);
INSERT INTO LOCATIONS (id_cli#, id_dvd#, qte_dvd, date_debut_loc, date_fin_loc, prix_loc) 
VALUES (4, 6, 3, TO_DATE('14/03/2017', 'DD/MM/YYYY'), TO_DATE('04/08/2017', 'DD/MM/YYYY'), 14);
INSERT INTO LOCATIONS (id_cli#, id_vhs#, id_br#, qte_vhs, qte_br, date_debut_loc, date_fin_loc, prix_loc) 
VALUES (6, 0, 7, 2, 2, TO_DATE('13/02/2017', 'DD/MM/YYYY'), TO_DATE('28/09/2017', 'DD/MM/YYYY'), 27);
INSERT INTO LOCATIONS (id_cli#, id_dvd#, id_br#, qte_dvd, qte_br, date_debut_loc, date_fin_loc, prix_loc) 
VALUES (7, 2, 6, 3, 3, TO_DATE('23/04/2017', 'DD/MM/YYYY'), TO_DATE('01/06/2017', 'DD/MM/YYYY'), 47);
INSERT INTO LOCATIONS (id_cli#, id_br#, qte_br, date_debut_loc, date_fin_loc, prix_loc) 
VALUES (8, 2, 2, TO_DATE('23/02/2017', 'DD/MM/YYYY'), TO_DATE('07/11/2017', 'DD/MM/YYYY'), 12);

--Insertion table VENTE
INSERT INTO VENTE (id_cli#, id_dvd#, id_vhs#, qte_dvd, qte_vhs, date_vente, prix_vente) 
VALUES (5, 3, 0, 5, 1, TO_DATE('28/04/2017', 'DD/MM/YYYY'), 17);
INSERT INTO VENTE (id_cli#, id_dvd#, id_br#, qte_dvd, qte_br, date_vente, prix_vente) 
VALUES (2, 0, 5, 4, 2, TO_DATE('04/08/2017', 'DD/MM/YYYY'), 32);

COMMIT;

