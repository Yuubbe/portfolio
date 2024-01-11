create or replace synonym vt_abandon for prof.vt_abandon;
create or replace synonym vt_annee for prof.vt_annee;
create or replace synonym vt_app_nation for prof.vt_app_nation;
create or replace synonym vt_commentaire for prof.vt_commentaire;
create or replace synonym vt_coureur for prof.vt_coureur;
create or replace synonym vt_directeur for prof.vt_directeur;
create or replace synonym vt_etape for prof.vt_etape;
create or replace synonym vt_equ_succede for prof.vt_equ_succede;
create or replace synonym vt_equipe for prof.vt_equipe;
create or replace synonym vt_nat_succede for prof.vt_nat_succede;
create or replace synonym vt_nation for prof.vt_nation;
create or replace synonym vt_ordrequi for prof.vt_ordrequi;
create or replace synonym vt_parti_coureur for prof.vt_parti_coureur;
create or replace synonym vt_parti_equipe for prof.vt_parti_equipe;
create or replace synonym vt_sponsor for prof.vt_sponsor;
create or replace synonym vt_typeaban for PROF.vt_typeaban;
create or replace synonym vt_temps for prof.vt_temps;
create or replace synonym vt_temps_difference for prof.vt_temps_difference;
create or replace synonym vt_temps_2022 for prof.vt_temps_2022;
create or replace synonym vt_temps_2021 for prof.vt_temps_2021;
create or replace synonym vt_temps_2020 for prof.vt_temps_2020;
create or replace synonym vt_temps_2019 for prof.vt_temps_2019;
create or replace synonym vt_temps_2018 for prof.vt_temps_2018;
create or replace synonym vt_temps_2017 for prof.vt_temps_2017;
create or replace synonym vt_temps_2016 for prof.vt_temps_2016;
create or replace synonym vt_temps_2015 for prof.vt_temps_2015;
create or replace synonym vt_temps_2014 for prof.vt_temps_2014;
create or replace synonym vt_temps_2013 for prof.vt_temps_2013;
create or replace synonym vt_temps_2012 for prof.vt_temps_2012;
create or replace synonym vt_temps_2011 for prof.vt_temps_2011;
create or replace synonym vt_temps_2010 for prof.vt_temps_2010;
create or replace synonym vt_temps_2009 for prof.vt_temps_2009;
create or replace synonym vt_temps_2008 for prof.vt_temps_2008;
create or replace synonym vt_temps_2007 for prof.vt_temps_2007;
create or replace synonym vt_temps_2006 for prof.vt_temps_2006;
create or replace synonym vt_temps_2005 for prof.vt_temps_2005;
create or replace synonym vt_temps_2004 for prof.vt_temps_2004;
create or replace synonym vt_temps_2003 for prof.vt_temps_2003;
create or replace synonym vt_temps_2001 for prof.vt_temps_2001;
create or replace synonym vt_temps_2000 for prof.vt_temps_2000;
create or replace synonym vt_temps_1999 for prof.vt_temps_1999;
create or replace synonym vt_temps_1998 for prof.vt_temps_1998;
create or replace synonym vt_temps_1997 for prof.vt_temps_1997;
create or replace synonym vt_temps_1996 for prof.vt_temps_1996;
create or replace synonym vt_temps_1995 for prof.vt_temps_1995;
create or replace synonym vt_temps_1994 for prof.vt_temps_1994;
create or replace synonym vt_temps_1993 for prof.vt_temps_1993;
create or replace synonym vt_temps_1992 for prof.vt_temps_1992;
create or replace synonym vt_temps_1991 for prof.vt_temps_1991;
create or replace synonym vt_temps_1990 for prof.vt_temps_1990;
create or replace synonym vt_temps_1989 for prof.vt_temps_1989;
create or replace synonym vt_temps_1988 for prof.vt_temps_1988;
create or replace synonym vt_temps_1987 for prof.vt_temps_1987;
create or replace synonym vt_temps_1986 for prof.vt_temps_1986;
create or replace synonym vt_temps_1985 for prof.vt_temps_1985;
create or replace synonym vt_temps_1984 for prof.vt_temps_1984;
create or replace synonym vt_temps_1983 for prof.vt_temps_1983;
create or replace synonym vt_temps_1982 for prof.vt_temps_1982;
create or replace synonym vt_temps_1981 for prof.vt_temps_1981;
create or replace synonym vt_temps_1980 for prof.vt_temps_1980;
create or replace synonym vt_temps_1979 for prof.vt_temps_1979;
create or replace synonym vt_temps_1978 for prof.vt_temps_1978;
create or replace synonym vt_temps_1977 for prof.vt_temps_1977;
create or replace synonym vt_temps_1976 for prof.vt_temps_1976;
create or replace synonym vt_temps_1975 for prof.vt_temps_1975;
create or replace synonym vt_temps_1974 for prof.vt_temps_1974;

-- Saisir la requête suivante : select nom from vt_equipe; Exécuter et commenter
--le résultat

select nom from prof.vt_sponsor;
--donne tout les sponsors des équipes de l'histoire du tdf
--905 lignes

select nom from vt_sponsor;
--ne marche pas car on n'a pas la vue


Select Nom From prof.vt_Coureur;
--donne tout les noms des coureurs de l'histoire du tdf
--2447 lignes

select prenom from prof.vt_coureur;
--donne tout les prenoms des coureurs de l'histoire du tdf
--2447 lignes

select distinct prenom from prof.vt_coureur;
--enleve les doublons des coureurs du tdf
--1046 lignes

select * from prof.vt_coureur;
--donne tout les informations des coureurs de l'histoire du tdf
--2447 lignes

