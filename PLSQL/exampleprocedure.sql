     
     CREATE TABLE CRUD (
     ID NUMBER NOT NULL,
     NOME VARCHAR(40) NOT NULL,
     CONSTRAINT CRUD_PK PRIMARY KEY (ID)
     
     
     );
     
     DROP TABLE CRUD;
     
     --CRIANDO UMA PROCEDURE PARA EXECUTAR UM (CRUD) CREATE, READ, UPDATE E DELETE--
     CREATE OR REPLACE PROCEDURE PRC_CRUD (
         P_CRUD IN VARCHAR2,
         P_ID IN OUT NUMBER,
         P_NOME IN OUT VARCHAR2,
         P_SAIDA OUT VARCHAR2
     
     
     )IS
     
  BEGIN 
      
       IF P_CRUD = 'C' THEN --CREATE PARA REALIZAR O INSERT--
            INSERT INTO CRUD VALUES(P_ID, P_NOME);
            P_SAIDA := 'INSERT REALIZADA COM SUCESSO!!';
        
       ELSIF P_CRUD = 'R' THEN  --READ : PARA REALIZAR O SELECT--
           SELECT ID, NOME
           INTO P_ID, P_NOME
           FROM CRUD
           WHERE ID = P_ID;
           P_SAIDA := 'SELECT EXECUTANDO COM SUCESSO!!';
      
      ELSIF   P_CRUD = 'U' THEN --UPDATE NA TABELA CRUD--
                UPDATE CRUD
                SET NOME = P_NOME
                 WHERE ID = P_ID;
            P_SAIDA := 'UPDATE EXECUTADO COM SUCESSO!!';
            
      ELSIF   P_CRUD = 'D' THEN --DELETE: PARA EXCLUIR O P_ID DA TABELA CRUD--
            DELETE FROM CRUD WHERE ID = P_ID;
            P_SAIDA := 'DELETE EXECTADO COM SUCESSO!'
      
      ELSE 
         P_SAIDA := 'FAVOR DIGITAR UMA DAS OPÇÕES: C,R,U,D';
         
         END IF;
         END;
          
          
      --CRIANDO UM BLOCO PL/SQL PARA EXECUTAR A PROCEDURE--     
          DECLARE 
             V_ACAO VARCHAR2(1) := '&C_R_U_D?';
             V_ID NUMBER := 1;
             V_NOME VARCHAR2(30) := '&NOME';
             V_SAIDA VARCHAR2(50);
             
         BEGIN
             PRC_CRUD(V_ACAO, V_ID, V_NOME, V_SAIDA);
             DBMS_OUTPUT.PUT_LINE(V_SAIDA);
             
         END;     
         
         
         
         
          SELECT *  FROM CRUD;
          
      
      
      
      
      
      
      
      
      
      
      
      
      
      
           
           
           
       
                                