
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
           
           
           
             
             
         
             
             
             
             
             
                 
             
               
          
                        
                        
          
       
      
         
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     

     

     
     
     