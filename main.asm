.8086
.model small
.stack 100h

.data
	cartelito db "Bienvenido al programa", 0dh, 0ah, 24h
	texto db 255 dup (24h)

.code
	extrn impresion:proc
	extrn carga:proc
	extrn vocalMayus:proc

	
	main proc
	mov ax, @data
	mov ds, ax

; llamamos funcion impresion para imprimrir cartel bienvenida
	lea bx, cartelito
	call impresion

; llamamos funcion carga para guardar el texto ingresado por el usuario
	lea bx, texto
	call carga

; llamamos funcion para convertir vocal en mayuscula
	lea bx, texto
	call vocalMayus

	lea bx, texto
	call impresion



	mov ax, 4c00h
	int 21h
	main endp


end