select nom ,annee_prem from prof.vt_coureur;
--donne le nom et la premiere participation des coureurs du tdf
--2447 lignes

select nom as n,annee_prem b from prof.vt_coureur;
--donne les information de nom de la colonne n et de l'année dans la colonne b
--2447 lignes

select nom as " Nom du sponsor " from prof.vt_sponsor;
--donne les info de nom dans la colonne sponsor
--905 lignes

select nom, prenom from prof.vt_sponsor;
--marche pas car pas prenom dans table

select nom,prenom,annee_naissance from prof.vt_coureur;
--donne nom prenom et année de naissance de tout les coureurs du tdf
--2447 lignes

select * from prof.vt_etape;
--marche pas car pas la vue


select prenom,nom,annee_prem-annee_naissance as age_prem from prof.vt_coureur;
--donne le prenom, le nom et l'annee de naissance dans une colonne age_prem des coureurs
--2447 lignes

select sysdate-datetape from prof.vt_etape;
--donne la date du système de la colonne datetape de la table etape
--1097 lignes

desc prof.vt_coureur; 

/*Exercice 1
--Etablir la liste des étapes dont le n° est compris entre 5 et 10. 
-- Afficher le n° de l'étape, la ville départ, la ville arrivée et la distance.*/
select n_etape, ville_d, ville_a, distance
from prof.vt_etape
where n_etape>=5 and n_etape<=10;



/*Exercice 2
Même requête que précédemment mais pour l'année 2022.*/
select n_etape, ville_d, ville_a, distance
from prof.vt_etape
where n_etape>=5 and n_etape<=10
and annee=2022;

/*Exercice 3
 Afficher la liste des étapes dont le n° est inférieur à 5 ou supérieur à 10 pour
 l'année 2022 (2 solutions). */
select n_etape,ville_d, ville_a
from prof.vt_etape
where (n_etape<5 or n_etape>10)
and annee=2022;

/* Exercice 4
 Établir la liste des étapes "prologue". Afficher le code pays départ, 
 le code pays arrivée, la ville départ, la ville arrivée, la distance, 
la vitesse moyenne, année et le type d'étape. La liste affichée sera présentée 
par ordre croissant de la distance. */
select code_cio_d, code_cio_a, ville_d, ville_a, distance, moyenne, annee, cat_code
from prof.vt_etape 
where n_etape='0'
order by distance asc;

/* Exercice 5
 5) Afficher les étapes qui répondent à l'une ou l'autre des restrictions 
 suivantes (une seule requête) :
    le premier caractère de la ville de départ est un 'B', 
    le dernier caractère de la ville de départ est un 'A',
    la ville de départ contient un 'U'. */
select *
from prof.vt_etape
where ville_d like 'B%';

select *
from prof.vt_etape
where ville_d like '%A';


select *
from prof.vt_etape
where ville_d like '%U%';


/* Exercice 6
  Afficher l'étape qui a été courue le 14 juillet 2022 */
select *
from prof.vt_etape
where datetape = to_date('14/07/2022', 'dd/mm/yyyy');


select * 
from prof.vt_etape;

/* Exercice 7
  Afficher le prénom, le nom et l’âge des coureurs ayant participé à leur premier tour en 2022. */
select prenom, nom, to_char(sysdate,'yyyy')-annee_naissance as age
from prof.vt_coureur where annee_prem=2022;


/*Exercice 8
  Donner la liste des sponsors dont le nom abrégé est vide avant 1986. */
select * from prof.vt_sponsor;

/* Exercice 9
 Afficher par ordre alphabétique croissant prénoms et par nom des 
 coureurs décroissant, la liste des coureurs dont le nom commence par un 'V'. */
select * from prof.vt_coureur where upper(nom) like 'V%';


/*Exercice 10
 Afficher la liste des nations des coureurs (app_nation) dont le pays d'origine a pour code : "SUI", "JAP" ou "POL". */
select * from prof.vt_coureur where app_nation='SUI' or app_nation='JAP' or app_nation='POL';

/* Exercie 11
 Donner la liste des coureurs ayant participé au Tour 2022. 
  Afficher le nom, le prénom, le numéro de dossard  le n°de l'équipe et le numéro de coureur. 
  Utiliser au moins 2 méthodes pour effectuer la jointure. */
select * from prof.vt_parti_coureur , prof.vt_coureur
where prof.vt_parti_coureur.n_coureur = prof.vt_coureur.n_coureur and annee=2022; 

select nom, prenom, n_dossard, n_equipe, ba.n_coureur 
from prof.vt_parti_coureur ju 
join prof.vt_coureur ba on ju.n_coureur = ba.n_coureur
where annee=2022;

select nom, prenom, n_dossard, n_equipe, n_coureur 
from PROF.vt_parti_coureur
join prof.vt_coureur using(n_coureur)
where annee=2022;


--Exercice 11 bis
select nom, prenom, n_dossard, n_equipe, n_coureur, annee 
from PROF.vt_parti_coureur
join prof.vt_coureur using(n_coureur)
where annee=2022 and n_dossard between 1 and 9;

--Exercice 11 ter
-- Même requête que précédemment mais en projetant en complément le nom du sponsor
select ba.nom, prenom, n_dossard, n_equipe, n_coureur, annee, bi.nom
from PROF.vt_parti_coureur ju 
join prof.vt_coureur ba using(n_coureur)
join prof.vt_sponsor bi using (n_equipe, n_sponsor)
where annee=2022 and n_dossard between 1 and 9 ;

select ba.nom, prenom, n_dossard, bi.n_equipe, ba.n_coureur, annee, bi.nom
from prof.vt_parti_coureur ju, prof.vt_coureur ba, prof.vt_sponsor bi
where ju.n_coureur = ba.n_coureur and ju.n_equipe = bi.n_equipe 
and ju.n_sponsor = bi.n_sponsor
and annee=2022 and n_dossard between 1 and 9;

