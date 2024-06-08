.include "data.s"

/*----------------------------ARCHIVO TABLERO.S--------------------------------*/
	/* Dibuja el tablero electronico, sus luces y botones en la esquina
    superior derecha de la imagen.
    Se separo la parte del codigo que crea los cuadrados de la pantalla para
    hacer que titilen en dynamic.s
    */

.globl makeTablero
makeTablero: 
    sub sp, sp, 8
    str x30, [sp]
    /* [tablero externo] con detalles */
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 451                
    mov x2, 65
    mov x3, 189                 
    mov x4, 5 
    bl drawRectangle
    mov x1, 447                
    mov x2, 69
    mov x3, 193                 
    mov x4, 141 
    bl drawRectangle
	movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 451                
    mov x2, 69
    mov x3, 189                
    mov x4, 137 
    bl drawRectangle
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 451                
    mov x2, 69
    mov x3, 189                 
    mov x4, 4 
    bl drawRectangle
    /* [tablero interno] con detalles */
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 460                
    mov x2, 78
    mov x3, 71                 
    mov x4, 4
    bl drawRectangle
    mov x1, 456                
    mov x2, 82
    mov x3, 75              
    mov x4, 120
    bl drawRectangle
	movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 460                
    mov x2, 82
    mov x3, 75                
    mov x4, 122 
    bl drawRectangle
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 460                
    mov x2, 82
    mov x3, 71                
    mov x4, 119 
    bl drawRectangle
    ldr x30, [sp]   // carga la dirección de 'ret' desde 'sp-8
    add sp, sp, 8   // regresa en 8 el puntero 'sp'
br x30

.globl makeDisplays
makeDisplays:
    sub sp, sp, 8
    str x30, [sp]
    /* [primera pantalla] */
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 464                
    mov x2, 86
    mov x3, 66                 
    mov x4, 49 
    bl drawRectangle
    movz x10, VERDE_OSC1, lsl 16
    movk x10, VERDE_OSC2, lsl 00

    bl makeLucesAmarillasTablero

    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    /* [segunda pantalla] */
    mov x1, 464                
    mov x2, 139
    mov x3, 66                
    mov x4, 52 
    bl drawRectangle
    /* dibujo de kirby */
    movz x10, ROSA_OSC1, lsl 16
    movk x10, ROSA_OSC2, lsl 00
    mov x1, 480                
    mov x2, 142
    mov x3, 6             
    mov x4, 2 
    bl drawRectangle
    mov x1, 478                
    mov x2, 144
    mov x3, 10              
    mov x4, 2 
    bl drawRectangle
    mov x1, 476                
    mov x2, 146
    mov x3, 20              
    mov x4, 2 
    bl drawRectangle
    mov x1, 476                
    mov x2, 148
    mov x3, 24           
    mov x4, 2 
    bl drawRectangle
    mov x1, 476                
    mov x2, 150
    mov x3, 26          
    mov x4, 2 
    bl drawRectangle
    mov x1, 476                
    mov x2, 152
    mov x3, 28              
    mov x4, 2 
    bl drawRectangle
    mov x1, 474                
    mov x2, 154
    mov x3, 32            
    mov x4, 2 
    bl drawRectangle
    mov x1, 474                
    mov x2, 156
    mov x3, 34           
    mov x4, 2 
    bl drawRectangle
    mov x1, 474                
    mov x2, 158
    mov x3, 36           
    mov x4, 2 
    bl drawRectangle
    mov x1, 474                
    mov x2, 160
    mov x3, 38            
    mov x4, 8 
    bl drawRectangle
    mov x1, 476                
    mov x2, 168
    mov x3, 34              
    mov x4, 4 
    bl drawRectangle
    mov x1, 478                
    mov x2, 172
    mov x3, 32          
    mov x4, 4 
    bl drawRectangle
    mov x1, 478                
    mov x2, 176
    mov x3, 30         
    mov x4, 2 
    bl drawRectangle
    mov x1, 478                
    mov x2, 178
    mov x3, 26            
    mov x4, 2 
    bl drawRectangle
    mov x1, 478                
    mov x2, 180
    mov x3, 12           
    mov x4, 4 
    bl drawRectangle
    mov x1, 480                
    mov x2, 184
    mov x3, 8             
    mov x4, 2 
    bl drawRectangle
    movz x10, 0xFF, lsl 16
    movk x10, 0x0000, lsl 00
    mov x1, 498                
    mov x2, 170
    mov x3, 10               
    mov x4, 8 
    bl drawRectangle
    movz x10, 0x00, lsl 16
    movk x10, 0x0000, lsl 00
    mov x1, 484                
    mov x2, 154
    mov x3, 3             
    mov x4, 10 
    bl drawRectangle
    mov x1, 491                
    mov x2, 154
    mov x3, 3               
    mov x4, 10 
    bl drawRectangle
    mov x1, 487                
    mov x2, 168
    mov x3, 6           
    mov x4, 3 
    bl drawRectangle
    mov x1, 500                
    mov x2, 166
    mov x3, 10             
    mov x4, 3 
    bl drawRectangle
    mov x1, 498                
    mov x2, 169
    mov x3, 3               
    mov x4, 3 
    bl drawRectangle
    mov x1, 495                
    mov x2, 172
    mov x3, 3           
    mov x4, 8 
    bl drawRectangle
    mov x1, 478                
    mov x2, 172
    mov x3, 3              
    mov x4, 3 
    bl drawRectangle    
    mov x1, 481                
    mov x2, 175
    mov x3, 3              
    mov x4, 3 
    bl drawRectangle    
    mov x1, 484                
    mov x2, 178
    mov x3, 3               
    mov x4, 3 
    bl drawRectangle    
    mov x1, 487                
    mov x2, 181
    mov x3, 8            
    mov x4, 3 
    bl drawRectangle    
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 464                
    mov x2, 191
    mov x3, 67               
    mov x4, 3
    bl drawRectangle
    ldr x30, [sp]   // carga la dirección de 'ret' desde 'sp-8
    add sp, sp, 8   // regresa en 8 el puntero 'sp'
