

CREATE OR REPLACE FUNCTION FUNCTION1(

P_VALOR IN NUMBER

) RETURN VARCHAR2 IS
V_SAIDA VARCHAR(5);

BEGIN 
   IF P_VALOR MOD 2 = 0 Then
      V_SAIDA := 'PAR';
   ELSE 
      V_SAIDA := 'IMPAR';
   END IF;
   RETURN (V_SAIDA);
 END FUNCTION1;
 
 
 
 
 CREATE TABLE TARGET (A INT, B VARCHAR(10));
 CREATE TABLE SAMPLE_OLD (A INT, B VARCHAR(10));
 CREATE TABLE SAMPLE_NEW (A INT, B VARCHAR(10));
 CREATE TABLE SAMPLE (A INT, B VARCHAR(10));
 
 INSERT INTO TARGET  VALUES (1, 'OldValue');
 INSERT INTO TARGET VALUES (2, 'OldValue');
 INSERT INTO TARGET VALUES (5, 'OldValue');
 
 SELECT * FROM TARGET;
 
 
 CREATE TRIGGER TEST_TRIGGER_VAR_UPDATE
 AFTER UPDATE ON TARGET 
 REFERENCING ROW mynewrow, OLD ROW myoldrow
 FOR EACH ROW 
 BEGIN 
    INSERT INTO SAMPLE_new Values (:mynewrow.a, mynewrow.b);
    INSERT INTO SAMPLE_old Values (:myoldrow.a, myoldrow.b);
    
    INSERT INTO SAMPLE VALUES (0, 'TRIGGER');
    
    END;
    
    
    UPDATE TARGET SET B 
    
    
    
 
 
 
 






























 
 