--Exercice 12
select *
 from prof.vt_coureur 
JOIN prof.vt_parti_coureur on prof.vt_coureur.n_coureur =prof.vt_parti_coureur.n_coureur
where (n_dossard between 25 and 27)
and (nom like '%RO%' or nom like '%OR%')
order by annee;

select *
from prof.vt_coureur 
join prof.vt_parti_coureur using (n_coureur)
where n_dossard between 25 and 27
and (nom like '%RO%' or nom like '%OR%');

--Exercice 13
select cou.nom as nom_coureur, prenom, n_sponsor, n_equipe 
from prof.vt_coureur cou
join prof.vt_parti_coureur par using (n_coureur)
join prof.vt_sponsor spo using (n_equipe, n_sponsor)
where annee = 2022 and jeune = 'o'
order by nom_coureur;

--Exercice 13 bis
select cou.nom as nom_coureur, prenom, spo.nom 
from prof.vt_coureur cou
join prof.vt_parti_coureur par using (n_coureur)
join prof.vt_sponsor spo using (n_equipe, n_sponsor)
where annee = 2022 and jeune = 'o'
order by nom_coureur, spo.nom;

--Exercice 14
select cou.nom as nom_coureur, prenom, annee, c_typeaban, commentaire
from prof.vt_coureur cou
join prof.vt_parti_coureur par using (n_coureur)
join prof.vt_sponsor spo using (n_equipe, n_sponsor)
join PROF.vt_abandon aba using (annee)
where annee = 2022
order by nom_coureur;

select * from prof.vt_coureur;
select * from prof.vt_sponsor;
select * from prof.vt_parti_coureur;
select * from PROF.vt_abandon;


--Exercice 15

select distinct c1.nom, c1.prenom
from prof.vt_coureur c1, PROF.vt_coureur c2
where c1.nom = c2.nom
and c1.n_coureur <> c2.n_coureur
order by c1.nom,c1.prenom;


--Exercice 16

select distinct e1.ville_d, e1.ville_a, e1.n_etape, e1.n_comp, e1.annee 
from PROF.vt_etape e1
join prof.vt_etape e2 on e1.ville_a = e2.ville_a
where e1.n_etape <> e2.n_etape 
or e1.n_comp <> e2.n_comp 
or e1.annee <> e2.annee
order by ville_a, ville_d, n_etape, n_comp;

--Exercice 17 
select distinct c_typeaban from prof.vt_abandon a1;

--Exercice 18
select * 
from prof.vt_abandon, prof.vt_coureur, prof.vt_parti_coureur, prof.vt_sponsor,
prof.vt_parti_equipe, prof.vt_directeur;

select *
from prof.vt_abandon aba
join prof.vt_coureur cou using (n_coureur)
join prof.vt_parti_coureur pcou using (n_coureur, annee)
join prof.vt_sponsor spo using (n_sponsor);



--Exercice 19
select to_char(nom) as nom from prof.vt_coureur
intersect
select to_char(prenom) from prof.vt_coureur
order by nom; 
--Affiche Rien

select to_char(nom) from prof.vt_coureur
intersect
select upper(to_char(prenom)) from prof.vt_coureur; 
--Affiche les noms en majuscule

select ville_d from prof.vt_etape
intersect
select datetape from prof.vt_etape;
--Erreur d'expression

select to_char(ville_d) from prof.vt_etape
intersect
select to_char(datetape) from prof.vt_etape;


select to_char(datetape,'DD') as lejour from prof.vt_etape
intersect
select n_etape as lejour from prof.vt_etape
order by 1;

select to_char(datetape,'DD') as lejour from prof.vt_etape
intersect
select substr(n_etape,1,2) as lejour from prof.vt_etape
order by 1;

select * from prof.vt_typeaban
minus
select * from prof.vt_abandon;

select nom from prof.vt_coureur
intersect
select datetape from prof.vt_etape;

select nom,prenom from prof.vt_coureur
intersect
select nom,prenom from prof.vt_directeur;

select prof.vt_typeaban.c_typeaban from PROF.vt_typeaban
minus 
select prof.vt_abandon.c_typeaban from PROF.vt_abandon;

--Exercice 19 bis
select c_typeaban, libelle from PROF.vt_typeaban
minus
select c_typeaban, libelle from PROF.vt_abandon
join prof.vt_typeaban using (c_typeaban);

--Exercice 20
select ville_d from prof.vt_etape
intersect
select ville_a from prof.vt_etape;

--Exercice 21
select n_coureur from prof.vt_parti_coureur
where annee = 2022
minus
select n_coureur from prof.vt_abandon
where annee = 2022; 

--Exercice 22
select n_coureur from prof.vt_parti_coureur where annee=to_char(sysdate,'yyyy')-9 intersect
select n_coureur from prof.vt_parti_coureur where annee=to_char(sysdate,'yyyy')-8 intersect
select n_coureur from prof.vt_parti_coureur where annee=to_char(sysdate,'yyyy')-7 intersect
select n_coureur from prof.vt_parti_coureur where annee=to_char(sysdate,'yyyy')-6 intersect
select n_coureur from prof.vt_parti_coureur where annee=to_char(sysdate,'yyyy')-5 intersect
select n_coureur from prof.vt_parti_coureur where annee=to_char(sysdate,'yyyy')-4 intersect
select n_coureur from prof.vt_parti_coureur where annee=to_char(sysdate,'yyyy')-3 intersect
select n_coureur from prof.vt_parti_coureur where annee=to_char(sysdate,'yyyy')-2 intersect
select n_coureur from prof.vt_parti_coureur where annee=to_char(sysdate,'yyyy')-1 intersect
select n_coureur from prof.vt_parti_coureur where annee=to_char(sysdate,'yyyy');

