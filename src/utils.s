.ifndef utils_s
.equ utils_s, 0

/*----------------------------ARCHIVO UTILS.S--------------------------------*/
	/* Archivo para guardar subrutinas comunes útiles para los demas archivos.
	Finalmente solo se implemento "delay", la cual era conveniente tener
	separada.
    */

.include "data.s"

delay:
	sub x9, x9, 1
	cbnz x9, delay
br x30

.endif
