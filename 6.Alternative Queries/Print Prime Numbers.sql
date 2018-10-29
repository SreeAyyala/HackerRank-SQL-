DECLARE @p INT = 2, @q INT, @ans VARCHAR(MAX)
WHILE (@p < 1001)
BEGIN
    SET @q = 2
    WHILE (@q * @q <= @p)
    BEGIN
        IF (@p % @q = 0) BREAK            
        ELSE SET @q = @q + 1
    END
    IF (@q * @q > @p) SET @ans = CONCAT(@ans, @p, '&')
    SET @p = @p + 1
END
PRINT LEFT(@ans, LEN(@ans)-1)