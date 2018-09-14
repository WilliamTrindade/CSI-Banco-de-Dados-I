--CRIAÇÃO DAS TABELAS--
CREATE TABLE PESSOA (CODPESSOA INT, NOMEPESSOA VARCHAR(100), PRIMARY KEY(CODPESSOA));
CREATE TABLE PROFESSOR (CODPROF INT, HORA_AULA INT, PRIMARY KEY(CODPROF), FOREIGN KEY(CODPROF) REFERENCES PESSOA(CODPESSOA));
CREATE TABLE ALUNO (CODAL INT, MEDIA INT, PRIMARY KEY(CODAL), FOREIGN KEY(CODAL) REFERENCES PESSOA(CODPESSOA));

--INSERÇÃO DE PESSOAS--
INSERT INTO PESSOA VALUES (100, 'Daniel');
INSERT INTO PESSOA VALUES (200, 'Ana');

--RELACIONAR AS PESSOAS A SUA ESPECIALIZAÇÃO--
INSERT INTO PROFESSOR (CODPROF, HORA_AULA) VALUES (100, 15);
INSERT INTO ALUNO (CODAL, MEDIA) VALUES (200, 7);

--CONSULTA DE PESSOAS (PROFESSOR E ALUNO)--
SELECT * FROM PROFESSOR, PESSOA WHERE PROFESSOR.CODPROF = PESSOA.CODPESSOA;

SELECT * FROM ALUNO, PESSOA WHERE ALUNO.CODAL = PESSOA.CODPESSOA;
