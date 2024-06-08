.include "data.s"

.global makeCables
makeCables:
/*----------------------------ARCHIVO CAJACABLE.S--------------------------------*/
	/* Dibuja la caja con luces en el medio de la pared y el cable que sale de esta.
    Se agrega una subrutina que dibuje la luz y permitir que parpadee en dynamic.s
    */

    sub sp, sp, 8   
    str x30, [sp]   
    /* [cable en parte oscura de pared] */
    movz x10, AZUL_GORRO1, lsl 16
    movk x10, AZUL_GORRO2, lsl 00
    mov x1, 423                
    mov x2, 19
    mov x3, 217                
    mov x4, 3 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 423                
    mov x2, 22
    mov x3, 217                
    mov x4, 3 
    bl drawRectangle
    /* [cable en parte clara de la pared] */
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 413                
    mov x2, 19
    mov x3, 10               
    mov x4, 3 
    bl drawRectangle
    mov x1, 410                
    mov x2, 22
    mov x3, 3               
    mov x4, 3 
    bl drawRectangle
    mov x1, 407                
    mov x2, 25
    mov x3, 3               
    mov x4, 6 
    bl drawRectangle
    mov x1, 404                
    mov x2, 31
    mov x3, 3               
    mov x4, 12 
    bl drawRectangle
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 413                
    mov x2, 22
    mov x3, 10                
    mov x4, 3 
    bl drawRectangle
    mov x1, 410                
    mov x2, 25
    mov x3, 3                
    mov x4, 6 
    bl drawRectangle
    mov x1, 407                
    mov x2, 31
    mov x3, 3               
    mov x4, 12 
    bl drawRectangle
    /* [primera caja de registro] */
    movz x10, SOMBRA1, lsl 16
    movk x10, SOMBRA2, lsl 00
    mov x1, 397                
    mov x2, 45
    mov x3, 13                
    mov x4, 10 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 400                
    mov x2, 43
    mov x3, 13                
    mov x4, 10 
    bl drawRectangle
    /* [------------------------] */
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 407                
    mov x2, 53
    mov x3, 3                
    mov x4, 39 
    bl drawRectangle
    mov x1, 410                
    mov x2, 92
    mov x3, 3                
    mov x4, 23 
    bl drawRectangle
    mov x1, 407                
    mov x2, 115
    mov x3, 3                
    mov x4, 113 
    bl drawRectangle
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 404                
    mov x2, 53
    mov x3, 3                
    mov x4, 39 
    bl drawRectangle
    mov x1, 407                
    mov x2, 92
    mov x3, 3                
    mov x4, 23 
    bl drawRectangle
    mov x1, 404                
    mov x2, 115
    mov x3, 3                
    mov x4, 113 
    bl drawRectangle
    /* [segunda caja de registro] */
    movz x10, SOMBRA1, lsl 16
    movk x10, SOMBRA2, lsl 00
    mov x1, 397                
    mov x2, 230
    mov x3, 13                
    mov x4, 10 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 400                
    mov x2, 228
    mov x3, 13                
    mov x4, 10 
    bl drawRectangle
    /* [sombra de caja grande] */
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 342                
    mov x2, 265
    mov x3, 45               
    mov x4, 10    
    bl drawRectangle
    /* [---------------------] */
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 407                
    mov x2, 240
    mov x3, 3                
    mov x4, 35 
    bl drawRectangle
    mov x1, 404                
    mov x2, 275
    mov x3, 3                
    mov x4, 10 
    bl drawRectangle
    mov x1, 401                
    mov x2, 285
    mov x3, 4                
    mov x4, 4    
    bl drawRectangle
    mov x1, 381                
    mov x2, 289
    mov x3, 20                
    mov x4, 4    
    bl drawRectangle
    mov x1, 377                
    mov x2, 285
    mov x3, 4               
    mov x4, 4    
    bl drawRectangle
    mov x1, 374                
    mov x2, 265
    mov x3, 3               
    mov x4, 20    
    bl drawRectangle
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 404                
    mov x2, 240
    mov x3, 3                
    mov x4, 35 
    bl drawRectangle
    mov x1, 401                
    mov x2, 275
    mov x3, 3                
    mov x4, 10 
    bl drawRectangle
    mov x1, 397                
    mov x2, 285
    mov x3, 4                
    mov x4, 4    
    bl drawRectangle
    mov x1, 374                
    mov x2, 285
    mov x3, 4               
    mov x4, 4    
    bl drawRectangle
    mov x1, 371                
    mov x2, 265
    mov x3, 3               
    mov x4, 20    
    bl drawRectangle
    /* [caja grande] */
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 342                
    mov x2, 205
    mov x3, 50               
    mov x4, 60    
    bl drawRectangle
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 352                
    mov x2, 209
    mov x3, 35               
    mov x4, 52    
    bl drawRectangle
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 352                
    mov x2, 209
    mov x3, 35               
    mov x4, 4    
    bl drawRectangle
    mov x1, 383              
    mov x2, 209
    mov x3, 4               
    mov x4, 52    
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 354                
    mov x2, 215
    mov x3, 16               
    mov x4, 16    
    bl drawRectangle
    movz x10, ROJO_OSC1, lsl 16
    movk x10, ROJO_OSC2, lsl 00

    bl makeLuzCruz

    movz x10, VERDE_FUERTE1, lsl 16
    movk x10, VERDE_FUERTE2, lsl 00
    mov x1, 372                
    mov x2, 215
    mov x3, 4               
    mov x4, 4    
    bl drawRectangle
    movz x10, ROJO_OSC1, lsl 16
    movk x10, ROJO_OSC2, lsl 00
    mov x1, 377                
    mov x2, 215
    mov x3, 4               
    mov x4, 4    
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 372                
    mov x2, 223
    mov x3, 10               
    mov x4, 8       
    bl drawRectangle
    mov x1, 354                
    mov x2, 237
    mov x3, 26               
    mov x4, 4       
    bl drawRectangle
    mov x1, 354                
    mov x2, 244
    mov x3, 26               
    mov x4, 4       
    bl drawRectangle
    mov x1, 354                
    mov x2, 251
    mov x3, 26               
    mov x4, 4       
    bl drawRectangle
    
    /* [----------] */
    ldr x30, [sp]   
    add sp, sp, 8   
br x30

.global makeLuzCruz
makeLuzCruz:
    sub sp, sp, 8   
    str x30, [sp]   

    mov x1, 361                
    mov x2, 217
    mov x3, 3               
    mov x4, 12    
    bl drawRectangle
    mov x1, 356                
    mov x2, 221
    mov x3, 12               
    mov x4, 3    
    bl drawRectangle

    ldr x30, [sp]   
    add sp, sp, 8   
br x30