br x30

.globl makeButtons
makeButtons:
    sub sp, sp, 8
    str x30, [sp]
    /* [botones] */
    movz x10, BRILLO_PARED1, lsl 16
    movk x10, BRILLO_PARED2, lsl 0
    mov x1, 544                
    mov x2, 69
    mov x3, 45              
    mov x4, 3 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 540                
    mov x2, 73
    mov x3, 100               
    mov x4, 135 
    bl drawRectangle
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 544                
    mov x2, 73
    mov x3, 45             
    mov x4, 60 
    bl drawRectangle
    mov x1, 544                
    mov x2, 138
    mov x3, 45               
    mov x4, 68 
    bl drawRectangle
    movz x10, VERDE_OSC1, lsl 16
    movk x10, VERDE_OSC2, lsl 00
    mov x1, 547                
    mov x2, 78
    mov x3, 39               
    mov x4, 20 
    bl drawRectangle

    bl makeRayitasVerde

    movz x10, AZUL1, lsl 16
    movk x10, AZUL2, lsl 00
    mov x1, 564                
    mov x2, 108
    mov x3, 14                 
    mov x4, 18 
    bl drawRectangle
    mov x1, 561                
    mov x2, 111
    mov x3, 20                
    mov x4, 12 
    bl drawRectangle
    movz x10, CELESTE1, lsl 16
    movk x10, CELESTE2, lsl 00
    mov x1, 556                
    mov x2, 108
    mov x3, 14                 
    mov x4, 18 
    bl drawRectangle
    mov x1, 553                
    mov x2, 111
    mov x3, 20                
    mov x4, 12 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 549                
    mov x2, 144
    mov x3, 34                  
    mov x4, 6 
    bl drawRectangle
    mov x1, 549                
    mov x2, 153
    mov x3, 34                  
    mov x4, 6 
    bl drawRectangle
    movz x10, CELESTE1, lsl 16
    movk x10, CELESTE2, lsl 00
    mov x1, 549                
    mov x2, 164
    mov x3, 7                  
    mov x4, 4 
    bl drawRectangle
    mov x1, 549                
    mov x2, 172
    mov x3, 7                  
    mov x4, 4 
    bl drawRectangle
    mov x1, 549                
    mov x2, 180
    mov x3, 7                  
    mov x4, 4 
    bl drawRectangle
    mov x1, 549                
    mov x2, 188
    mov x3, 7                  
    mov x4, 4 
    bl drawRectangle
    mov x1, 549                
    mov x2, 196
    mov x3, 7                  
    mov x4, 4 
    bl drawRectangle
    movz x10, VERDE_FUERTE1, lsl 16
    movk x10, VERDE_FUERTE2, lsl 00
    mov x1, 559                
    mov x2, 164
    mov x3, 4                  
    mov x4, 4 
    bl drawRectangle
    mov x1, 559                
    mov x2, 172
    mov x3, 4                  
    mov x4, 4 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 559                
    mov x2, 180
    mov x3, 4                  
    mov x4, 4 
    bl drawRectangle
    mov x1, 559                
    mov x2, 188
    mov x3, 4                  
    mov x4, 4 
    bl drawRectangle
    movz x10, VERDE_FUERTE1, lsl 16
    movk x10, VERDE_FUERTE2, lsl 00
    mov x1, 559                
    mov x2, 196
    mov x3, 4                  
    mov x4, 4 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 567                
    mov x2, 164
    mov x3, 3                  
    mov x4, 37 
    bl drawRectangle
    mov x1, 567                
    mov x2, 164
    mov x3, 17                  
    mov x4, 9 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 570                
    mov x2, 177
    mov x3, 14                  
    mov x4, 4 
    bl drawRectangle
    movz x10, VERDE_FUERTE1, lsl 16
    movk x10, VERDE_FUERTE2, lsl 00
    mov x1, 570                
    mov x2, 181
    mov x3, 14                  
    mov x4, 4 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 570                
    mov x2, 185
    mov x3, 14                  
    mov x4, 8 
    bl drawRectangle
    ldr x30, [sp]   // carga la dirección de 'ret' desde 'sp-8
    add sp, sp, 8   // regresa en 8 el puntero 'sp'
