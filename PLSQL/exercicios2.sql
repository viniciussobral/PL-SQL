       --Exercicios 2--
       
       --Sistema de calculo de financiamento de carros--
       
         DECLARE 
             V_COMPRA NUMBER := &VALOR_CARRO;
             V_ENTRADA NUMBER := &ENTRADA;
             V_PARCELAS NUMBER := &PARCELAS;
             V_JUROS1 NUMBER := 0;
             V_JUROS2 NUMBER := 0;
             V_JUROS3 NUMBER := 0;
             V_TOTAL_COM_JUROS NUMBER := 0;
             V_TOTAL_COM_ENTRADA NUMBER := 0;
             V_VALOR_PARCELAS NUMBER := 0;
             
         BEGIN
         
            
         
         IF V_PARCELAS > 0 AND V_PARCELAS <= 6 THEN
         
           V_TOTAL_COM_ENTRADA := V_COMPRA - V_ENTRADA;
           V_JUROS1 := (V_TOTAL_COM_ENTRADA * 10) / 100;
           V_TOTAL_COM_JUROS := V_TOTAL_COM_ENTRADA + V_JUROS1;
           V_VALOR_PARCELAS:= V_TOTAL_COM_JUROS / V_PARCELAS;
           
           
           DBMS_OUTPUT.PUT_LINE('O VALOR DA COMPRA SERÁ DE: ' || V_COMPRA || ' Valor da entrada é de: ' || V_ENTRADA|| ' O numero de parcelas escolhido para o pagamento '|| V_PARCELAS ||
           ' Valor das parcelas: ' || V_VALOR_PARCELAS);
           
           ELSE IF V_PARCELAS > 6 AND V_PARCELAS <= 12 THEN
           
             V_TOTAL_COM_ENTRADA := V_COMPRA - V_ENTRADA;
           V_JUROS1 := (V_TOTAL_COM_ENTRADA * 15) / 100;
           V_TOTAL_COM_JUROS := V_TOTAL_COM_ENTRADA + V_JUROS1;
           V_VALOR_PARCELAS:= V_TOTAL_COM_JUROS / V_PARCELAS;
           
           
           DBMS_OUTPUT.PUT_LINE('O VALOR DA COMPRA SERÁ DE: ' || V_COMPRA || ' Valor da entrada é de: ' || V_ENTRADA|| ' O numero de parcelas escolhido para o pagamento '|| V_PARCELAS ||
           ' Valor das parcelas: ' || V_VALOR_PARCELAS);
            
           ELSE  
           
           V_TOTAL_COM_ENTRADA := V_COMPRA - V_ENTRADA;
           V_JUROS1 := (V_TOTAL_COM_ENTRADA * 20) / 100;
           V_TOTAL_COM_JUROS := V_TOTAL_COM_ENTRADA + V_JUROS1;
           V_VALOR_PARCELAS:= V_TOTAL_COM_JUROS / V_PARCELAS ;
           
           
           DBMS_OUTPUT.PUT_LINE('O VALOR DA COMPRA SERÁ DE: ' || V_COMPRA || ' Valor da entrada é de: ' || V_ENTRADA|| ' O numero de parcelas escolhido para o pagamento '|| V_PARCELAS ||
           ' Valor das parcelas: ' || V_VALOR_PARCELAS);
           
           END IF;
           END IF;
           END;
           
           
           
           
         --EXE 2 IMC--
         
          DECLARE 

      V_PESO NUMBER := &PESO;
      V_ALTURA NUMBER := &ALTURA;
      V_ALTURA_AO_QUADRADO NUMBER := 0;
      V_IMC NUMBER := 0;
      

      BEGIN
          V_ALTURA_AO_QUADRADO := V_ALTURA * V_ALTURA;
          V_IMC := V_PESO / V_ALTURA_AO_QUADRADO;
          
      
       IF  V_IMC < 18.5 THEN  
         DBMS_OUTPUT.PUT_LINE(' SEU IMC É:  '||  V_IMC || ' ABAIXO DO PESO');
         
       ELSE IF  V_IMC >= 18.5 AND V_IMC <= 24.9 THEN  
         DBMS_OUTPUT.PUT_LINE(' SEU IMC É:  '||  V_IMC || ' PESO NORMAL ');
       
       ELSE IF  V_IMC >= 25 AND V_IMC <= 29.9 THEN  
         DBMS_OUTPUT.PUT_LINE(' SEU IMC É:  '||  V_IMC || ' SOBREPESO ');
         
       ELSE IF  V_IMC >= 30 AND V_IMC <= 34.9 THEN  
         DBMS_OUTPUT.PUT_LINE(' SEU IMC É:  '||  V_IMC || ' OBESIDADE LEVE ');  
         
       ELSE IF  V_IMC >= 35 AND V_IMC <= 39.9 THEN  
         DBMS_OUTPUT.PUT_LINE(' SEU IMC É:  '||  V_IMC || ' OBESIDADE MODERADA ');   
       
       ELSE 
       
         DBMS_OUTPUT.PUT_LINE(' SEU IMC É:  '||  V_IMC || ' OBESIDADE MÓRBIDA ');    
        
        END IF;
        END IF;
        END IF;
        END IF;
        END IF;
      
      END;
      
      
      
      
      --EXE 3 Triângulos --
      
      DECLARE
          V_VALOR1 NUMBER := &VALOR_1;
          V_VALOR2 NUMBER := &VALOR_2;
          V_VALOR3 NUMBER := &VALOR_3;
          
          
          BEGIN
            
            IF V_VALOR1 = V_VALOR2 AND  V_VALOR1 = V_VALOR3 AND V_VALOR2 = V_VALOR3 THEN 
                   DBMS_OUTPUT.PUT_LINE('Triângulo Equilátero');  
                   
             ELSE IF  V_VALOR1 <> V_VALOR2 AND  V_VALOR1 <> V_VALOR3 AND V_VALOR2 <> V_VALOR3  THEN     
             
                  DBMS_OUTPUT.PUT_LINE('Triângulo Escaleno');  
                    
             ELSE IF V_VALOR1 = 0 AND  V_VALOR2 = 0 AND V_VALOR3 = 0  THEN
             
                  DBMS_OUTPUT.PUT_LINE('FORMA INDEFINIDA!');  
                  
             ELSE 
             
                  DBMS_OUTPUT.PUT_LINE('Triângulo Isósceles');  
                 
                 
                   
               END IF;
               END IF;
               END IF;
               END;
            
            
          
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
         
            
             
              
              
    