--Exercice 23
(
  select n_equipe, n_sponsor from prof.vt_ordrequi 
  where numero_ordre<=10
  minus
  select n_equipe, n_sponsor from prof.vt_parti_equipe
)
union
(
  select n_equipe, n_sponsor from prof.vt_ordrequi 
  where numero_ordre>20
  intersect
  select n_equipe, n_sponsor from prof.vt_parti_equipe
);


--Exercice 24

select * from vt_etape;

select n_etape, ville_a, ville_d, 
'la distance est :' as libelle,
distance as resultat from vt_etape
where n_etape between 8 and 12
and annee=2022
union
select n_etape, ville_a, ville_d, 
'la moyenne est :' as libelle,
moyenne as resultat from vt_etape
where n_etape between 8 and 12
and annee=2022;

--Exercice 25

create view  v_aban_25 
as select annee, n_equipe, n_sponsor, n_coureur, n_dossard
from vt_parti_coureur
join vt_coureur using (n_coureur)
join vt_sponsor using (n_sponsor, n_equipe)
join vt_abandon using (n_coureur, annee)
where jeune = 'o';

select * from vt_abandon;

select * from vt_coureur;




SELECT * FROM Exoplus1A;
SELECT * FROM Exoplus1B;

select * from exoplus1A,exoplus1B;
select e1.* from exoplus1A e1,exoplus1B e2; 

select * from exoplus1A, exoplus1B 
where exoplus1a.numville = exoplus1B.numville;

select * from exoplus1a
join exoplus1b
on exoplus1a.numville = exoplus1b.numville;

select * from exoplus1A join exoplus1b
using (NUMVILLE);

select * from exoplus1a 
natural join exoplus1b;

select * from exoplus1a
left join exoplus1b on exoplus1a.numville = exoplus1b.numville;

select * from exoplus1a
right join exoplus1b on exoplus1a.numville = exoplus1b.numville;

select * from exoplus1a
full join exoplus1b on exoplus1a.numville = exoplus1b.numville;

--exercice 26 

desc v_aban_25;

select * from v_aban_25 order by n_coureur;
select * from v_aban_25 order by 4;
select * from v_aban_25 where rownum < 5 order by n_coureur;

select * from user_views;
select * from all_views where owner like 'ETU1%' ;
select * from all_users;

select * from user_catalog; 
select distinct table_type from user_catalog; 
select * from user_objects; 
select distinct object_type from user_objects; 
PURGE recyclebin;



drop view v_aban_jeune;
rename v_aban_25 to v_aban_jeune;
select * from v_aban_jeune;

-- exercice 27

select c.nom as nom_coureur,prenom,n_dossard,s.nom as nom_sponsor
from vt_coureur c
join v_aban_jeune v on v.n_coureur=c.n_coureur
join vt_sponsor s on s.n_equipe=v.n_equipe and s.n_sponsor=v.n_sponsor
where annee=2022;

--exercice 28 
create or replace view v_req13 as
select nom, prenom, n_equipe, n_sponsor
from prof.vt_coureur par using(n_coureur)
where annee=2022 and jeune = 'o'
order by nom;

create or replace view v_req14 as 
select prenom, nom, c_typeaban
from prof.vt_coureur using(n_coureur)
left join prof.vt_abandon aba using(n_coureur,annee)
where annee=2022;

--exercice 29
select * from v_req13;

select * from v_req14;

--exercice 30

select v.*,e.nom as nom_equipe from v_req13 v
Join Vt_Sponsor e on v.N_Equipe=e.N_Equipe and v.n_Sponsor = e.n_sponsor
order by e.nom, v.nom;

select v.nom as nom_coureur, peznom, n_equipe,n_sponsor, e.nom as nom_sponspr 
from v_req13 v
join vt_sponsor e using(n_equipe,n_sponsor)
order by e.nom, v.nom;

-- exercice 31
select nom from vt_coureur where n_coureur in
(
    select n_coureur from vt_abandon where=2022
)
order by annee_naissance;

-- exercice 32

select * from vt_coureur where n_coureur not in
(
    select n_coureur from vt_parti_coureur
    where annne > 2000
)
order by annee_naissance;

-- exercice 33
select nom,prenom from vt_coureur where n_coureur in
(   
    select n_coureur from vt_parti _coureur
    where (n_equipe,n_sponsor) in 
    (
        select n_equipe,n_sponsor from vt_sponsor
        where nom = 'AG2R-CITROEN TEAM'
        )
);


-- exercice 34

select nom,prenom,code_cio from vt_coureur where n_coureur in
join vt_app_nation using(n_coureur)
where n_coureur in
(   
    select n_coureur from vt_parti _coureur
    where (n_equipe,n_sponsor) in 
    (
        select n_equipe,n_sponsor from vt_sponsor
        where nom = 'AG2R-CITROEN TEAM'
        )
);

-- exercice 35


select * from vt_coureur where n_coureur in
(
    select n_coureur from vt_parti_coureur
    where annee=2022 and (n_coureur,annee) not in
    (
        select n_coureur,annee from vt_abandon
    )
);
-- exercice 36 
select * from vt_coureur where n_coureur in
(
    select n_coureur from vt_abandon
    where c_typeaban='NP' and n_etape = 1
);

select * from vt_coureur where n_coureur in
(
  select n_coureur from vt_abandon
    where c_typeaban='NP'
    and (annee, n_coureur) not in
    (
        select distinct annee, n_coureur from vt_temps
    )
);
--Exercice 37
select n_coureur from vt_coureur
join vt_temps using (n_coureur)
where n_etape = 1 and annee = 2022 and rang_arrivee between 1 and 20
order by nom;

