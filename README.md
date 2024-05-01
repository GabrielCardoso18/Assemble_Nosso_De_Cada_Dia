# Assembly_Nosso_De_Cada_Dia
Sistemas Embarcados
Descrição do Código
Este é um programa escrito em linguagem Assembly, projetado para rodar em um ambiente que suporta este tipo de linguagem. O código apresenta uma série de instruções para carregar valores em registradores e, em seguida, armazená-los em posições específicas de memória, identificadas por rótulos.

Código utilizado no exemplo:
```Assembly
ORG 000 /Inicia o programa no endereço 000

Load G
Store NAME_G
LOAD a
Store NAME_A
Load b
Store NAME_B
Load r
Store NAME_R
Load i
Store NAME_I
Load e
Store NAME_E
Load l
Store NAME_L

Halt /termina execução

G, HEX 47
a, HEX 61
b, HEX 62
r, HEX 72
i, HEX 69
e, HEX 65
l, HEX 6c

NAME_G, HEX 0
NAME_A, HEX 0
NAME_B, HEX 0
NAME_R, HEX 0
NAME_I, HEX 0
NAME_E, HEX 0
NAME_L, HEX 0
```

Funcionamento do Programa
ORG 000: Esta diretiva indica que o programa deve ser iniciado no endereço de memória 000.
O programa carrega os valores das variáveis 'G', 'a', 'b', 'r', 'i', 'e' e 'l' em registradores e, em seguida, os armazena em posições específicas de memória identificadas pelos rótulos 'NAME_G', 'NAME_A', 'NAME_B', 'NAME_R', 'NAME_I', 'NAME_E' e 'NAME_L', respectivamente.
Após armazenar todos os valores, o programa encerra sua execução com a instrução Halt.
Valores e Posições de Memória
'G', 'a', 'b', 'r', 'i', 'e' e 'l' são variáveis que contêm os valores hexadecimais 47, 61, 62, 72, 69, 65 e 6c, respectivamente.
'NAME_G', 'NAME_A', 'NAME_B', 'NAME_R', 'NAME_I', 'NAME_E' e 'NAME_L' são rótulos associados a posições específicas de memória, inicialmente definidas como 0.
Uso e Considerações
Este código é um exemplo simples e básico de manipulação de memória em linguagem Assembly. Ele pode servir como ponto de partida para entender como os valores são carregados em registradores e armazenados em posições de memória específicas.

É importante notar que este código não implementa alocação de memória dinâmica. Se o objetivo for aprender sobre esse conceito, recomenda-se procurar recursos adicionais que abordem especificamente a alocação dinâmica de memória em Assembly ou explorar outras linguagens de programação que possuam suporte mais robusto para esse tipo de operação.

![image](https://github.com/GabrielCardoso18/Assembly_Nosso_De_Cada_Dia/assets/126261772/e47a0381-0e9b-4095-a94b-a70f1ef67229)

![image](https://github.com/GabrielCardoso18/Assembly_Nosso_De_Cada_Dia/assets/126261772/a04c032c-5d04-4018-8e80-5f15e3824e56)

![image](https://github.com/GabrielCardoso18/Assembly_Nosso_De_Cada_Dia/assets/126261772/bd739957-ef2e-4d64-99f5-b460ca7ada7e)


###DOS em Assembly

Programar para DOS em assembly envolve principalmente o uso de interrupções de software para acessar os serviços do sistema operacional. O DOS (Disk Operating System) foi um sistema operacional popular para computadores pessoais na década de 1980 e no início da década de 1990. Aqui estão alguns aspectos importantes a considerar ao programar em assembly para DOS:

Interrupções de Software: O DOS oferece uma série de serviços por meio de interrupções de software. Por exemplo, a interrupção 21h é amplamente usada para acessar várias funções do DOS, como exibir texto na tela, ler e gravar arquivos, entre outras operações.
Manipulação de Arquivos: Uma das tarefas comuns ao programar em assembly para DOS é a manipulação de arquivos. O DOS fornece interrupções específicas para abrir, fechar, ler e gravar arquivos.
Entrada e Saída: Você pode interagir com o usuário por meio de entrada e saída de dados. Por exemplo, você pode ler entrada do teclado e exibir texto na tela usando as interrupções de software apropriadas.
Gerenciamento de Memória: Embora o DOS tenha limitações em comparação com sistemas operacionais modernos, você ainda precisa estar ciente do gerenciamento de memória ao programar em assembly para DOS. Isso inclui o uso de segmentos de memória e a alocação de espaço de memória para variáveis e buffers.
Encerramento do Programa: Ao escrever um programa para DOS, é importante encerrar corretamente o programa antes de retornar ao sistema operacional. Isso pode ser feito por meio da interrupção 21h, função 4Ch.
Compatibilidade: Embora o DOS não seja mais amplamente usado como sistema operacional principal, você ainda pode executar programas DOS em emuladores ou sistemas legados. Certifique-se de que seu código seja compatível com o ambiente de destino.
Ao programar para DOS em assembly, é importante consultar a documentação relevante do DOS e entender as interrupções de software disponíveis e suas respectivas funções. Também é útil estudar exemplos de código e explorar recursos adicionais, como bibliotecas e ferramentas de desenvolvimento para DOS em assembly.

MASM (Microsoft Macro Assembler):

Desenvolvido pela Microsoft, o MASM é uma ferramenta de desenvolvimento de software que traduz programas escritos em linguagem assembly para código de máquina executável.
É especialmente popular para programação em assembly para ambientes Windows.
Oferece suporte a uma ampla variedade de recursos, incluindo macros, diretivas de segmento e manipulação de recursos específicos do Windows.
O MASM é amplamente utilizado em desenvolvimento de drivers, programação de baixo nível e algumas áreas de desenvolvimento de aplicativos Windows.
TASM (Turbo Assembler):

Desenvolvido pela Borland, o TASM é um montador amplamente utilizado para desenvolvimento de software em assembly.
Fazia parte do conjunto de ferramentas de desenvolvimento Turbo da Borland, que incluía compiladores e outras ferramentas para linguagens como Pascal e C.
O TASM foi muito popular durante a era do DOS e foi amplamente utilizado para escrever programas DOS e algumas aplicações de baixo nível para o Windows.
Embora a Borland tenha descontinuado o suporte ao TASM, ele ainda é usado por alguns programadores por causa de sua simplicidade e eficiência.
Tanto o MASM quanto o TASM são poderosas ferramentas para escrever código assembly, mas cada uma tem suas próprias características e conjuntos de recursos. A escolha entre eles muitas vezes depende das preferências pessoais, dos requisitos do projeto e da compatibilidade com as plataformas de destino.

Código de print em Assembly:
```
    .MODEL Small ;Define o modelo de memória small
    .STACK 64 ;Aloca um espaço de 64 bytes para a pilha

    .DATA ;Inicio da seção de dados

    message db 'Soldador', '$' ;Define uma mensagem e termina $

    .CODE ;Inicio da seção do código
    main proc ;Define o inicio do procedimento principal

    mov ax, @data ; Carrega o endereço do segmento em AX
    mov ds, ax ; Move o valor em AX para o registrador DS

    mov ah, 9h ;Preparar o registrador AH para a função  09h do dos
    mov dx, offset message; vai fazer o deslocamento da msg em dx

    int 21h; Instrução de interrupção

    main endp ;Marca o fim

    end main ;indica o fim
```
