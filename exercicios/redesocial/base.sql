/* Lógico_1: */

CREATE TABLE PESSOA (
    NOMPES VARCHAR,
    DATANASPES DATE,
    EMAILPES VARCHAR,
    SENHA VARCHAR,
    CODPES INTEGER PRIMARY KEY
);

CREATE TABLE FOTO (
    CODFOT INTEGER PRIMARY KEY,
    DESFOT VARCHAR,
    FK_PESSOA_CODPES INTEGER
);

CREATE TABLE MENSAGEM (
    CODMSG INTEGER PRIMARY KEY,
    DATA DATE,
    HORA TIME,
    TEXTO VARCHAR,
    FK_PESSOA_CODPES INTEGER
);

CREATE TABLE AMIGOS (
    FK_PESSOA_CODPES INTEGER,
    FK_PESSOA_CODPES_ INTEGER
);

CREATE TABLE MARCA (
    FK_PESSOA_CODPES INTEGER,
    FK_FOTO_CODFOT INTEGER
);

CREATE TABLE CURTE (
    FK_MENSAGEM_CODMSG INTEGER,
    FK_PESSOA_CODPES INTEGER
);
 
ALTER TABLE FOTO ADD CONSTRAINT FK_FOTO_1
    FOREIGN KEY (FK_PESSOA_CODPES)
    REFERENCES PESSOA (CODPES)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE MENSAGEM ADD CONSTRAINT FK_MENSAGEM_1
    FOREIGN KEY (FK_PESSOA_CODPES)
    REFERENCES PESSOA (CODPES)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE AMIGOS ADD CONSTRAINT FK_AMIGOS_0
    FOREIGN KEY (FK_PESSOA_CODPES)
    REFERENCES PESSOA (CODPES)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE AMIGOS ADD CONSTRAINT FK_AMIGOS_1
    FOREIGN KEY (FK_PESSOA_CODPES_)
    REFERENCES PESSOA (CODPES)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE MARCA ADD CONSTRAINT FK_MARCA_0
    FOREIGN KEY (FK_PESSOA_CODPES)
    REFERENCES PESSOA (CODPES)
    ON DELETE SET NULL ON UPDATE CASCADE;
 
ALTER TABLE MARCA ADD CONSTRAINT FK_MARCA_1
    FOREIGN KEY (FK_FOTO_CODFOT)
    REFERENCES FOTO (CODFOT)
    ON DELETE SET NULL ON UPDATE CASCADE;
 
ALTER TABLE CURTE ADD CONSTRAINT FK_CURTE_0
    FOREIGN KEY (FK_MENSAGEM_CODMSG)
    REFERENCES MENSAGEM (CODMSG)
    ON DELETE SET NULL ON UPDATE CASCADE;
 
ALTER TABLE CURTE ADD CONSTRAINT FK_CURTE_1
    FOREIGN KEY (FK_PESSOA_CODPES)
    REFERENCES PESSOA (CODPES)
    ON DELETE SET NULL ON UPDATE CASCADE;