select * from vt_coureur
where n_coureur in
(
    select n_coureur from vt_temps
    where n_etape=1 and annee=2022 and rang_arrivee between 1 and 20
)
order by nom;


--Exercice 38
select co.nom as nom_coureur,prenom, ap.nom as nom_sponsor from vt_coureur co
join vt_parti_coureur using (n_coureur)
join vt_sponsor ap using(n_equipe, n_sponsor)
where (n_coureur,annee) in
(
    select n_coureur, annee from vt_temps_2005
    where rang_arrivee=1
)
order by co.nom;

--Exercice 38 bis
select nom from vt_sponsor
where (n_equipe, n_sponsor) in
(
    select n_equipe, n_sponsor from vt_parti_coureur
    where (n_coureur, annee) in
    (
        select n_coureur, annee from vt_temps
        where annee=2005 and rang_arrivee = 1
    )
);

--Exercice 39

select * from vt_sponsor
where (n_sponsor, n_coureur, annee) in
(
    select n_equipe, n_sponsor  from vt_parti_coureur
    where(annee, n_coureur) in
    (
        select annee, n_coureur from vt_temps where rang_arrivee = 1  
        and (annee, n_etape, n_comp) in
        (
            select annee, n_etape, n_comp
            from vt_etape
            where ville_d in ('PARIS', 'GAP', 'PORNIC')
        )
    )
);

--Exercice 40

select * from vt_etape
where annee = 2022 and distance >= all
(
    select distance from vt_etape where annee=2022
);


--Exercice 41
select * from vt_etape
where annee = 2022 and moyenne <= all
(
    select moyenne from vt_etape where annee=2022
);

        

-- exoplus 4

Drop table exoplus4A;
Drop table exoplus4B;
create table exoplus4A(es4a_num int, es4a_nom char(20));
create table exoplus4B(es4b_num int, es4b_ville char(20));
insert into exoplus4A values (1,'Robert');
insert into exoplus4A values (2,'Sylvian');
insert into exoplus4A values (2,'Laurent');
insert into exoplus4A values (4,'Christelle');
insert into exoplus4A values (4,'Philippe');
insert into exoplus4A values (4,'Philippe');
insert into exoplus4A values (6,'Fabienne');
insert into exoplus4B values (1,'Caen');
insert into exoplus4B values (2,'Ifs');
insert into exoplus4B values (3,'Troarn');
insert into exoplus4B values (4,'Fleury');
commit;


select * from exoplus4A where es4a_num =
(
 select es4b_num from exoplus4B where es4b_ville='Fleury'
);

-- cette requette affiche les numéros correspondant à la ville de Fleury et le nom de ces personnes


select * from exoplus4A where es4a_num =
(
 select es4b_num from exoplus4B where es4b_ville ='Flers'
);
--cette requette affiche les numéros correspondant à la ville de Flers et le nom de ces personnes

select * from exoplus4b where es4b_num =
(
    select es4a_num from exoplus4A where es4a_nom ='Philippe'
);

Drop table Exoplus1A;
Drop table Exoplus1B;
create table Exoplus1A(numVille int, nom char(10));
create table Exoplus1B(numVille int, ville char(10));
insert into Exoplus1A values (1,'Léa');
insert into Exoplus1A values (1,'Léon');
insert into Exoplus1A values (10,'Bernard');
insert into Exoplus1A values (100,'Jacques');
insert into Exoplus1A values (999,'Sylvie');
insert into Exoplus1B values (1,'Caen');
insert into Exoplus1B values (10,'Paris');
insert into Exoplus1B values (98,'Bordeaux');
commit;







create table auteur(aut_num int, aut_nom char(50), aut_prenom char(50));
create table livre(liv_num int, liv_titre char(100), liv_nb_pages int, aut_num int);
insert into auteur values (1, 'HUGO', 'Sylvain');
insert into auteur values (2, 'DURAS', 'Fabienne');
insert into auteur values (3, 'MAUPASSANT', 'Stéphane');
insert into auteur values (4, 'MUDA', 'Robert');
insert into auteur values (5, 'ZOLA', 'Christelle');
insert into livre values (1, 'Les misérables', 610, 1);
insert into livre values (2, 'L Amant', 405, 2);
insert into livre values (3, 'Moderato cantabile', 128, 2);
insert into livre values (4, 'Campus 3 by night', 120, 4);
insert into livre values (6, 'Thérèse Raquin', 190, 6);


select * from auteur, livre;

select aut_prenom from auteur where aut_nom = '1';

select * from auteur, livre where aut_nom = liv_titre;

select * from auteur, livre where auteur.aut_num = livre.aut_num;

select * from auteur aut left join livre liv on aut.aut_num = liv.aut_num;

select * from livre where aut_num >=1 or aut_num <=4 and liv_num = 4



drop table exoplus2;
create table exoplus2(num number(3), nom varchar2(20));

insert into exoplus2 values (1,'Julian');
insert into exoplus2 values (2,'Julian');
insert into exoplus2 values (3,'lance');
insert into exoplus2 values (4,'Romain');
insert into exoplus2 values (5,'Romain');
insert into exoplus2 values (6,'Romain');
insert into exoplus2 values (7,'Thibaut');
insert into exoplus2 values (8,'Thibaut');
commit;



select * from exoplus2;

select * from exoplus2 e1, exoplus2 e2;

select e1.nom from exoplus2 e1 join exoplus2 e2 on e1.nom = e2.nom;

select e1.nom from exoplus2 e1
join exoplus2 e2 on e1.nom = e2.nom
where e1.num <> e2.num;

