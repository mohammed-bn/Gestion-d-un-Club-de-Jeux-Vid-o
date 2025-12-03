CREATE TABLE
    momber (
        id int PRIMARY KEY AUTO_INCREMENT,
        full_name varchar(50) not null,
        age int not null,
        date_inscription date NOT null
    );

CREATE TABLE
    emprants (
        id int PRIMARY KEY AUTO_INCREMENT not null,
        momber_id int,
        date_debu date,
        jeu_id varchar(50),
        date_fin date,
        FOREIGN KEY (momber_id) REFERENCES momber (id) FOREIGN KEY (jeu_id) REFERENCES jeux (id)
    );

CREATE TABLE
    jeux (
        id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
        nom_jeux varchar(50),
        typee varchar(50),
        studio varchar(50),
        date_debu date
    );

CREATE TABLE
    Tournoi (
        id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
        jeu_id varchar(50),
        date_debut date,
        date_fin date,
        FOREIGN key (jeu_id) references jeux (id)
    );

CREATE TABLE
    result (
        id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
        momber_id int,
        tournoi_id int,
        recomponce varchar(50),
        FOREIGN key (momber_id) references momber (id),
        FOREIGN key (tournoi_id) references Tournoi (id)
    );

insert into
    momber (full_name, age, date_inscription)
values
    ("amin amrani", 24, 12 / 20 / 2024),
    ("anas allouch", 24, 12 / 20 / 2024),
    ("walid kamali", 24, 12 / 20 / 2024),
    ("oussama najar", 24, 12 / 20 / 2024),
    ("ishak raki", 24, 12 / 20 / 2024)
insert into
    jeux (nom_jeux, typee, studio, date_debu)
values
    (
        "foot ball",
        "collective",
        "zinan",
        10 / 03 / 2023
    ),
    (
        "bassket ball",
        "collective",
        "amin",
        10 / 03 / 2024
    ),
    ("drive", "indivédual", "LALAI", 10 / 09 / 2020),
    ("CARTONIT", "collective", "zinan", 10 / 03 / 2024),
    (
        "APARCHINO ball",
        "INDIVIDUAL",
        "LAWMAV",
        4 / 12 / 2027
    )


select * from momber
select * from jeux
