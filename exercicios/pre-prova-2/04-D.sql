SELECT NOMTIPO, NOMPROD 
FROM TIPO 
LEFT JOIN PRODUTO 
ON TIPO.CODTIPO = PRODUTO.CODTIPO;