select distinct e1.nom from exoplus2 e1
join exoplus2 e2 on e1.nom = e2.nom
where e1.num <> e2.num;


Drop table Exoplus3A;
Drop table Exoplus3B;
Drop table Exoplus3C;
create table Exoplus3A (num number(3), nom varchar2(10), section varchar2(1) );
create table Exoplus3B (num number(3), nom varchar2(10), section varchar2(1));
create table Exoplus3C (numSection number(3), section varchar2(1), libelle varchar2(100));
insert into Exoplus3A values (1,'Robert','A');
insert into Exoplus3A values (2,'Simone','A');
insert into Exoplus3A values (3,'Robert','A');
insert into Exoplus3A values (4,'Fabienne','A');
insert into Exoplus3A values (5,'Christelle','A');
insert into Exoplus3A values (6,'Laurent','A');
insert into Exoplus3A values (7,'Robert','A');
insert into Exoplus3A values (8,'Robert','A');
insert into Exoplus3A values (9,'Simone','A');
insert into Exoplus3B values (1,'Robert','B');
insert into Exoplus3B values (2,'Robert','B');
insert into Exoplus3B values (3,'Laurent','B');
insert into Exoplus3B values (4,'Philippe','B');
insert into Exoplus3B values (5,'Sylvian','B');
insert into Exoplus3B values (6,'Laurent','B');
insert into Exoplus3B values (7,'Christelle','B');
insert into Exoplus3B values (8,'Christelle','B');
insert into Exoplus3C values (1,'A','Sport');
insert into Exoplus3C values (2,'B','Musique');
insert into Exoplus3C values (3,'C','Théatre');
commit;


select nom  from Exoplus3A;
-- justifier le nombre de lignes
-- 9 lignes

select nom  from Exoplus3A
union 
select nom  from Exoplus3A;
-- justifier le nombre de lignes
-- 5 lignes car disrtinct auto

select nom  from Exoplus3A
intersect 
select nom  from Exoplus3A;
-- justifier le nombre de lignes
-- 5 lignes car disrtinct auto

select nom  from Exoplus3A
minus 
select nom  from Exoplus3A;
-- justifier le nombre de lignes
-- 0 ligne


select *  from Exoplus3A
intersect 
select *  from Exoplus3B;
-- Pas de lignes identiques dans ces 2 tables ?

select num,nom  from Exoplus3A
intersect 
select num,nom  from Exoplus3B;
-- 1,robert et 6 laurent sont dans les 2 tables

select nom  from Exoplus3A
intersect 
select nom  from Exoplus3B;
-- Chistelle, laurent et Robert sont dans les 2 tables

select num, nom  from Exoplus3A
intersect  
select nom  from Exoplus3B;
-- Pourquoi cette requête ne fonctionne pas ?

select num, nom  from Exoplus3A
intersect  
select nom, num  from Exoplus3B;
-- Pourquoi cette requête ne fonctionne pas ?

select num  from Exoplus3A
intersect  
select nom   from Exoplus3B;
-- Pourquoi cette requête ne fonctionne pas ?

select *  from Exoplus3A
union 
select *  from Exoplus3B;
-- Justifier les résultats ?

select num,nom  from Exoplus3A
union 
select num,nom  from Exoplus3B;
-- Justifier les résultats ?

select nom  from Exoplus3A
union 
select nom  from Exoplus3B;
-- La somme des noms sans les doublons ?

select nom  from Exoplus3A
union all
select nom  from Exoplus3B;
-- La somme des noms avec les doublons ?

select *  from Exoplus3A
minus 0
select *  from Exoplus3B;
-- Justifier les résultats ?

select num,nom  from Exoplus3A
minus 
select num,nom  from Exoplus3B;
-- Justifier les résultats ?

select nom  from Exoplus3A
minus
select nom  from Exoplus3B;
-- Justifier les résultats ?

-- Afficher la section et le libellé pour lesquels aucune section n'est présente dans les autres tables !
select section,libelle  from Exoplus3C
minus
select section,libelle  from Exoplus3B
join Exoplus3C using(section)
minus
select section,libelle  from Exoplus3A
join Exoplus3C using(section);

-- Partie 2
-- A quoi correspond 'Monsieur' dans la requête ?
select 3+4,'Monsieur' ,nom  as sonnom from vt_coureur where n_coureur<150;

--Quel sera le nom de la deuxième colonne si on projette cette requête ?
select 'Monsieur' as titre,nom as x from vt_coureur where n_coureur<150
union
select to_char(nom) as essai,'titi' from vt_coureur where n_coureur<150;

--Quel sera le nom de la deuxième colonne si on projette cette requête ?
select nom,'toto'   from vt_coureur where n_coureur<150
union
select nom,'titi' as res2 from vt_coureur where n_coureur<150;

--Pourquoi l'alias est utile ici  ?
select nom,'toto' as res from vt_coureur where n_coureur<150
union
select nom,'titi' as res from vt_coureur where n_coureur<150;

--Justifier le résultat de cette requête  ?
select nom from vt_coureur
union
select datetape from vt_etape;

describe vt_coureur;
desc vt_etape;

--Quel est l'intérêt de la fonction to_char  ?
select to_char(nom) from vt_coureur
union
select to_char(moyenne) from vt_etape;

--Quel est l'intérêt de la fonction upper  ?
select upper(nom) from vt_coureur
intersect
select upper(to_char(prenom)) from vt_coureur;

--Justifier le résultat de cette requête  ?
select upper(nom),n_coureur from vt_coureur
intersect
select upper(to_char(prenom)),n_coureur from vt_coureur;

select n_equipe,n_sponsor from vt_sponsor spo
minus
select n_equipe,n_sponsor   from vt_parti_coureur;

