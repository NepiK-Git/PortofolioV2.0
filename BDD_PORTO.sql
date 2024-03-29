Drop database if exists BDD_PORTO;
Create database BDD_PORTO;
Use BDD_PORTO;

Create table utilisateurs (
    idu int(3)not null auto_increment,
    pseudo varchar (80),
    prenomu varchar(80),
    nomu varchar(80),
    mdp varchar (50),
    primary key(idu)
) ENGINE=InnoDB;

Create table posts (
    idp int(4)not null auto_increment,
    contenu varchar (200),
    idu int(3),
    primary key(idp),
    foreign key (idu) references utilisateurs (idu)
) ENGINE=InnoDB;

Create table categorie (
    idc int(3)not null auto_increment,
    libelle varchar (50),
    primary key(idc)
) ENGINE=InnoDB;

Create table projets (
    idcp int(11) not null auto_increment,
    id_modal varchar(50),
    titre varchar (50),
    description varchar (50),
    lien varchar (255),
    primary key(idcp)
) ENGINE=InnoDB;

Insert into projets values
(1, 'ai', 'Ilustrator', 'Logiciel', '<img class="img-fluid" src="images/PNG/ilustaror1.png" weight="100%" height="100%">'),
(2, 'an', 'Mes Gifs', 'Gifs', '<img class="img-fluid" src="images/PNG/animate_logo1.png">'),
(3, 'uiux', 'Mes Projets', 'Projets', '<img class="img-fluid" src="images/logo_uiux.png">'),
(4, 'dgd', 'Mes Documents', 'Documents', '<img class="img-fluid" src="images/PNG/dgd.png">');

Create table images (
    idi int(3)not null auto_increment,
    lienImg varchar (200),
    primary key(idi)
) ENGINE=InnoDB;

Insert into utilisateurs values
(null, "NepiK", "Lucas", "LABASTUGUE", "f2576e40979756d226dfb585e58486a2883c4e48");
