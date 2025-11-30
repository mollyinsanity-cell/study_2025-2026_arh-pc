sinclude 'in out. asm'
SECTION .data
msg_func db "Функция: f(x) = 10x - 4", 0
msg_result db "Резyльтат: ", 0
SECTION .text
GLOBAL _start
start:
mov eax, msg_func
call sprint
4 pop ecx
5 pop edx
sub ecx, 1
mov esi, 0

C

next:
cmp ecx, oh
jz _end
2 pop eax
3 call atoi
mov ebx, 10
6 mul ebx
sub eax, 4
29 add esi, eax
31 loop next
3 _end:
4 mov eax, msg_result
call sprint
6 mov eax, es1
7 call iprintLF
38 call quit