select n_equipe,n_sponsor,nom from vt_sponsor spo
minus
select n_equipe,n_sponsor,nom   from vt_parti_coureur;

select n_equipe,n_sponsor,nom from vt_sponsor spo
minus
select n_equipe,n_sponsor,nom   from vt_parti_coureur
join vt_sponsor using(n_equipe,n_sponsor);

-------------------------------------------------------------------------------
-- utilisation de rownum et de rowid---

select rownum,nom,prenom from vt_coureur where nom like 'V%';

select  co.* from vt_coureur co where rownum <= 3;

select rowid,nom,prenom,n_coureur from vt_coureur;
select length(rowid) as longueur,nom,prenom,n_coureur from vt_coureur;

select to_char(sysdate,'hh24:mi') from dual;

select to_date('07/2019/14','mm/yyyy/dd') from dual;

select to_char(datetape,'dd/mm/yyyy HH:mi:ss') from vt_etape;
select to_char(datetape,'dd mm*yyyy') from vt_etape;

select to_char(datetape,'yyy') from vt_etape;


select * from vt_etape where to_char(datetape,'dd') = '14';

select round(sysdate - to_date('01/02/1999','dd/mm/yyyy'),1) from dual; 




desc dual;  
-- dummy = factice
--1.1
select 1 un,2,3,4 from dual;   -- le "un" correspond au nom de la colonne 1 et affiche 2, 3 , 4
--1.2
select user from dual; -- affiche l'utilisateur connectée
--1.3
select ' create user ETU1_'||level ||';' valeur from dual connect by level <= 90; -- créer des utilisateurs de 1 à 90 inclus 
--1.4
select 'chateau' exemple from dual; -- affiche la colonne exemple avec chateau inscrit dedans
--1.5
select 'Monsieur ' || nom as exemple from vt_coureur; -- affiche toutes les personnes contenant le mot Monsieur
--1.6
select 'chat'||'eau' exemple from dual;
select prenom||' '||nom exemple from vt_coureur where prenom like 'Rob%' or prenom like '%ert'; 
--1.7
--1.8
select 1 + 3 from dual;
--1.9
select 1 + 3 as resultat from dual;
--1.10
select 1 - 3 as résultat from dual;
--1.11
select 1 / 0 as résultat from dual;
--1.12
select annee,ville_d,ville_a,moyenne from vt_etape where moyenne is null;
select annee,ville_d,ville_a,nvl(moyenne,0) as moy from vt_etape where moyenne is null;
select annee,ville_d,ville_a,nvl(to_char(moyenne),'INCONNUE') as moy
from vt_etape where moyenne is null;
select annee,ville_d,ville_a,nvl(to_char(moyenne),'inconnue') as moy from vt_etape where annee=1996;
select 10 +10+10+ null as résultat from dual;
select 10+10+10 + nvl(null,9) as résultat from dual;







select sysdate+10.1 as dater from dual;
select to_char(sysdate+10.1,'dd/mm/yyyy hh24:mi:ss') from dual;
select to_date('2010','yyyy') from dual;
select to_char(sysdate,'dd/mm/yyyy HH24:mi:ss') from dual;
select to_char(sysdate,'dd/mm/yy') from dual;
select to_char(sysdate,'dd') from dual;
--2.2
select to_char(datetape,'dd/mm/yyyy HH:mi:ss') from vt_etape;
select datetape from vt_etape ;
--2.3
select to_char(datetape,'YYYY') +1 from vt_etape;
--2.4
select to_date('15/10/1985','DD/MM/YYYY') from dual;
select to_date('10-15-1985','MM-DD-YYYY') from dual;
select to_char(to_date('10-15-1985','MM-DD-YYYY'),'dd/MM/YYYY') from dual;

select to_date('2005','yyyy') from dual;
select sysdate - to_char(datetape,'dd/mm/yyyy') from vt_etape ;
select sysdate - datetape from vt_etape where annee=2017;
select sysdate - to_date('01/04/1985','dd/mm/yyyy') from dual ;
select round(( sysdate - to_date('01/04/1985','dd/mm/yyyy'))/365,3) as age from dual ;
select to_char(sysdate,'year') from dual ;
select to_char(sysdate,'month') from dual ;
select to_char(sysdate,'day') from dual ;
drop table essaiDate;
create table essaiDate
(
 date1 date,
 date2 timestamp
);
insert into essaiDate values (sysdate,sysdate);
select * from essaiDate;
--2.5
select datetape from vt_etape where n_etape=1 and annee=2017;
--2.6
select datetape from vt_etape where n_etape=21 and annee=2017;


select
(
 (select datetape from vt_etape where n_etape=20 and annee=2009)
 -
 (select datetape from vt_etape where n_etape=1 and annee=2009)
)
as nbJours from dual;
select
(
 (select to_number(to_char(datetape,'DD')) from vt_etape where n_etape=20 and annee=2009)
 -
 (select to_number(to_char(datetape,'DD')) from vt_etape where n_etape=1 and annee=2009)
)
as nbJours from dual;

select datetape from vt_etape
where annee=2022
and n_etape >=all
(
    select n_etape from vt_etape where annee=2022
);

-- 43

select * from vt_coureur cou
where n_coureur in
(
    select n_coureur from vt_app_nation
    where code_cio in
    (
        select code_cio_d from vt_etape
        where (annee,n_etape,n_comp) in
        (
            select annee,n_etape,n_comp from vt_temps_2017 tp
            where rang_arrivee = 1
            and cou.n_coureur = tp.n_coureur
        )
    )
);
--44

select * from vt_coureur cou where exists
(
    select 0 from vt_temps
    where rang_arrivee = 1 and annee= 2022
    and n_coureur = cou.n_coureur
);

