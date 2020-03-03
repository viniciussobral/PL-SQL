--CRIA A TRIGGER--
CREATE OR REPLACE TRIGGER PERMISSAO_NEW after UPDATE ON AREA_REFERENCIA REFERENCING OLD AS ANTIGO NEW AS NOVO FOR EACH ROW --Coloca a tabela de referencia--
  BEGIN
    PACK.FONTE_ALTERAR(PROC_ID => :NOVO.ID_AREA, PROC_AREA => :NOVO.DESC_AREA, PROC_RESPONSAVEL => :NOVO.RESPONSAVEL, PROC_ID_EMP => :NOVO.ID_EMP); --Cria variaveis para os campos correspondesntes da tabela para depois utilizar na procedure--
    PACK.INSERCAO_COPIA;
  END;
--FINAL DA TRIGGER--


--DEPOIS QUE EU CRIEI O PACKAGE EU VOU CRIAR A PACKAGE COM O CORPO E SEUS RESPECTIVOS VALORES--
CREATE OR REPLACE PACKAGE BODY PACK AS

PROCEDURE FONTE_ALTERAR (PROC_ID IN INT, PROC_AREA IN VARCHAR2, PROC_RESPONSAVEL IN VARCHAR2, PROC_ID_EMP IN INT )IS

BEGIN
    INSERT INTO REFERENCIA_TEMPORARIA ( TEMP_ID , TEMP_AREA,TEMP_RESPONSAVEL, TEMP_ID_EMP, TEMP_DT_HR_ALTERACAO ) 
                                    VALUES (PROC_ID, PROC_AREA, PROC_RESPONSAVEL,PROC_ID_EMP, USER || ' ' || TO_CHAR(SYSDATE, 'DD-MM-YYYY HH24:MI:SS'));

END FONTE_ALTERAR;
  
PROCEDURE INSERCAO_COPIA IS
V_EMPRESA VARCHAR2(50);

  BEGIN
  
      SELECT ESTRANGEIRA_EMPRESA.NOME_EMPRESA INTO V_EMPRESA FROM ESTRANGEIRA_EMPRESA, REFERENCIA_TEMPORARIA WHERE ESTRANGEIRA_EMPRESA.ID_EMPRESA = REFERENCIA_TEMPORARIA.TEMP_ID_EMP;
      IF V_EMPRESA = 'Solve Plan' THEN
        INSERT INTO AREA_COPIA SELECT * FROM REFERENCIA_TEMPORARIA;
     END IF;
      DELETE FROM REFERENCIA_TEMPORARIA;
  END INSERCAO_COPIA;
END PACK;





SELECT * FROM EMPRESA_REFERENCIA;
       
        
        
       
       CREATE TABLE AREA_REFERENCIA(
         ID_AREA INT PRIMARY KEY,
         DESC_AREA VARCHAR2(30),
         RESPONSAVEL VARCHAR2(20),
         ID_EMP INT,
         FOREIGN KEY (ID_EMP) REFERENCES ESTRANGEIRA_EMPRESA (ID_EMPRESA) 
       
       );
       
       CREATE GLOBAL TEMPORARY TABLE REFERENCIA_TEMPORARIA (
       TEMP_ID INT ,
       TEMP_AREA VARCHAR2(30),
       TEMP_RESPONSAVEL VARCHAR2(20),
       TEMP_DT_HR_ALTERACAO VARCHAR(200),
       TEMP_ID_EMP INT
       
       );
       
       
       
       DROP TABLE AREA_COPIA;
       DROP TABLE ESTRANGEIRA_EMPRESA;
      DROP TABLE AREA_REFERENCIA;
      DROP TABLE REFERENCIA_TEMPORARIA;
       
       CREATE TABLE AREA_COPIA(
       ID_AREA INT ,
       DESC_AREA VARCHAR2(50),
       RESPONSAVEL VARCHAR2(20),
       TEMP_DT_HR_ALTERACAO VARCHAR(200),  
       ID_EMP INT
       
       
       );
       
       
      CREATE TABLE ESTRANGEIRA_EMPRESA( 
       ID_EMPRESA INT PRIMARY KEY,
       NOME_EMPRESA VARCHAR2(50),
       CNPJ VARCHAR2(15)         
       
       );
       
     

       
       INSERT INTO ESTRANGEIRA_EMPRESA (ID_EMPRESA, NOME_EMPRESA, CNPJ) VALUES (1,'Solve Plan','5722625743' );
       INSERT INTO ESTRANGEIRA_EMPRESA (ID_EMPRESA, NOME_EMPRESA, CNPJ) VALUES (2,'HOTMART','09653427' );

       UPDATE AREA_REFERENCIA SET RESPONSAVEL = 'JEOVANA' WHERE ID_AREA = 102;
       UPDATE AREA_REFERENCIA SET RESPONSAVEL = 'PAULO' WHERE ID_AREA = 103;
       
       
       INSERT INTO AREA_REFERENCIA values (101, 'Analitics ', 'Andr�', 1);
       INSERT INTO AREA_REFERENCIA values (102, 'Comercial ', 'Jo�o', 1);
       INSERT INTO AREA_REFERENCIA values (103, 'Vendas ', 'Marcelo',  2);
       INSERT INTO AREA_REFERENCIA values (104, 'Desenvolvimento ', 'Diego', 2);
       
       
        SELECT * FROM ESTRANGEIRA_EMPRESA;
        SELECT * FROM AREA_REFERENCIA;
        SELECT * FROM REFERENCIA_TEMPORARIA;
        SELECT * FROM AREA_COPIA;
        
        
        
       
        
        
          SELECT  * FROM  AREA_REFERENCIA, ESTRANGEIRA_EMPRESA  WHERE ID_EMP = ID_EMPRESA;
          
          SELECT  AREA_REFERENCIA.DESC_AREA, AREA_REFERENCIA.RESPONSAVEL , ESTRANGEIRA_EMPRESA.NOME_EMPRESA FROM  AREA_REFERENCIA, ESTRANGEIRA_EMPRESA  WHERE ID_EMP = ID_EMPRESA;