br x30

.globl makeLucesCuadradasTablero
makeLucesCuadradasTablero:
    sub sp, sp, 8
    str x30, [sp]
    mov x1, 570                
    mov x2, 193
    mov x3, 14                  
    mov x4, 8 
    bl drawRectangle
    mov x1, 570                
    mov x2, 173
    mov x3, 14                  
    mov x4, 4 
    bl drawRectangle
    ldr x30, [sp]   // carga la dirección de 'ret' desde 'sp-8
    add sp, sp, 8   // regresa en 8 el puntero 'sp'
br x30

.globl makeLucesAmarillasTablero
makeLucesAmarillasTablero:
    sub sp, sp, 8
    str x30, [sp]

    mov x1, 468                
    mov x2, 126
    mov x3, 5                  
    mov x4, 5 
    bl drawRectangle
    mov x1, 468                
    mov x2, 119
    mov x3, 5                 
    mov x4, 5 
    bl drawRectangle
    mov x1, 475                
    mov x2, 126
    mov x3, 5                  
    mov x4, 5 
    bl drawRectangle
    mov x1, 475                
    mov x2, 112
    mov x3, 5                 
    mov x4, 5 
    bl drawRectangle
    mov x1, 482                
    mov x2, 112
    mov x3, 5                  
    mov x4, 5 
    bl drawRectangle
    mov x1, 489                
    mov x2, 112
    mov x3, 5                
    mov x4, 5 
    bl drawRectangle
    mov x1, 496                
    mov x2, 112
    mov x3, 5              
    mov x4, 5 
    bl drawRectangle
    mov x1, 503                
    mov x2, 112
    mov x3, 5                
    mov x4, 5 
    bl drawRectangle
    mov x1, 510                
    mov x2, 112
    mov x3, 5              
    mov x4, 5 
    bl drawRectangle
    mov x1, 517                
    mov x2, 119
    mov x3, 5             
    mov x4, 5 
    bl drawRectangle
    mov x1, 517                
    mov x2, 126
    mov x3, 5                 
    mov x4, 5 
    bl drawRectangle
    mov x1, 510                
    mov x2, 126
    mov x3, 5               
    mov x4, 5 
    bl drawRectangle
    mov x1, 489                
    mov x2, 105
    mov x3, 5               
    mov x4, 5 
    bl drawRectangle
    mov x1, 496                
    mov x2, 105
    mov x3, 5               
    mov x4, 5 
    bl drawRectangle
    mov x1, 489                
    mov x2, 98
    mov x3, 5               
    mov x4, 5 
    bl drawRectangle
    mov x1, 496                
    mov x2, 98
    mov x3, 5                 
    mov x4, 5 
    bl drawRectangle

    ldr x30, [sp]   // carga la dirección de 'ret' desde 'sp-8
    add sp, sp, 8   // regresa en 8 el puntero 'sp'
