.include "data.s"

.global makeBackground
makeBackground:
/*----------------------------ARCHIVO BACKGROUND.S--------------------------------*/
	/* pinta el fondo y dibuja los elementos que van atras en la imagen, como
    los detalles de la pared, los papeles colgados, las cajas con cables, etc.
    Utiliza y llama a los archivos planta.s, cajacables.s, tablero.s, estantes.s,
    papeles.s y ventilacion.s
    */

    sub sp, sp, 8   // mueve en 8 bytes el puntero 'sp'
	str x30, [sp]   // guarda la dirección de 'ret' en 'sp-8'

    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    eor x1, x1, x1                  // X -> 0
    eor x2, x2, x2                  // Y -> 0
    eor x3, x3, x3                  // Ancho del Rectángulo -> 0
    eor x4, x4, x4                  // Alto del Rectángulo -> 0
    add x3, x3, SCREEN_WIDTH                
    add x4, x4, SCREEN_HEIGH
    bl drawRectangle 
	//PARTE PARED
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 0                
    mov x2, 110
    mov x3, SCREEN_WIDTH                    
    mov x4, 5                                
    bl drawRectangle 
	movz x10, BRILLO_PARED1, lsl 16
    movk x10, BRILLO_PARED2, lsl 00
    mov x1, 0                
    mov x2, 91
    mov x3, SCREEN_WIDTH                    
    mov x4, 5                               
    bl drawRectangle 
    mov x1, 40                
    mov x2, 94
    mov x3, 16                   
    mov x4, 6                                
    bl drawRectangle 
    mov x1, 140                
    mov x2, 94
    mov x3, 16                   
    mov x4, 6                              
    bl drawRectangle    
    mov x1, 180                
    mov x2, 94
    mov x3, 9                   
    mov x4, 6                                
    bl drawRectangle    
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 15                
    mov x2, 91
    mov x3, 9                   
    mov x4, 5                               
    bl drawRectangle
    mov x1, 75                
    mov x2, 91
    mov x3, 9                    
    mov x4, 5                               
    bl drawRectangle
    mov x1, 95                
    mov x2, 91
    mov x3, 4                    
    mov x4, 5                                
    bl drawRectangle
    mov x1, 98                
    mov x2, 91
    mov x3, 4                    
    mov x4, 5                               
    bl drawRectangle
    mov x1, 220                
    mov x2, 91
    mov x3, 3                   
    mov x4, 5                               
    bl drawRectangle
    mov x1, 225                
    mov x2, 91
    mov x3, 3                   
    mov x4, 5                                
    bl drawRectangle
    movz x10, BRILLO_PARED1, lsl 16
    movk x10, BRILLO_PARED2, lsl 00
    mov x1, 35                
    mov x2, 22
    mov x3, 5                   
    mov x4, 5                                
    bl drawRectangle
    mov x1, 40                
    mov x2, 27
    mov x3, 5                   
    mov x4, 5                                
    bl drawRectangle
    mov x1, 45                
    mov x2, 32
    mov x3, 5                   
    mov x4, 5                               
    bl drawRectangle
    mov x1, 55                
    mov x2, 42
    mov x3, 5                   
    mov x4, 5                  
    bl drawRectangle
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 35                
    mov x2, 17
    mov x3, 5                 
    mov x4, 5                                
    bl drawRectangle
    mov x1, 40                
    mov x2, 22
    mov x3, 5                  
    mov x4, 5                                
    bl drawRectangle
    mov x1, 45                
    mov x2, 27
    mov x3, 5                   
    mov x4, 5                                
    bl drawRectangle
    mov x1, 55                
    mov x2, 37
    mov x3, 5                   
    mov x4, 5                               
    bl drawRectangle
    movz x10, BRILLO_PARED1, lsl 16
    movk x10, BRILLO_PARED2, lsl 00
    mov x1, 25                
    mov x2, 75
    mov x3, 10                   
    mov x4, 5
    bl drawRectangle 
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 25                
    mov x2, 70
    mov x3, 10                 
    mov x4, 5
    bl drawRectangle 
    movz x10, BRILLO_PARED1, lsl 16
    movk x10, BRILLO_PARED2, lsl 00
    mov x1, 115                
    mov x2, 55
    mov x3, 5                  
    mov x4, 5
    bl drawRectangle 
    mov x1, 120                
    mov x2, 50
    mov x3, 5                  
    mov x4, 5
    bl drawRectangle 
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 115                
    mov x2, 50
    mov x3, 5                 
    mov x4, 5
    bl drawRectangle 
    mov x1, 120                
    mov x2, 45
    mov x3, 5                 
    mov x4, 5
    bl drawRectangle 
	movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 423                
    mov x2, 0
    mov x3, 217                    
    mov x4, SCREEN_HEIGH
    bl drawRectangle
    //pedazos rotos
    mov x1, 420                
    mov x2, 175
    mov x3, 4                    
    mov x4, 12
    bl drawRectangle
    mov x1, 420                
    mov x2, 309
    mov x3, 3                    
    mov x4, 6
    bl drawRectangle
    mov x1, 417                
    mov x2, 312
    mov x3, 3                    
    mov x4, 3
    bl drawRectangle
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 423                
    mov x2, 168
    mov x3, 3                    
    mov x4, 12
    bl drawRectangle
    mov x1, 423                
    mov x2, 245
    mov x3, 3                    
    mov x4, 5
    bl drawRectangle
    mov x1, 423                
    mov x2, 256
    mov x3, 3                    
    mov x4, 7
    bl drawRectangle
    mov x1, 423                
    mov x2, 309
    mov x3, 3                    
    mov x4, 3
    bl drawRectangle
    mov x1, 423                
    mov x2, 96
    mov x3, 2                    
    mov x4, 14
    bl drawRectangle
    movz x10, BRILLO_PARED1, lsl 16
    movk x10, BRILLO_PARED2, lsl 00
    mov x1, 423                
    mov x2, 92
    mov x3, 2                    
    mov x4, 4
    bl drawRectangle
    // ------------------- //
    /* [sombra de la planta en la pared] */
    bl makeSombraPlanta
    // ------------------- //
    /* [tablero completo] */
    bl makeTablero
    bl makeDisplays
    bl makeButtons
    // ------------------- //
    /* [cable y caja] */
    bl makeCables
    // ------------------- //
    /* [detalles de estantes completo] */
    bl makeEstantes
    // ------------------- //
    /* [papeles] */
    bl makePapeles
    // ------------------- //
    /* [detalles de salida de ventilacion] */
    bl makeVentilacion

    ldr x30, [sp]   // carga la dirección de 'ret' desde 'sp-8
	add sp, sp, 8   // regresa en 8 bytes el puntero 'sp'
br x30
