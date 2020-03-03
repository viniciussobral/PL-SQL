
--IF--
DECLARE 
  V_NUM NUMBER := &NUM;
  V_NOME VARCHAR(30):= '&NOME';

  BEGIN
  IF 0 <> V_NUM THEN --Se o n�mero for diferente de 0 ele ir� printar essa mensagem--
        DBMS_OUTPUT.PUT_LINE('N�mero diferente de zero ' || ' Senhor '||  V_NOME   || ' O n�mero digitado foi: ' || v_NUM );
        
        ELSE             --Se o n�mero for = 0 ele ir� printar essa mensagem--
           DBMS_OUTPUT.PUT_LINE('N�mero igual a zero ' || ' O n�mero digitado foi:' || v_NUM );
     
     END IF;
     
     END;
     
     
     
--ELSE IF --
     DECLARE 
     V_NUM  NUMBER := &N1;
     BEGIN
        IF V_NUM >= 20   AND V_NUM <= 23  THEN
          DBMS_OUTPUT.PUT_LINE('Temperatura Ideal');
          
        ELSIF   V_NUM < 20     THEN
               DBMS_OUTPUT.PUT_LINE('Muito frio');
              
        ElSE 
               DBMS_OUTPUT.PUT_LINE('Muito calor');
              
        END IF;
        END;
     
     

