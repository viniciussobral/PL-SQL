  
     -- bloco pl-sql que imprima seu nome e sua idade.--
     DECLARE 
 
      V_NOME VARCHAR(30):= '&NOME';
      V_IDADE NUMBER := &NUM;

      BEGIN

         DBMS_OUTPUT.PUT_LINE(' Sr(a) '||  V_NOME   || ' Sua idade é : ' || V_IDADE );
        
      
      END;
     
      --Reajuste do salario de 25%--     
        DECLARE 
          V_SALARIO NUMBER := 724;
          V_REAJUSTE NUMBER := 0;
          
          BEGIN 
          
          V_REAJUSTE := V_SALARIO * 25 / 100;
          V_SALARIO := V_SALARIO + V_REAJUSTE;
          
           DBMS_OUTPUT.PUT_LINE('O Valor do SALÁRIO MININO REAJUSTADO com 25% VAI DE R$ 724.00, PARA : '|| V_SALARIO);
           
           END;
           
           
           --calcular o valor em reais de 45 dólares--
           
           DECLARE 
              V_DOLLAR NUMBER := 4.31;
              V_CALCULO NUMBER := 0;
              
              BEGIN 
              
              V_CALCULO := V_DOLLAR * 45;
              
              DBMS_OUTPUT.PUT_LINE('O Valor de 45 dolláres em reais em 2020 é de : '|| V_CALCULO || ' R$');
              
              END;
              
              
              -- 25% SALÁRIO MINIMO ATUAL DIGITADO --
              
              DECLARE 
                 V_SALARIO_MIN NUMBER := &NUM;
                 V_SALARIO NUMBER := 0;
                 V_CALCULO_PORCENT NUMBER := 0;
                 
                 BEGIN
                    
                    V_CALCULO_PORCENT := (V_SALARIO_MIN * 25) / 100;
                    V_SALARIO := V_SALARIO_MIN + V_CALCULO_PORCENT;
                    
                    DBMS_OUTPUT.PUT_LINE('O Valor do SALÁRIO MININO REAJUSTADO com 25% vai de ' || V_SALARIO_MIN || ' R$ ' || ' PARA : '|| V_SALARIO || ' R$ ');
                        
                END;
                
                
                --CONVERTER REAIS EM DOLLÁRES PORÉM O VALOR EM DOLLÁRES DEVERÁ SER INFORMADO EM TEMPO DE EXECUÇÃO--
                
                DECLARE 
                   V_DOLLAR NUMBER := &INFORME_UM_VALOR;
                   V_VALOR_CAMBIO NUMBER := 4.31;
                   V_CALCULO NUMBER := 0;
                   
                   BEGIN
                   
                    V_CALCULO := V_DOLLAR * V_VALOR_CAMBIO;
                    
                    DBMS_OUTPUT.PUT_LINE('O Valor de ' || V_DOLLAR || ' dolláres em reais NO ANO DE 2020 é de : '|| V_CALCULO || ' R$');
                    
                END;
            

                    --LER IDADE DO ÚSUARIO . SE FOR MAIOR OU IGUAL Á 18 'MAIOR DE IDADE' SENÃO 'MENOR DE IDADE'--
                    
                 DECLARE 
                        V_IDADE NUMBER := &IDADE;
                        
                        BEGIN
                        
                        IF V_IDADE >= 18   THEN
                        
                            DBMS_OUTPUT.PUT_LINE('MAIOR DE IDADE! JÁ PODE DIRIGIR');
                         
                         ELSE 
                           DBMS_OUTPUT.PUT_LINE('MENOR DE IDADE! VAI ASSITIR TV GLOBINHO');
                           
                       END IF;
                           
                     END;
                            
                            
                            
               --LER 3 NOTAS CALCULAR A MÉDIA. SE A MÉDIA FOR MAIOR OU IGUAL A SEIS = 'APROVADO'. SENÃO 'REPROVADO' --  
               
               DECLARE 
                  V_NOTA1 NUMBER := &NOTA_1;
                  V_NOTA2 NUMBER := &NOTA_2;
                  V_NOTA3 NUMBER := &NOTA_3;
                  V_MEDIA NUMBER := 0;
                  
                  BEGIN
                      
                      V_MEDIA := (V_NOTA1 + V_NOTA2 + V_NOTA3) / 3;
                      
                      
                       IF  V_NOTA1 > 10 OR  V_NOTA2 > 10 OR V_NOTA3 > 10 THEN
                      
                         DBMS_OUTPUT.PUT_LINE('NOTAS INFORMADAS ESTÃO INCORRETAS, VERIFIQUE E TENTE NOVAMENTE!!'); 
                         
                      ELSE IF V_MEDIA >= 6 THEN
                            DBMS_OUTPUT.PUT_LINE('APROVADO!!');
                            
                     
                         
                      ELSE 
                         DBMS_OUTPUT.PUT_LINE('REPROVADO!' || 'Sua média: ' || V_MEDIA);
                         
                       END IF;
                       END IF;
                       
                     END;
                     
                 
                 
                 --Ler o sálario. Se o sláriofor > 1500 reajuste de 8% senão o reajuste será de 10% --
                 
                 DECLARE 
                    V_SALARIO NUMBER := &SALARIO;
                    V_REAJUSTE1 NUMBER := 0;
                     V_REAJUSTE2 NUMBER := 0;
                    V_SALARIO_REAJUSTADO1 NUMBER := 0;
                    V_SALARIO_REAJUSTADO2 NUMBER := 0;
                    
                    BEGIN
                       
                       V_REAJUSTE1 := (V_SALARIO * 8) / 100;
                       V_REAJUSTE2 := (V_SALARIO * 10) / 100;
                       V_SALARIO_REAJUSTADO1 := V_SALARIO + V_REAJUSTE1;
                       V_SALARIO_REAJUSTADO2 := V_SALARIO + V_REAJUSTE2;
                       
                       
                       IF V_SALARIO >= 1500 THEN
                       DBMS_OUTPUT.PUT_LINE('Seu salário atual é  R$ ' || V_SALARIO || 'O reajuste foi de R$ '|| V_REAJUSTE1 || ' O Salário reajustado foi para R$ ' || V_SALARIO_REAJUSTADO1 );
                       
                       ELSE
                       
                        DBMS_OUTPUT.PUT_LINE('Seu salário atual é  R$ ' || V_SALARIO || 'O reajuste foi de R$ '|| V_REAJUSTE2 || ' O Salário reajustado foi para R$ ' || V_SALARIO_REAJUSTADO2 );
   
                       END IF;
                       END;
                       
                       
                       --Ler os dias letivos e faltas. Calcular o limite de faltas (25% dos letivos). Se as faltas forem maior do que o limite exiba 'Reprovado por falta', senão 'Okay Passou! :) ' --
                       
                       DECLARE 
                            V_DIAS_LETIVO NUMBER := &DIAS_LETIVOS;
                            V_FALTAS NUMBER := &FALTAS;
                            V_FALTAS_MAX NUMBER := 0;
                        
                        BEGIN
                            V_FALTAS_MAX := (V_DIAS_LETIVO) * 25 / 100;
                            
                            IF V_FALTAS > V_FALTAS_MAX THEN
                                DBMS_OUTPUT.PUT_LINE('REPROVADO! por falta ' || ' Você tem:  ' || V_FALTAS || ' Faltas '||  ' E a quantidade maxima de faltas é: ' || V_FALTAS_MAX );
                                
                                ELSE 
                                DBMS_OUTPUT.PUT_LINE('Aprovado! ' || ' Você tem:  ' || V_FALTAS || ' Faltas ' || ' E a quantidade maxima de faltas é: ' || V_FALTAS_MAX );
                            END IF;
                            
                            END;
                              
                   
                   
                   
         --Calcular o valor das parcelas de uma compra de um carro, nas seguinte condições--       
         
         DECLARE 
             V_COMPRA NUMBER := &VALOR_CARRO;
             V_JUROS NUMBER := 0;
             V_TOTAL_COM_JUROS NUMBER := 0;
             V_PARCELAS NUMBER := 0;
             
         BEGIN
             V_JUROS := (V_COMPRA * 3) / 100;
             V_TOTAL_COM_JUROS := V_COMPRA + V_JUROS;
             V_PARCELAS := V_TOTAL_COM_JUROS / 10;
             
              DBMS_OUTPUT.PUT_LINE('O VALOR DE CADA PARCELA SERÁ DE: ' || V_PARCELAS);
              
              END;
             
             
             
             
             
         
                   
                   
                   
                            
                            
                           
                           
                       
                       
   
                     
                        
                         
                         
                            
                  
                  
                    
                    
                    
                    
                    
                     
                     
                   
                   
                   
                   
                   
                    
                    
                    
                 
              
              
              
                 
                
              
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           