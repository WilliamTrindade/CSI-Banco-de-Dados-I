-- FUNCINARIO E DEPTO --
CREATE TABLE DEPTO (CODD INT, NOMED VARCHAR(50), PRIMARY KEY(CODD));
CREATE TABLE FUNC (CODF INT, NOMEF VARCHAR(50), SALARIO INT, CODD INT, PRIMARY KEY(CODF), FOREIGN KEY (CODD) REFERENCES DEPTO(CODD));

INSERT INTO DEPTO VALUES (1, 'DEP1');
INSERT INTO DEPTO VALUES (2, 'DEP2');

INSERT INTO FUNC VALUES (1, 'wil', 2000, 2);
INSERT INTO FUNC VALUES (2, 'iri', 2000, 1);
INSERT INTO FUNC VALUES (3, 'ewe', 2000, 2);

-- CRIA SELECT --
SELECT * FROM FUNC, DEPTO WHERE FUNC.CODD = DEPTO.CODD;

-- CRIA VIEW E USA O SELECT --
CREATE VIEW FUNC1 AS SELECT CODF, NOMEF, CODD FROM FUNC;

SELECT * FROM FUNC1;

