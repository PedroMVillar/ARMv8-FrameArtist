	.include "data.s"
	.include "utils.s"

.globl main
main:
/*----------------------------ARCHIVO APP.S--------------------------------*/
	/* Va dibujando secuencialmente las partes de la imagen, de atrás para adelante.
	llamando a las subrutinas presentes en el resto de los archivos de la carpeta.
	Llama y utiliza los archivos background.s, frente.s, chica.s y planta.s
	*/

	// x0 contiene la direccion base del framebuffer
	mov x20, x0 // Guarda la dirección base del framebuffer en x20
	// ------------------- //
    /* [Pinta el fondo] */
	bl makeBackground
	// ------------------- //
    /* [partes de la chica] */
	bl makeCuerpo
    bl makeLeftHand
	bl makeFrascos
	bl makeFace
	// ------------------- //
    /* [detalles de la planta] */
    bl makePlanta
	// ------------------- //
    /* [el pulgar de la chica debe ir delante de la planta] */	
	bl makeRightHand
	// ------------------- //
    /* [la lupa debe ir al frente de la chica] */	
	bl makeLupa
    // ------------------- //
    /* [dynamic.s tiene los datos de las animaciones] */
	bl dynamic

	//-------------------------- No se utiliza InfLoop ya que el loop de dynamic.s no termina ----------------------------//
InfLoop:
	b InfLoop