br x30

.globl makeRayitasVerde
makeRayitasVerde:
    sub sp, sp, 8
    str x30, [sp]

    movz x10, VERDE_FUERTE1, lsl 16
    movk x10, VERDE_FUERTE2, lsl 00
    mov x1, 550                
    mov x2, 81
    mov x3, 36                 
    mov x4, 20 
    bl drawRectangle
    movz x10, VERDE_OSC1, lsl 16
    movk x10, VERDE_OSC2, lsl 00
    mov x1, 556                
    mov x2, 84
    mov x3, 4                
    mov x4, 8 
    bl drawRectangle

    mov x1, 556                
    mov x2, 94
    mov x3, 22                  
    mov x4, 3 
    bl drawRectangle

    ldr x30, [sp]   // carga la dirección de 'ret' desde 'sp-8
    add sp, sp, 8   // regresa en 8 el puntero 'sp'
br x30

.globl makeRayita2
makeRayita2:
    sub sp, sp, 8
    str x30, [sp]

    movz x10, VERDE_OSC1, lsl 16
    movk x10, VERDE_OSC2, lsl 00
    mov x1, 562                
    mov x2, 84
    mov x3, 4                
    mov x4, 8 
    bl drawRectangle

    ldr x30, [sp]   // carga la dirección de 'ret' desde 'sp-8
    add sp, sp, 8   // regresa en 8 el puntero 'sp'
br x30

.globl makeRayita3
makeRayita3:
    sub sp, sp, 8
    str x30, [sp]

    movz x10, VERDE_OSC1, lsl 16
    movk x10, VERDE_OSC2, lsl 00
    mov x1, 568                
    mov x2, 84
    mov x3, 4               
    mov x4, 8 
    bl drawRectangle

    ldr x30, [sp]   // carga la dirección de 'ret' desde 'sp-8
    add sp, sp, 8   // regresa en 8 el puntero 'sp'
br x30

.globl makeRayita4
makeRayita4:
    sub sp, sp, 8
    str x30, [sp]

    movz x10, VERDE_OSC1, lsl 16
    movk x10, VERDE_OSC2, lsl 00
    mov x1, 574                
    mov x2, 84
    mov x3, 4                
    mov x4, 8 
    bl drawRectangle

    ldr x30, [sp]   // carga la dirección de 'ret' desde 'sp-8
    add sp, sp, 8   // regresa en 8 el puntero 'sp'
br x30
