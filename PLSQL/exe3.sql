    
   
   SELECT * FROM USUARIO;
   
   
    CREATE TABLE USUARIO(
    ID INT PRIMARY KEY,
    NOME VARCHAR(40),
    IDADE INT

    );
    
    DROP TABLE USUARIO;
    
    INSERT INTO USUARIO (ID,NOME,IDADE) VALUES (3000,'JOAO PEDRO', 55);
    
    
    --PROCEDURE DA TABELA USUARIO--
    
    CREATE OR REPLACE PROCEDURE PRC_NOME_IDADE (
    P_NOME IN OUT VARCHAR2,
    P_IDADE IN OUT NUMBER
    
   
    ) IS
        V_NEXT_ID  NUMBER;
      BEGIN 
            SELECT MAX (ID) + 1 INTO V_NEXT_ID FROM USUARIO; 
      
      
      
            INSERT INTO USUARIO VALUES(V_NEXT_ID, P_NOME, P_IDADE);
            

         END;
         
         --fim da procedure--  
         
         
       --EXECUÇÃO DO BLOCO PL/SQL PARA PEGAR OS DADOS DOS USUARIO--  
         DECLARE 
         
         V_NOME VARCHAR2(30) := '&NOME';
         V_IDADE NUMBER := &IDADE;
         
         
         BEGIN 
         
             PRC_NOME_IDADE( V_NOME, V_IDADE );
             DBMS_OUTPUT.PUT_LINE(' BOM DIA SR(A) ' || V_NOME || ' VOCE TEM ' || V_IDADE || ' ANOS DE IDADE' );
             
         END; 
       --fim do declare--  
         
         
         
         
         
         
         
         
         
         
         
         
         
         

         
         
      
         
         
         
         
         
         
         
         
        
        
    
    
    
    
    
      
            
            
    
    
    