.include "data.s"

/*----------------------------ARCHIVO VENTILACION.S--------------------------------*/
	/* Dibuja la rejilla de ventilacion en la pared del fondo.
    */

.globl makeVentilacion
makeVentilacion:
    sub sp, sp, 8   
    str x30, [sp] 
    movz x10, SOMBRA1, lsl 16
    movk x10, SOMBRA2, lsl 00
    mov x1, 312              
    mov x2, 18
    mov x3, 61                  
    mov x4, 66
    bl drawRectangle
	movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 315              
    mov x2, 14
    mov x3, 61                  
    mov x4, 66
    bl drawRectangle
	movz x10, AZUL_GORRO1, lsl 16
    movk x10, AZUL_GORRO2, lsl 00
    mov x1, 319              
    mov x2, 18
    mov x3, 54                  
    mov x4, 58
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 325              
    mov x2, 24
    mov x3, 44                  
    mov x4, 46
    bl drawRectangle
    movz x10, AZUL_GORRO1, lsl 16
    movk x10, AZUL_GORRO2, lsl 00
    mov x1, 329              
    mov x2, 28
    mov x3, 37                  
    mov x4, 3
    bl drawRectangle
    mov x1, 332              
    mov x2, 31
    mov x3, 34                 
    mov x4, 3
    bl drawRectangle
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 335              
    mov x2, 31
    mov x3, 34                 
    mov x4, 3
    bl drawRectangle
    movz x10, AZUL_GORRO1, lsl 16
    movk x10, AZUL_GORRO2, lsl 00
    mov x1, 329              
    mov x2, 38
    mov x3, 37                  
    mov x4, 3
    bl drawRectangle
    mov x1, 332              
    mov x2, 41
    mov x3, 34                  
    mov x4, 3
    bl drawRectangle
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 335              
    mov x2, 41
    mov x3, 34                  
    mov x4, 3
    bl drawRectangle
    movz x10, AZUL_GORRO1, lsl 16
    movk x10, AZUL_GORRO2, lsl 00
    mov x1, 329              
    mov x2, 48
    mov x3, 37                  
    mov x4, 3
    bl drawRectangle
    mov x1, 332              
    mov x2, 51
    mov x3, 34                  
    mov x4, 3
    bl drawRectangle
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 335              
    mov x2, 51
    mov x3, 34                  
    mov x4, 3
    bl drawRectangle
    movz x10, AZUL_GORRO1, lsl 16
    movk x10, AZUL_GORRO2, lsl 00
    mov x1, 329              
    mov x2, 58
    mov x3, 37                  
    mov x4, 3
    bl drawRectangle
    mov x1, 332              
    mov x2, 61
    mov x3, 34                  
    mov x4, 3
    bl drawRectangle
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 335              
    mov x2, 61
    mov x3, 34                  
    mov x4, 3
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 325              
    mov x2, 78
    mov x3, 25                 
    mov x4, 10
    bl drawRectangle
    mov x1, 330              
    mov x2, 83
    mov x3, 4                  
    mov x4, 80
    bl drawRectangle
    mov x1, 330              
    mov x2, 163
    mov x3, 8                  
    mov x4, 10
    bl drawRectangle
    movz x10, SOMBRA1, lsl 16
    movk x10, SOMBRA2, lsl 00
    mov x1, 326              
    mov x2, 88
    mov x3, 4                  
    mov x4, 2
    bl drawRectangle
    mov x1, 321              
    mov x2, 112
    mov x3, 4                  
    mov x4, 50
    bl drawRectangle
    mov x1, 321              
    mov x2, 152
    mov x3, 8                  // Largo del Rectángulo -> ... (!)
    mov x4, 10
    bl drawRectangle


    ldr x30, [sp]   
    add sp, sp, 8   
br x30
