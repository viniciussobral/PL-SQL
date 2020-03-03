CREATE OR REPLACE FUNCTION PARES_IMPARES
                                (     
                                P_VALOR IN NUMBER
                                ) RETURN VARCHAR2 IS
    V_SAIDA_PAR VARCHAR2(3) := 'PAR';
    V_SAIDA_IMPAR VARCHAR2 (5) := 'IMPAR';
BEGIN
  IF P_VALOR MOD 2 = 0 THEN
      RETURN V_SAIDA_PAR;
  ELSE 
      RETURN V_SAIDA_IMPAR;
  END IF;
END;

SELECT PARES_IMPARES (2) FROM DUAL;  --Eu posso executar a function dessa forma de banco de dados--


DECLARE
V_SAIDA VARCHAR(5);
BEGIN
  
  V_SAIDA:= PARES_IMPARES(7687687649); --Tem essa forma de fazer tbm --
  DBMS_OUTPUT.PUT_LINE(V_SAIDA);
  
END;

