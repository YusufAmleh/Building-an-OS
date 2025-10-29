org 0x7C00 ;this tells the assembler that the BIOS always puts the OS at that address specifcally it tells the assembler to calcualte all memort offsets starting at this address
bits 16 ;tells the asembler to emit a 16 bit-code this is a directive 


main:
	hlt ; this stops the CPU from executing, but it can be resumed by an interrupt
	
.halt:
	jmp .halt


times 510-($-$$) db 0 ;times is used to pad the program so that it fills up to 510 bites, after which we declare the two bite signature, in NASM the $ can be used to obtain the assembly position of the current line whereas the $$ gives us the position of the current section, so in this case $-$$ gives us the lenght of the program thus far measured in bites
dw 0AA55h ;dw is a similar directive to db but it declares  a 2 bite constant which is generally refered to as a word

;bits 16
;org 0x7C00

;mov ah, 0x0E
;mov al, 'H'
;int 0x10
;mov al, 'i'
;int 0x10

;jmp $

;times 510 - ($ - $$) db 0
;dw 0xAA55
