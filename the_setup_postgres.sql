DROP TABLE IF EXISTS spj CASCADE;
DROP TABLE IF EXISTS s CASCADE;
DROP TABLE IF EXISTS p CASCADE;
DROP TABLE IF EXISTS j CASCADE;

CREATE TABLE s (
    imp_id CHAR(6) PRIMARY KEY,
    imp_name VARCHAR(20),
    rating INTEGER,
    imp_city VARCHAR(20)
);

CREATE TABLE p (
    detail_id CHAR(6) PRIMARY KEY,
    detail_name VARCHAR(20),
    color VARCHAR(20),
    weight INTEGER,
    detail_city VARCHAR(20)
);

CREATE TABLE j (
    prod_id CHAR(6) PRIMARY KEY,
    prod_name VARCHAR(20),
    prod_city VARCHAR(20)
);

CREATE TABLE spj (
    imp_id CHAR(6),
    detail_id CHAR(6),
    prod_id CHAR(6),
    quantity INTEGER,
    PRIMARY KEY (imp_id, detail_id, prod_id), -- Composite Primary Key
    FOREIGN KEY (imp_id) REFERENCES s (imp_id) ON DELETE CASCADE,
    FOREIGN KEY (detail_id) REFERENCES p (detail_id) ON DELETE CASCADE,
    FOREIGN KEY (prod_id) REFERENCES j (prod_id) ON DELETE CASCADE
);

INSERT INTO s VALUES ('S1', 'Smith', 20, 'London');
INSERT INTO s VALUES ('S2', 'Jones', 10, 'Paris');
INSERT INTO s VALUES ('S3', 'Blake', 30, 'Paris');
INSERT INTO s VALUES ('S4', 'Clark', 20, 'London');
INSERT INTO s VALUES ('S5', 'Adams', 30, 'Athens');

INSERT INTO p VALUES ('P1', 'Nut', 'Red', 12, 'London');
INSERT INTO p VALUES ('P2', 'Bolt', 'Green', 17, 'Paris');
INSERT INTO p VALUES ('P3', 'Screw', 'Blue', 17, 'Rome');
INSERT INTO p VALUES ('P4', 'Screw', 'Red', 14, 'London');
INSERT INTO p VALUES ('P5', 'Cam', 'Blue', 12, 'Paris');
INSERT INTO p VALUES ('P6', 'Cog', 'Red', 19, 'London');

INSERT INTO j VALUES ('J1', 'Disk', 'Paris');
INSERT INTO j VALUES ('J2', 'Tape', 'Rome');
INSERT INTO j VALUES ('J3', 'Reader', 'Athens');
INSERT INTO j VALUES ('J4', 'Printer', 'Athens');
INSERT INTO j VALUES ('J5', 'Floppy', 'London');
INSERT INTO j VALUES ('J6', 'Terminal', 'Oslo');
INSERT INTO j VALUES ('J7', 'Cartridge', 'London');

INSERT INTO spj VALUES ('S1', 'P1', 'J1', 200);
INSERT INTO spj VALUES ('S1', 'P1', 'J4', 700);
INSERT INTO spj VALUES ('S2', 'P3', 'J1', 400);
INSERT INTO spj VALUES ('S2', 'P3', 'J2', 200);
INSERT INTO spj VALUES ('S2', 'P3', 'J3', 200);
INSERT INTO spj VALUES ('S2', 'P3', 'J4', 500);
INSERT INTO spj VALUES ('S2', 'P3', 'J5', 600);
INSERT INTO spj VALUES ('S2', 'P3', 'J6', 400);
INSERT INTO spj VALUES ('S2', 'P3', 'J7', 800);
INSERT INTO spj VALUES ('S2', 'P5', 'J2', 100);
INSERT INTO spj VALUES ('S3', 'P3', 'J1', 200);
INSERT INTO spj VALUES ('S3', 'P4', 'J2', 500);
INSERT INTO spj VALUES ('S4', 'P6', 'J3', 300);
INSERT INTO spj VALUES ('S4', 'P6', 'J7', 300);
INSERT INTO spj VALUES ('S5', 'P2', 'J2', 200);
INSERT INTO spj VALUES ('S5', 'P2', 'J4', 100);
INSERT INTO spj VALUES ('S5', 'P5', 'J5', 500);
INSERT INTO spj VALUES ('S5', 'P5', 'J7', 100);
INSERT INTO spj VALUES ('S5', 'P6', 'J2', 200);
INSERT INTO spj VALUES ('S5', 'P1', 'J4', 100);
INSERT INTO spj VALUES ('S5', 'P3', 'J4', 200);
INSERT INTO spj VALUES ('S5', 'P4', 'J4', 800);
INSERT INTO spj VALUES ('S5', 'P5', 'J4', 400);
INSERT INTO spj VALUES ('S5', 'P6', 'J4', 500);

