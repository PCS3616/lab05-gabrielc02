        SC /F00
        HM /0000

        @ /100
        k /0000        

        ;inicio do loop
        @ /F00
        
	@ /F02
        ;calcula o endereco de salvamento
        LV /0002
        AD addr
        MM addr

        ;acha o valor respectivo a posicao n
        LV /0002
        ML i
        AD bit_1
        AD sum
        MM sum ; atualiza o somador
        
	;salva na posicao desejada
	JP /FF8	
	
	@ /FB6
        ;atualiza i
        LD i
        AD bit_1
        MM i

        ;verifica se esse loop ja chegou ao fim
        LD n
        SB i
        JZ /FE0 ; fim
        JP /F02 ; volta ao inicio loops
        
        @ /FE0
        RS /F00 ; finaliza a subrotina

        @ /FF0 ; Variaveis
bit_1   k /0001
i       k /0000
n       k /003F 
sum     k /0000
addr    k /9100
	JP /FB6       
