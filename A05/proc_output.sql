CREATE OR ALTER PROC VERIFCIFICA_GAST0S @CPF VARCHAR(11), @YEAR VARCHAR(4), @NUM_NF INT OUTPUT, @GAST0S MONEY OUTPUT
AS BEGIN
    SELECT @GAST0S = SUM(INF.PREÇO*INF.QUANTIDADE) FROM [NOTAS FISCAIS]NF 
    JOIN [ITENS NOTAS FISCAIS]INF ON INF.NUMERO = NF.NUMERO
    WHERE YEAR(NF.[DATA]) = @YEAR AND NF.CPF = @CPF

    SELECT @NUM_NF = COUNT(NF.NUMERO) FROM [NOTAS FISCAIS]NF
    WHERE YEAR(NF.[DATA]) = @YEAR AND NF.CPF = @CPF
END

DECLARE @GASTOS MONEY
DECLARE @TOTAL INT
EXEC VERIFCIFICA_GAST0S '19290992743','2015',@NUM_NF = @TOTAL OUTPUT , @GAST0S = @GASTOS OUTPUT
PRINT @GASTOS 
PRINT @TOTAL