--LOOP--     
     DECLARE 
         V_CONT NUMBER := 0;
         
         BEGIN
            LOOP
            V_CONT := V_CONT + 1;
       DBMS_OUTPUT.PUT_LINE('N�mero: ' || V_CONT);
       EXIT WHEN V_CONT = 5;
       
       END LOOP;
       
       END;
       
       
       --Outro exemplo de loop--
       
       --declara��o continue VOCE SETA UM VALOR NO CONTADOR E ELE CONTINUA A CONTAR A PARTIR DESSE VALOR DAI DEPOIS VOCE DA UM EXIT PARA ELE PARAR EM UM CERTO VALOR--
        DECLARE 
          V_CONT NUMBER := 0;
            BEGIN
               LOOP
                  V_CONT := V_CONT + 1;
                  IF V_CONT < 10 THEN
                        CONTINUE;
                     END IF;
                     DBMS_OUTPUT.PUT_LINE('N�MERO: ' || V_CONT);
                    
                    EXIT WHEN V_CONT = 20;
                      END LOOP;
                    END;
                    
                    ----
                    
                    
       --Outra forma � o continue when (Quando)--           
       
      DECLARE 
          V_CONT NUMBER := 0;
      
      BEGIN
        LOOP
           V_CONT := V_CONT + 1;
           
           CONTINUE WHEN V_CONT < 3;
           DBMS_OUTPUT.PUT_LINE('N�MERO: ' || V_CONT);
           EXIT WHEN V_CONT = 5;
           
           END LOOP;
           END;
           
           
           --WHILE --
           
           DECLARE 
               V_CONT NUMBER := 0;
           BEGIN
               WHILE V_CONT < 5 LOOP
               V_CONT := V_CONT + 1;
               
               DBMS_OUTPUT.PUT_LINE('WHILE: ' || V_CONT);
               END LOOP;
             END;
             
             
             --FOR LOOP--
             
          DECLARE 
             V_CONT NUMBER := 0;
             
             BEGIN
                FOR  X IN 1..9 LOOP
                  DBMS_OUTPUT.PUT_LINE('N�MERO:  ' || X);
                  
                  END LOOP;
               END;
               
               
               --FOR LOOP REVERSE ELE PEGA O MAIOR N�MERO E VAI NA ORDEM DESCRESCENTE--
               
               BEGIN 
                 FOR X IN REVERSE 1..30 LOOP
                     DBMS_OUTPUT.PUT_LINE('LOOP REVERSO: ' || X);
                     
                     END LOOP;
                     END;
          
          
          
          --Reajuste do salario de 25%--     
        DECLARE 
          V_SALARIO NUMBER := 724;
          V_REAJUSTE NUMBER := 0;
          
          BEGIN 
          
          V_REAJUSTE := V_SALARIO * 25 / 100;
          V_SALARIO := V_SALARIO + V_REAJUSTE;
          
           DBMS_OUTPUT.PUT_LINE('O Valor do SAL�RIO MININO REAJUSTADO com 25% VAI DE R$ 724.00, PARA : '|| V_SALARIO);
           
           END;
           
           
           
           --Utlizando vari�vel para calcular o contador do FOR LOOP--
           DECLARE 
               V_STEP NUMBER :=5;
               
           BEGIN 
              FOR X  IN 1..5  LOOP --Aqui ele pega o n�mero que eu coloquei na variavel V_STEP E FAZ ELE VEZ A QUANTIDA QUE EU DECLAREI NO LOOP NESSE CASO ELE VAI MOSTRAR 5 VEZES O 5.COME�ANDO DO 5 AT� O 25--
                       DBMS_OUTPUT.PUT_LINE('STEP FOR LOOP: x =  ' || X * V_STEP);
              END LOOP;
          END;    
          
          --TABUADA DO N�MERO 2--
          DECLARE 
               V_STEP NUMBER := 2;
                  BEGIN 
                     FOR X IN 1..10 LOOP
                         DBMS_OUTPUT.PUT_LINE('Tabuada do n�mero (2) =  ' || X * V_STEP);
                         
                         END LOOP;
                 END;   
                 
                 
             DECLARE 
               V_STEP NUMBER := 3;
                  BEGIN 
                     FOR X IN 1..10 LOOP
                         DBMS_OUTPUT.PUT_LINE('Tabuada do n�mero (3) =  ' || X * V_STEP);
                         
                         END LOOP;
                 END; 
                         
                         
            --IMPRIMIR "X" DENTRO DO FOR LOOP N�O PRECISA DECLARAR VARI�VEL--
             BEGIN 
               FOR  X  IN 1..3 LOOP
                   DBMS_OUTPUT.PUT_LINE('DENTRO DO FOR LOOP: X  =  ' || X);
                     END LOOP;
                  
                 END;   
                 
             --IMPRIMIR "X" DENTRO E FORA  DO FOR LOOP PRECISA DECLARAR V�RIAVEL PORQUE O DE FORA DO LLOP VAI APRESENTAR OO VALOR DA VARI�VEL--
            DECLARE 
              X NUMBER := 5;
            
            BEGIN 
               FOR  X  IN 1..3 LOOP
                   DBMS_OUTPUT.PUT_LINE('DENTRO DO FOR LLOP: X  =  ' || X);
                     END LOOP;
                    DBMS_OUTPUT.PUT_LINE('FORA DO FOR LOOP: X  =  ' || X); --NESSE BLOCO ELE APRESENTA O VALOR DA V�RIAVEL--
                 END;   
                 
         --UTILIZANDO VARI�VEL GLOBAL--   
         <<main>> --label do bloco--
        DECLARE
            X NUMBER := 5;
        BEGIN
           --IMPRIMIR O CONTADOR "X" FORA DO FOR LOOP--
           FOR X IN 1..3 LOOP 
              DBMS_OUTPUT.PUT_LINE('LOCAL: ' || X || ', ' || ' GLOBAL: ' || main.x);
              --"main.x"  - refer�ncia com a etiqueta do bloco --
              END LOOP;
          END main;
          
     
     
     --EMXEMPLO DO %NOTFOUND  (CURSOR EXPLICITO)--
     DECLARE
     CURSOR C_EMP IS
             SELECT EMPNO, ENAME
             FROM EMP
             ORDER BY EMPNO;
             
     V_ID      EMP.EMPNO%TYPE;
     V_NOME    EMP.ENAME%TYPE;
     BEGIN
        
        OPEN C_EMP;
        
        LOOP
           FETCH C_EM INTO V_ID, V_NOME;
           
           EXIT WHEN C_EMP%NOTFOUND;
           
           DBMS_OUTPUT.PUT_LINE(V_ID || '' || V_NOME);
           END LOOP;
           CLOSE C_EMP;
        END;   
        
        
        
           
           
        
              
     
     
     
     
     
     
     
     
     
     
     
     
     
          
          
          
          
              
        
                     
               
                  
               
                         
                     
                        
               
          
          
          
          
           
           
           
           
             
             
         
             
             
             
             
             
                 
             
               
          
                        
                        
          
       
      
         
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     

     

     
     
     