-- 45

select * from vt_coureur where rownum <= 5 order by nom desc;

--46
select * from vt_etape where cat_code = 'PRE';
select distinct(cat_code) from vt_etape;

--57 a

-- solution 3
select c_typeaban, count(*) as nb_par_type, total_abandon
from vt_abandon,(select count(*) as total abandon from vt_abandon where annee=2022)
where annee = 2022
group by c_typeaban, total_abandon;




-- solution 4

select c_typeaban, count(*) as nb_par_type,
(select count(*) from vt_abandon where annee=2022) as total_abandon
from vt_abandon
where annee =2022
group by c_typeaban;



--58

select nom, prenom, count(*) as nb_participation
from vt_coureur 
join vt_parti_coureur using(n_coureur)
having count(*) >= 10
group by nom, prenom
order by nb_participation desc;

--59

select nom, prenom, count(*) as nb_victoire
from vt_coureur
join vt_temps using(n_coureur)
where rang_arrivee = 1
group by nom, prenom
having count(*) = 34;



-- 60 

create or replace view v60 as 
select co.*, total_seconde from vt_coureur co
join vt_temps_2022 tp on tp.n_coureur= co.n_coureur
where n_etape =
(
    select max(n_etape)-1 from vt_temps_2022
);

--61 a

create or replace view v61_depart as
select n_equipe,n_sponsor,nom,count(*) as nb_depart
from vt_parti_coureur
join vt_sponsor using(n_equipe,n_sponsor)
where annee = 1998
group by n_equipe,n_sponsor,nom;

select n_equipe,n_sponsor,nom,nb_depart from v61_depart;
-- 61b
create or replace view v61_arrivee as
select n_equipe,n_sponsor,nom,count(*) as nb_arrives
from vt_parti_coureur
join vt_sponsor using(n_equipe,n_sponsor)
where annee=1998 and (n_coureur,annee) not in
(
    select n_coureur,annee from vt_abandon
)
group by n_equipe,n_sponsor,nom
order by nb_arrives desc;

select n_equipe,n_sponsor,nom,nb_arrives from v61_arrivee;

-- 61 c 
create or replace view v61_abandon as
select n_equipe,n_sponsor,nom,count(*) as nb_aban from vt_sponsor
join vt_parti_coureur using (n_equipe,n_sponsor)
join vt_abandon using (annee,n_coureur) where annee = 1998
group by n_equipe,n_sponsor,nom;

select n_equipe,n_sponsor,nom, nb_aban from v61_abandon;

-- 61 D

select n_equipe,n_sponsor,nom, 'depart' as libelle, nb_depart as nb from v61_depart
union
select n_equipe,n_sponsor,nom, 'arrivés' as libelle, nb_arrives as nb from v61_arrivee
union
select n_equipe,n_sponsor,nom, 'abandon' as libelle, nb_aban as nb from v61_abandon
order by nom,libelle desc;


--61 e 
select n_equipe,n_sponsor,nom, nb_depart, nvl(nb_arrives,0), nvl(nb_aban,0) from v61_depart
left join v61_arrivee using(n_equipe,n_sponsor,nom)
left join v61_abandon using (n_equipe,n_sponsor,nom)
order by 3;

--61 f 

select * from v61_arrivee
where nb_arrives >=all
(
    select nb_arrives from v61_arrivee
);

--62 a

select * from vt_temps_difference where annee = 2022;


select n_coureur, nom, prenom, sum(total_seconde) as TEMPS, difference 
from vt_coureur
join vt_temps using(n_coureur,annee)
lef join vt_temps_difference using(n_coureur,annee)
where annee=2022 and (n_coureur,annee) not in
(
    select n_coureur, annee from vt_abandon
)
group by n_coureur, nom, prenom, difference
order by TEMPS;



select n_coureur,nom,annee from vt_temps join vt_coureur using (n_coureur)
where
rang_arrivee < 0
group by n_coureur,nom,annee
order by nom,annee;

select n_coureur,nom,prenom,sum(total_seconde) + nvl(difference,0) as 'TEMPS TOTAL'
from vt_coureur
join vt_temps using(n_coureur);


select annee,n_coureur, as n_coureur, nom, prenom, sum(total_seconde) +nvl(difference,0) as TEMPS TOTAL
from vt_coureur
join vt_temps using(n_coureur)
join vt_parti_coureur using (n_coureur,annee)
left join vt_temps_difference using (n_coureur,annee)
where(n_coureur,annee) not in
(
    select n_coureur,annee from vt_abandon
)
and annee=2005 and valide='R'
group by annee,n_coureur,nom,prenom,difference;


select annee,'-----' as n_coureur, '-----' as nom, '-----' as prenom, sum(total_seconde) +nvl(difference,0) as TEMPS TOTAL
from vt_coureur
join vt_temps using (n_coureur)
join vt_parti_coureur using(n_coureur, annee)
left join vt_temps_difference using (n_coureur,annee)
where (n_coureur,annee) not in
(
    select n_coureur,annee from vt_abandon
)
and annee=2005 and valide = 'O'
group by annee,n_coureur, nom, prenom, difference
union
select annee,'-----', substr(nom,1,2)||'-----', substr(prenom,1,2)||'-----', sum(total_seconde) +nvl(difference,0) as TEMPS TOTAL
from vt_coureur
join vt_temps using (n_coureur)
join vt_parti_coureur using(n_coureur, annee)
left join vt_temps_difference using (n_coureur,annee)
where (n_coureur,annee) not in
(
    select n_coureur,annee from vt_abandon
)
and annee=2005 and valide = 'R'
group by annee,nom,prenom, difference
order by TEMPS_TOTAL





