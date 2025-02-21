        SC /F00
        HM /0000

        @ /100
        k /0000        

        ;inicio do loop
        @ /F00
        
        ;calcula o endereco de salvamento
        LV /0002
        ML i
        AD addr
        MM addr

        ;acha o valor respectivo a posicao n
        LV /0002
        ML i
        AD bit_1
        AD sum
        MM sum ; atualiza o somador
        MM addr ; comeca a salvar no addr

        ;atualiza i
        LD i
        AD bit_1
        MM i

        ;verifica se esse loop ja chegou ao fim
        LD n
        SB bit_1
        SB i
        JZ /F1A ; fim
        JP /F00 ; volta ao inicio loops
        
        @ /F1A
        RS /F00 ; finaliza a subrotina

        @ /F20 ; Variaveis
bit_1   k /0001
i       k /0000
n       k /003F 
sum     k /0000
addr    k /0102       
