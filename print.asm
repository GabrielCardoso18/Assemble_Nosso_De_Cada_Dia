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

