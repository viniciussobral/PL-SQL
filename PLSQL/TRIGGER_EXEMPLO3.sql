CREATE OR REPLACE TRIGGER TRIGGER_MUDANCA 
    AFTER UPDATE ON TB_ORIGEM REFERENCING OLD AS ANTIGO NEW AS NOVO FOR EACH ROW
        
        BEGIN
          
          INSERT INTO TB_ATUALIZAR 
             VALUES (:ANTIGO.ID, :NOVO.ID, :ANTIGO.NOME, :NOVO.NOME, :ANTIGO.IDADE, :NOVO.IDADE, USER, TO_CHAR(SYSDATE, 'DD-MM-YYYY HH24:MI:SS'));
       END;
       
       
       
       CREATE TABLE TB_ORIGEM(
       ID INT,
       NOME VARCHAR2(50),
       IDADE INT,
       USUARIO_ATUAL VARCHAR2(30),
       DATA_HORA_ATUAL VARCHAR2(60)
       
       );
       
       DROP TABLE TB_ORIGEM;
       
       
       CREATE TABLE TB_ATUALIZAR(
       ANTIGO_ID INT,
       NOVO_ID INT,
       NOME_ANTIGO VARCHAR2(50),
       NOME_ATUAL VARCHAR2(50),
       IDADE_ANTIGA INT,
       IDADE_ATUAL INT,
       USUARIO_ATUAL VARCHAR2(30),
       DATA_HORA_ATUAL VARCHAR2(60)    
       
       
       );
       
       
       DROP TABLE TB_ATUALIZAR;
       
       INSERT INTO TB_ORIGEM (ID, NOME, IDADE, USUARIO_ATUAL, DATA_HORA_ATUAL) VALUES (1,'JAQUELINE SILVA','27',  USER, TO_CHAR(SYSDATE, 'DD-MM-YYYY HH24:MI:SS') );
       INSERT INTO TB_ORIGEM (ID, NOME, IDADE, USUARIO_ATUAL, DATA_HORA_ATUAL) VALUES (2,'LARISSA SOUZA','22', USER, TO_CHAR(SYSDATE, 'DD-MM-YYYY HH24:MI:SS'));
       INSERT INTO TB_ORIGEM (ID, NOME, IDADE, USUARIO_ATUAL, DATA_HORA_ATUAL) VALUES (3,'EMANUEL JOS�','52', USER, TO_CHAR(SYSDATE, 'DD-MM-YYYY HH24:MI:SS'));
       INSERT INTO TB_ORIGEM (ID, NOME, IDADE, USUARIO_ATUAL, DATA_HORA_ATUAL) VALUES (4,'CLEIDE SOFIA','60', USER, TO_CHAR(SYSDATE, 'DD-MM-YYYY HH24:MI:SS'));
       INSERT INTO TB_ORIGEM (ID, NOME, IDADE, USUARIO_ATUAL, DATA_HORA_ATUAL) VALUES (5,'MARISE MIRANDA','43', USER, TO_CHAR(SYSDATE, 'DD-MM-YYYY HH24:MI:SS'));
       
       
       UPDATE TB_ORIGEM SET NOME = 'ALISSON CRUZ', IDADE = '31' WHERE ID = 1;
       UPDATE TB_ORIGEM SET NOME = 'KAYTE SILVA', IDADE = '20' WHERE ID = 2;
       UPDATE TB_ORIGEM SET NOME = 'JULIANA BARROS', IDADE = '25' WHERE ID = 3;
       
       
       SELECT * FROM TB_ATUALIZAR;
       SELECT * FROM TB_ORIGEM;
             
        
         