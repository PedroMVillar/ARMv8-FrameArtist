.include "data.s"

/*----------------------------ARCHIVO PLANTA.S--------------------------------*/
	/* Dibuja la planta y su sombra.
    Contiene colores y funciones que solo son usadas en este archivo, por lo que
    se mantuvo su caracter local.
    */

.equ BASE_VERDE_OCRE, 0x1a06

.equ BASE_VERDE_AZULADO1, 0x01
.equ BASE_VERDE_AZULADO2, 0x1c29

.equ BASE_VERDE_INTERM, 0x1b11

.equ HOJA_VERDE_INT, 0xc46b

.equ HOJA_VERDE_FLUOR, 0xff40

.equ HOJA_BLANCA1, 0xff
.equ HOJA_BLANCA2, 0xffbf

.equ CELESTE_SOMBRA1, 0x22
.equ CELESTE_SOMBRA2, 0x95bb

.globl makeSombraPlanta
makeSombraPlanta:
    sub sp, sp, 8   
    str x30, [sp]   

    /* Luz Verde Pared - Parte del Fondo*/
    movz x10, VERDE_OSCURO2, lsl 00
    mov x1, 0
    mov x2, 293
    mov x3, 95
    mov x4, 133
    bl drawRectangle

    mov x1, 29
    mov x2, 269
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 37
    mov x2, 269
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 45
    mov x2, 269
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 53
    mov x2, 269
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 61
    mov x2, 269
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 69
    mov x2, 269
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 77
    mov x2, 269
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 25
    mov x2, 273
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 33
    mov x2, 273
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 41               
    mov x2, 273
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 49               
    mov x2, 273
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 57               
    mov x2, 273
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 65               
    mov x2, 273
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 73               
    mov x2, 273
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 81               
    mov x2, 273
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 17               
    mov x2, 277
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 25               
    mov x2, 277
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 33               
    mov x2, 277
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 41               
    mov x2, 277
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 49               
    mov x2, 277
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 57
    mov x2, 277
    mov x3, 2
    bl drawCincoPuntos

    mov x1, 65
    mov x2, 277
    mov x3, 2
    bl drawCincoPuntos

    mov x1, 73
    mov x2, 277
    mov x3, 2
    bl drawCincoPuntos

    mov x1, 81
    mov x2, 277
    mov x3, 2
    bl drawCincoPuntos

    mov x1, 13               
    mov x2, 285
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 9               
    mov x2, 281
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 13               
    mov x2, 281
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 17               
    mov x2, 281
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 21               
    mov x2, 281
    mov x3, 2                  
    bl drawCincoPuntos

    mov x1, 29
    mov x2, 279
    mov x3, 2
    bl drawCross

    mov x1, 37
    mov x2, 279
    mov x3, 2
    bl drawCross

    mov x1, 45
    mov x2, 279
    mov x3, 2
    bl drawCross

    mov x1, 53
    mov x2, 279
    mov x3, 2
    bl drawCross

    mov x1, 61
    mov x2, 279
    mov x3, 2
    bl drawCross

    mov x1, 69
    mov x2, 279
    mov x3, 2
    bl drawCross

    mov x1, 77
    mov x2, 279
    mov x3, 2
    bl drawCross

    mov x1, 85
    mov x2, 279
    mov x3, 2
    bl drawCross

    mov x1, 25
    mov x2, 283
    mov x3, 2
    bl drawCross

    mov x1, 33
    mov x2, 283
    mov x3, 2
    bl drawCross

    mov x1, 41
    mov x2, 283
    mov x3, 2
    bl drawCross

    mov x1, 49
    mov x2, 283
    mov x3, 2
    bl drawCross

    mov x1, 57
    mov x2, 283
    mov x3, 2
    bl drawCross

    mov x1, 65
    mov x2, 283
    mov x3, 2
    bl drawCross

    mov x1, 73
    mov x2, 283
    mov x3, 2
    bl drawCross

    mov x1, 81
    mov x2, 283
    mov x3, 2
    bl drawCross

    mov x1, 89
    mov x2, 283
    mov x3, 2
    bl drawCross

    mov x1, 1
    mov x2, 287
    mov x3, 2
    bl drawCross

    mov x1, 5
    mov x2, 287
    mov x3, 2
    bl drawCross

    mov x1, 13
    mov x2, 287
    mov x3, 2
    bl drawCross

    mov x1, 17
    mov x2, 287
    mov x3, 2
    bl drawCross

    mov x1, 21
    mov x2, 287
    mov x3, 2
    bl drawCross

    mov x1, 25
    mov x2, 287
    mov x3, 2
    bl drawCross

    mov x1, 29
    mov x2, 287
    mov x3, 2
    bl drawCross

    mov x1, 33
    mov x2, 287
    mov x3, 2
    bl drawCross

    mov x1, 37
    mov x2, 287
    mov x3, 2
    bl drawCross

    mov x1, 41
    mov x2, 287
    mov x3, 2
    bl drawCross

    mov x1, 45
    mov x2, 287
    mov x3, 2
    bl drawCross

    mov x1, 49
    mov x2, 287
    mov x3, 2
    bl drawCross

    mov x1, 53
    mov x2, 287
    mov x3, 2
    bl drawCross

    mov x1, 57
    mov x2, 287
    mov x3, 2
    bl drawCross

    mov x1, 61
    mov x2, 287
    mov x3, 2
    bl drawCross

    mov x1, 65
    mov x2, 287
    mov x3, 2
    bl drawCross

    mov x1, 69
    mov x2, 287
    mov x3, 2
    bl drawCross

    mov x1, 73
    mov x2, 287
    mov x3, 2
    bl drawCross

    mov x1, 77
    mov x2, 287
    mov x3, 2
    bl drawCross

    mov x1, 81
    mov x2, 287
    mov x3, 2
    bl drawCross

    mov x1, 85
    mov x2, 287
    mov x3, 2
    bl drawCross

    mov x1, 89
    mov x2, 287
    mov x3, 2
    bl drawCross

    mov x1, 41
    mov x2, 265
    bl drawHojaCuadrada2x2

    mov x1, 49
    mov x2, 265
    bl drawHojaCuadrada2x2

    mov x1, 57
    mov x2, 265
    bl drawHojaCuadrada2x2

    mov x1, 65
    mov x2, 265
    bl drawHojaCuadrada2x2

    mov x1, 73
    mov x2, 265
    bl drawHojaCuadrada2x2

    mov x1, 81
    mov x2, 265
    bl drawHojaCuadrada2x2

    mov x1, 45
    mov x2, 261
    bl drawHojaCuadrada2x2

    mov x1, 53
    mov x2, 261
    bl drawHojaCuadrada2x2

    mov x1, 61
    mov x2, 261
    bl drawHojaCuadrada2x2
    
    mov x1, 69
    mov x2, 261
    bl drawHojaCuadrada2x2

    mov x1, 76
    mov x2, 261
    bl drawHojaCuadrada2x2

    movz x10, VERDE_PARED2, lsl 00 

    mov x1, 1
    mov x2, 295
    mov x3, 2
    bl drawCuatroPuntos

    mov x1, 1
    mov x2, 303
    mov x3, 2
    bl drawCuatroPuntos

    mov x1, 9
    mov x2, 295
    mov x3, 2
    bl drawCuatroPuntos

    mov x1, 9
    mov x2, 299
    mov x3, 2
    bl drawCuatroPuntos

    mov x1, 17
    mov x2, 295
    mov x3, 2
    bl drawCuatroPuntos

    mov x1, 25
    mov x2, 295
    mov x3, 2
    bl drawCuatroPuntos

    mov x1, 33
    mov x2, 291
    mov x3, 2
    bl drawCuatroPuntos

    mov x1, 5
    mov x2, 311
    bl drawHojaCuadrada2x2

    mov x1, 13
    mov x2, 307
    bl drawHojaCuadrada2x2

    mov x1, 21
    mov x2, 303
    bl drawHojaCuadrada2x2

    mov x1, 45
    mov x2, 295
    bl drawHojaCuadrada2x2

    mov x1, 53
    mov x2, 295
    bl drawHojaCuadrada2x2

    mov x1, 61
    mov x2, 295
    bl drawHojaCuadrada2x2

    mov x1, 69
    mov x2, 295
    bl drawHojaCuadrada2x2

    mov x1, 77
    mov x2, 295
    bl drawHojaCuadrada2x2

    mov x1, 85
    mov x2, 295
    bl drawHojaCuadrada2x2

    ldr x30, [sp]   
    add sp, sp, 8   
br x30

.globl makePlanta
makePlanta:
    sub sp, sp, 8   
    str x30, [sp]  
    /* Base */
    /* Bordes Negros de la Base */
    movz x10, NEGRO_BORDES2, lsl 00 
    mov x1, 20               
    mov x2, 387
    mov x3, 83                  
    mov x4, 36
    bl drawRectangle

    mov x1, 23
    mov x2, 423
    mov x3, 114
    mov x4, 3
    bl drawRectangle

    mov x1, 17
    mov x2, 374
    mov x3, 3                  
    mov x4, 4
    bl drawRectangle

    mov x1, 103
    mov x2, 420
    mov x3, 31
    mov x4, 4
    bl drawRectangle

    mov x1, 103
    mov x2, 417
    mov x3, 28
    mov x4, 3
    bl drawRectangle

    mov x1, 103
    mov x2, 412
    mov x3, 24
    mov x4, 6
    bl drawRectangle

    mov x1, 103
    mov x2, 402
    mov x3, 22
    mov x4, 10
    bl drawRectangle

    mov x1, 103
    mov x2, 397
    mov x3, 16
    mov x4, 5
    bl drawRectangle

    mov x1, 103
    mov x2, 393
    mov x3, 14
    mov x4, 4
    bl drawRectangle

    /* Parte azulada de la base */
    movz x10, BASE_VERDE_AZULADO1, lsl 16
    movk x10, BASE_VERDE_AZULADO2, lsl 00
    mov x1, 64               
    mov x2, 390
    mov x3, 36                  
    mov x4, 29
    bl drawRectangle

    /* Linea entre los colores de la base */
    movz x10, BASE_VERDE_INTERM, lsl 00
    mov x1, 63               
    mov x2, 390
    mov x3, 1                  
    mov x4, 29
    bl drawRectangle

    /* Parte ocre de la base */
    movz x10, BASE_VERDE_OCRE, lsl 00
    mov x1, 23               
    mov x2, 390
    mov x3, 40                  
    mov x4, 29
    bl drawRectangle

    mov x1, 30               
    mov x2, 423
    mov x3, 29                  
    mov x4, 3
    bl drawRectangle

    mov x1, 66               
    mov x2, 423
    mov x3, 28                  
    mov x4, 3
    bl drawRectangle

    mov x1, 20               
    mov x2, 382
    mov x3, 83                  
    mov x4, 5
    bl drawRectangle

    mov x1, 23               
    mov x2, 378
    mov x3, 79                  
    mov x4, 4
    bl drawRectangle

    mov x1, 23               
    mov x2, 378
    mov x3, 79                  
    mov x4, 4
    bl drawRectangle

    mov x1, 20               
    mov x2, 374
    mov x3, 73                  
    mov x4, 4
    bl drawRectangle

    mov x1, 71               
    mov x2, 399
    bl drawHojaCuadrada5x5

    mov x1, 87               
    mov x2, 397
    bl drawHojaCuadrada5x5

    /* Hojas */
    /* Fondo Verde Claro */
    movz x10, HOJA_VERDE_INT, lsl 00
    mov x1, 17               
    mov x2, 322
    mov x3, 83                  
    mov x4, 34
    bl drawRectangle

    mov x1, 12               
    mov x2, 325
    mov x3, 5                  
    mov x4, 23
    bl drawRectangle

    mov x1, 35               
    mov x2, 356
    mov x3, 21                  
    mov x4, 3
    bl drawRectangle

    mov x1, 59               
    mov x2, 356
    mov x3, 13                  
    mov x4, 3
    bl drawRectangle

    mov x1, 64               
    mov x2, 359
    mov x3, 8                 
    mov x4, 2
    bl drawRectangle

    mov x1, 67               
    mov x2, 361
    mov x3, 5                 
    mov x4, 3
    bl drawRectangle

    mov x1, 45               
    mov x2, 358
    bl drawHojaCuadrada5x5

    mov x1, 51               
    mov x2, 366
    bl drawHojaCuadrada5x5

    mov x1, 67               
    mov x2, 366
    bl drawHojaCuadrada5x5

    mov x1, 74               
    mov x2, 366
    bl drawHojaCuadrada5x5     

    mov x1, 74               
    mov x2, 374
    bl drawHojaCuadrada5x5  

    /* Puntos celestes */
    movz x10, CELESTE_SOMBRA1, lsl 16
    movk x10, CELESTE_SOMBRA2, lsl 00
    mov x1, 103
    mov x2, 420
    bl drawHojaCuadrada2x2

    mov x1, 108
    mov x2, 415
    bl drawHojaCuadrada2x2

    mov x1, 113
    mov x2, 420
    bl drawHojaCuadrada2x2

    mov x1, 118
    mov x2, 416
    bl drawHojaCuadrada2x2

    mov x1, 118
    mov x2, 405
    bl drawHojaCuadrada2x2

    mov x1, 113
    mov x2, 400
    bl drawHojaCuadrada2x2

    mov x1, 104
    mov x2, 400
    bl drawHojaCuadrada2x2

    mov x1, 108
    mov x2, 395
    bl drawHojaCuadrada2x2

    mov x1, 113
    mov x2, 390
    bl drawHojaCuadrada2x2

    /* Hojas Color Verde Oscuro */
    movz x10, VERDE_OSCURO2, lsl 00
    mov x1, 22               
    mov x2, 345
    mov x3, 6                  
    mov x4, 3
    bl drawRectangle

    mov x1, 25               
    mov x2, 346
    mov x3, 3                  
    mov x4, 11
    bl drawRectangle

    mov x1, 25               
    mov x2, 353
    mov x3, 11                  
    mov x4, 3
    bl drawRectangle

    mov x1, 79               
    mov x2, 348
    mov x3, 8                  
    mov x4, 3
    bl drawRectangle

    mov x1, 79               
    mov x2, 348
    mov x3, 3                  
    mov x4, 8
    bl drawRectangle

    mov x1, 92
    mov x2, 320
    mov x3, 6
    mov x4, 8
    bl drawRectangle

    mov x1, 98
    mov x2, 333
    mov x3, 3
    mov x4, 2
    bl drawRectangle

    mov x1, 100
    mov x2, 343
    mov x3, 27
    mov x4, 12
    bl drawRectangle

    mov x1, 100
    mov x2, 338
    mov x3, 23
    mov x4, 5
    bl drawRectangle

    mov x1, 100
    mov x2, 334
    mov x3, 18
    mov x4, 4
    bl drawRectangle

    mov x1, 97
    mov x2, 355
    mov x3, 22
    mov x4, 23
    bl drawRectangle

    mov x1, 52               
    mov x2, 349
    mov x3, 2
    bl drawCross

    mov x1, 62               
    mov x2, 352
    mov x3, 2
    bl drawCross

    mov x1, 39               
    mov x2, 349
    mov x3, 2
    bl drawCross

    mov x1, 18
    mov x2, 331
    mov x3, 2
    bl drawCross

    mov x1, 94
    mov x2, 338
    mov x3, 2
    bl drawCross

    mov x1, 98
    mov x2, 330
    mov x3, 2
    bl drawCross

    mov x1, 96               
    mov x2, 330
    bl drawHojaCuadrada2x2

    mov x1, 82               
    mov x2, 392
    bl drawHojaCuadrada3x3

    mov x1, 90               
    mov x2, 394
    bl drawHojaCuadrada5x5

    mov x1, 27               
    mov x2, 392
    bl drawHojaCuadrada5x5

    mov x1, 95               
    mov x2, 353
    bl drawHojaCuadrada5x5

    mov x1, 87               
    mov x2, 353
    bl drawHojaCuadrada5x5

    mov x1, 30               
    mov x2, 373
    bl drawHojaCuadrada5x5

    mov x1, 38               
    mov x2, 379
    bl drawHojaCuadrada5x5

    mov x1, 48               
    mov x2, 371
    bl drawHojaCuadrada5x5

    mov x1, 51
    mov x2, 379
    bl drawHojaCuadrada5x5

    mov x1, 80
    mov x2, 384
    bl drawHojaCuadrada5x5

    mov x1, 69
    mov x2, 374
    bl drawHojaCuadrada5x5

    mov x1, 90
    mov x2, 382
    bl drawHojaCuadrada5x5

    mov x1, 100
    mov x2, 384
    bl drawHojaCuadrada5x5

    mov x1, 116
    mov x2, 377
    bl drawHojaCuadrada5x5

    mov x1, 103
    mov x2, 378
    bl drawHojaCuadrada7x7

    /* Hojas Verde Claro */
    movz x10, HOJA_VERDE_INT, lsl 00

    mov x1, 0               
    mov x2, 373
    mov x3, 4                  
    mov x4, 5
    bl drawRectangle

    mov x1, 87               
    mov x2, 387
    mov x3, 4                  
    mov x4, 5
    bl drawRectangle

    mov x1, 91               
    mov x2, 388
    mov x3, 1                  
    mov x4, 4
    bl drawRectangle

    mov x1, 7               
    mov x2, 338
    mov x3, 6                  
    mov x4, 3
    bl drawRectangle

    mov x1, 9
    mov x2, 325
    mov x3, 3
    mov x4, 5
    bl drawRectangle

    mov x1, 28
    mov x2, 320
    mov x3, 61
    mov x4, 2
    bl drawRectangle

    mov x1, 28
    mov x2, 320
    mov x3, 61
    mov x4, 2
    bl drawRectangle

    mov x1, 33
    mov x2, 314
    mov x3, 47
    mov x4, 3
    bl drawRectangle

    mov x1, 33
    mov x2, 317
    mov x3, 52
    mov x4, 3
    bl drawRectangle

    mov x1, 46
    mov x2, 312
    mov x3, 30
    mov x4, 2
    bl drawRectangle

    mov x1, 50
    mov x2, 310
    mov x3, 21
    mov x4, 2
    bl drawRectangle

    mov x1, 118
    mov x2, 355
    mov x3, 8
    mov x4, 9
    bl drawRectangle

    mov x1, 94
    mov x2, 361
    mov x3, 12
    mov x4, 8
    bl drawRectangle

    mov x1, 105
    mov x2, 369
    mov x3, 8
    mov x4, 11
    bl drawRectangle

    mov x1, 92
    mov x2, 355
    mov x3, 14
    mov x4, 9
    bl drawRectangle

    mov x1, 108
    mov x2, 358
    mov x3, 8
    mov x4, 8
    bl drawRectangle

    mov x1, 96               
    mov x2, 398
    mov x3, 2
    bl drawCross

    mov x1, 15               
    mov x2, 382
    mov x3, 2
    bl drawCross

    mov x1, 3               
    mov x2, 344
    mov x3, 2
    bl drawCross

    mov x1, 5               
    mov x2, 364
    mov x3, 2
    bl drawCross

    mov x1, 65
    mov x2, 393
    mov x3, 2
    bl drawCross

    mov x1, 72
    mov x2, 388
    mov x3, 2
    bl drawCross

    mov x1, 82
    mov x2, 361
    mov x3, 2
    bl drawCross

    mov x1, 111
    mov x2, 411
    mov x3, 2
    bl drawCross

    mov x1, 82
    mov x2, 397
    bl drawHojaCuadrada2x2

    mov x1, 103
    mov x2, 410
    bl drawHojaCuadrada2x2

    mov x1, 113
    mov x2, 382
    bl drawHojaCuadrada2x2

    mov x1, 121
    mov x2, 374
    bl drawHojaCuadrada2x2

    mov x1, 100               
    mov x2, 389
    bl drawHojaCuadrada3x3

    mov x1, 95               
    mov x2, 387
    bl drawHojaCuadrada5x5

    mov x1, 22               
    mov x2, 389
    bl drawHojaCuadrada5x5

    mov x1, 25               
    mov x2, 379
    bl drawHojaCuadrada5x5

    mov x1, 17               
    mov x2, 368
    bl drawHojaCuadrada5x5

    mov x1, 74               
    mov x2, 397
    bl drawHojaCuadrada5x5

    mov x1, 10               
    mov x2, 356
    bl drawHojaCuadrada5x5

    mov x1, 28               
    mov x2, 366
    bl drawHojaCuadrada5x5

    mov x1, 46
    mov x2, 374
    bl drawHojaCuadrada5x5

    mov x1, 60
    mov x2, 376
    bl drawHojaCuadrada5x5

    mov x1, 67
    mov x2, 382
    bl drawHojaCuadrada5x5

    mov x1, 95
    mov x2, 320
    bl drawHojaCuadrada5x5

    mov x1, 128
    mov x2, 413
    bl drawHojaCuadrada5x5

    mov x1, 120
    mov x2, 403
    bl drawHojaCuadrada5x5

    mov x1, 105
    mov x2, 403
    bl drawHojaCuadrada5x5

    mov x1, 108
    mov x2, 400
    bl drawHojaCuadrada5x5

    mov x1, 103
    mov x2, 392
    bl drawHojaCuadrada5x5

    mov x1, 107
    mov x2, 384
    bl drawHojaCuadrada5x5

    mov x1, 36               
    mov x2, 364
    bl drawHojaCuadrada7x7

    mov x1, 15               
    mov x2, 359
    bl drawHojaCuadrada7x7

    mov x1, 33               
    mov x2, 374
    bl drawHojaCuadrada7x7

    mov x1, 82               
    mov x2, 374
    bl drawHojaCuadrada7x7

    mov x1, 94        
    mov x2, 371
    bl drawHojaCuadrada7x7

    /* Detalles en verde oscuro */
    movz x10, VERDE_OSCURO2, lsl 00
    mov x1, 84        
    mov x2, 376
    bl drawHojaCuadrada3x3

    mov x1, 96        
    mov x2, 373
    bl drawHojaCuadrada3x3

    mov x1, 96        
    mov x2, 354
    bl drawHojaCuadrada5x5

    mov x1, 103
    mov x2, 357
    bl drawHojaCuadrada5x5

    mov x1, 107
    mov x2, 364
    mov x3, 3
    bl drawCross

    /* los dedos de la chica deben ir en este plano de la planta */
    bl makeDedos

    /* Hojas Verde Fluor */
    movz x10, HOJA_VERDE_FLUOR, lsl 00
    mov x1, 26              
    mov x2, 336
    mov x3, 6                  
    mov x4, 6
    bl drawRectangle

    mov x1, 26              
    mov x2, 318
    mov x3, 3                  
    mov x4, 7
    bl drawRectangle

    mov x1, 47              
    mov x2, 332
    mov x3, 2                  
    mov x4, 3
    bl drawRectangle

    mov x1, 47              
    mov x2, 340
    mov x3, 2                  
    mov x4, 3
    bl drawRectangle

    mov x1, 42              
    mov x2, 336
    mov x3, 3                  
    mov x4, 2
    bl drawRectangle

    mov x1, 51              
    mov x2, 336
    mov x3, 3                  
    mov x4, 2
    bl drawRectangle

    mov x1, 34
    mov x2, 344
    mov x3, 2
    bl drawCincoPuntos

    mov x1, 67
    mov x2, 348
    mov x3, 2
    bl drawCincoPuntos

    mov x1, 72
    mov x2, 333
    mov x3, 2
    bl drawCincoPuntos

    mov x1, 63
    mov x2, 337
    mov x3, 2
    bl drawCincoPuntos

    mov x1, 26
    mov x2, 357
    mov x3, 2
    bl drawCross

    mov x1, 57               
    mov x2, 362
    mov x3, 2
    bl drawCross

    mov x1, 72               
    mov x2, 359
    mov x3, 2
    bl drawCross

    mov x1, 90               
    mov x2, 367
    mov x3, 2
    bl drawCross

    mov x1, 15
    mov x2, 341
    mov x3, 2
    bl drawCross

    mov x1, 28
    mov x2, 325
    mov x3, 2
    bl drawCross

    mov x1, 43
    mov x2, 320
    mov x3, 2
    bl drawCross

    mov x1, 51
    mov x2, 325
    mov x3, 2
    bl drawCross

    mov x1, 62
    mov x2, 320
    mov x3, 2
    bl drawCross

    mov x1, 62
    mov x2, 320
    mov x3, 2
    bl drawCross

    mov x1, 85
    mov x2, 334
    mov x3, 2
    bl drawCross

    mov x1, 96
    mov x2, 326
    mov x3, 2
    bl drawCross

    mov x1, 84
    mov x2, 322
    bl drawHojaCuadrada5x5

    mov x1, 12
    mov x2, 330
    bl drawHojaCuadrada5x5

    mov x1, 15
    mov x2, 320
    bl drawHojaCuadrada5x5

    mov x1, 36
    mov x2, 320
    bl drawHojaCuadrada5x5

    mov x1, 42
    mov x2, 311
    bl drawHojaCuadrada5x5

    mov x1, 54
    mov x2, 307
    bl drawHojaCuadrada5x5

    mov x1, 33
    mov x2, 312
    bl drawHojaCuadrada5x5

    mov x1, 113
    mov x2, 395
    bl drawHojaCuadrada5x5

    mov x1, 105
    mov x2, 389
    bl drawHojaCuadrada5x5

    /* Flores Blancas */
    movz x10, HOJA_BLANCA1, lsl 16
    movk x10, HOJA_BLANCA2, lsl 00

    mov x1, 26               
    mov x2, 336
    mov x3, 2
    bl drawCross

    mov x1, 36               
    mov x2, 328
    mov x3, 2
    bl drawCross

    mov x1, 29               
    mov x2, 316
    mov x3, 2
    bl drawCross

    mov x1, 63
    mov x2, 337
    mov x3, 2
    bl drawCross

    mov x1, 45
    mov x2, 334
    mov x3, 2
    bl drawCross

    mov x1, 49
    mov x2, 313
    mov x3, 2
    bl drawCross

    mov x1, 117
    mov x2, 391
    mov x3, 2
    bl drawCross

    mov x1, 127
    mov x2, 377
    mov x3, 2
    bl drawCross

    mov x1, 30              
    mov x2, 327
    bl drawHojaCuadrada2x2

    mov x1, 45
    mov x2, 322
    bl drawHojaCuadrada2x2

    mov x1, 53
    mov x2, 327
    bl drawHojaCuadrada2x2

    mov x1, 64
    mov x2, 322
    bl drawHojaCuadrada2x2

    mov x1, 87
    mov x2, 336
    bl drawHojaCuadrada2x2

    mov x1, 98
    mov x2, 328
    bl drawHojaCuadrada2x2

    mov x1, 43
    mov x2, 312
    bl drawHojaCuadrada2x2

    mov x1, 35
    mov x2, 314
    bl drawHojaCuadrada2x2

    mov x1, 128
    mov x2, 372
    bl drawHojaCuadrada2x2

    mov x1, 17              
    mov x2, 322
    bl drawHojaCuadrada3x3

    mov x1, 7
    mov x2, 333
    bl drawHojaCuadrada5x5

    mov x1, 15
    mov x2, 325
    bl drawHojaCuadrada5x5

    mov x1, 56
    mov x2, 335
    bl drawHojaCuadrada5x5

    mov x1, 67
    mov x2, 328
    bl drawHojaCuadrada5x5

    mov x1, 79
    mov x2, 340
    bl drawHojaCuadrada5x5

    mov x1, 128
    mov x2, 392
    bl drawHojaCuadrada5x5

    mov x1, 118
    mov x2, 382
    bl drawHojaCuadrada5x5

    mov x1, 115
    mov x2, 369
    bl drawHojaCuadrada5x5

    mov x1, 126
    mov x2, 346
    bl drawHojaCuadrada5x5

    ldr x30, [sp]   
    add sp, sp, 8   
br x30


/* Formas */
drawHojaCuadrada2x2:
    /*
    Dibuja un cuadrado de 2 por 2 pixeles para reducir la repetición del código.
    Las coordenadas X,Y ingresadas deben corresponder a la esquina superior izquierda.
    La fórmula requiere los valores de los registros X1, X2, 
    Establece en 2 los valores de los registros X3 y X4, para luego llamar a drawRectangle.
    */
    sub sp, sp, 8   
    str x30, [sp]   

    mov x3, 2                  
    mov x4, 2
    /* Dibuja el rectángulo vertical */
    bl drawRectangle

    ldr x30, [sp]
    add sp, sp, 8   
br x30

drawHojaCuadrada3x3:
    /*
    Dibuja un cuadrado de 3 por 3 pixeles para reducir la repetición del código.
    Las coordenadas X,Y ingresadas deben corresponder a la esquina superior izquierda.
    La fórmula requiere los valores de los registros X1, X2, 
    Establece en 3 los valores de los registros X3 y X4, para luego llamar a drawRectangle.
    */
    sub sp, sp, 8   
    str x30, [sp]   

    mov x3, 3                  
    mov x4, 3
    /* Dibuja el rectángulo vertical */
    bl drawRectangle

    ldr x30, [sp]
    add sp, sp, 8   
br x30

drawHojaCuadrada5x5:
    /*
    Dibuja un cuadrado de 5 por 5 pixeles para reducir la repetición del código.
    Las coordenadas X,Y ingresadas deben corresponder a la esquina superior izquierda.
    La fórmula requiere los valores de los registros X1, X2, 
    Establece en 5 los valores de los registros X3 y X4, para luego llamar a drawRectangle.
    */
    sub sp, sp, 8   
    str x30, [sp]   

    mov x3, 5                  
    mov x4, 5
    /* Dibuja el rectángulo vertical */
    bl drawRectangle

    ldr x30, [sp]
    add sp, sp, 8   
br x30

drawHojaCuadrada7x7:
    /*
    Dibuja un cuadrado de 7 por 7 pixeles para reducir la repetición del código.
    Las coordenadas X,Y ingresadas deben corresponder a la esquina superior izquierda.
    La fórmula requiere los valores de los registros X1, X2, 
    Establece en 7 los valores de los registros X3 y X4, para luego llamar a drawRectangle.
    */
    sub sp, sp, 8   
    str x30, [sp]   

    mov x3, 7                  
    mov x4, 7
    /* Dibuja el rectángulo vertical */
    bl drawRectangle

    ldr x30, [sp]
    add sp, sp, 8   
br x30


makeDedos:
    sub sp, sp, 8   
    str x30, [sp] 

    /* Bordes */
    movz x10, NEGRO_BORDES2, lsl 00
    mov x1, 54
    mov x2, 312
    mov x3, 5
    mov x4, 2
    bl drawRectangle

    mov x1, 59
    mov x2, 310
    mov x3, 21
    mov x4, 2
    bl drawRectangle

    mov x1, 80
    mov x2, 312
    mov x3, 5
    mov x4, 2
    bl drawRectangle

    mov x1, 78
    mov x2, 314
    mov x3, 2
    mov x4, 2
    bl drawRectangle

    mov x1, 76
    mov x2, 316
    mov x3, 2
    mov x4, 2
    bl drawRectangle

    mov x1, 74
    mov x2, 318
    mov x3, 2
    mov x4, 2
    bl drawRectangle

    mov x1, 72
    mov x2, 320
    mov x3, 2
    mov x4, 8
    bl drawRectangle

    mov x1, 85
    mov x2, 310
    mov x3, 13
    mov x4, 2
    bl drawRectangle

    mov x1, 98
    mov x2, 312
    mov x3, 2
    mov x4, 2
    mov x5, 5
    bl drawDiagonalInfDer

    mov x1, 106
    mov x2, 320
    mov x3, 2
    mov x4, 6
    bl drawRectangle

    mov x1, 108
    mov x2, 326
    mov x3, 2
    mov x4, 2
    mov x5, 5
    bl drawDiagonalInfDer

    /* Detalles oscuros */
    movz x10, PIEL_SOMBRA1, lsl 16
    movk x10, PIEL_SOMBRA2, lsl 00
    mov x1, 54
    mov x2, 314
    mov x3, 8
    mov x4, 3
    bl drawRectangle

    mov x1, 59
    mov x2, 312
    mov x3, 20
    mov x4, 2
    bl drawRectangle

    mov x1, 80
    mov x2, 314
    mov x3, 7
    mov x4, 3
    bl drawRectangle

    mov x1, 78
    mov x2, 316
    mov x3, 2
    mov x4, 3
    bl drawRectangle

    mov x1, 76
    mov x2, 318
    mov x3, 2
    mov x4, 3
    bl drawRectangle

    mov x1, 74
    mov x2, 320
    mov x3, 2
    mov x4, 5
    bl drawRectangle

    mov x1, 85
    mov x2, 312
    mov x3, 13
    mov x4, 3
    bl drawRectangle

    mov x1, 98
    mov x2, 314
    mov x3, 2
    mov x4, 2
    mov x5, 4
    bl drawDiagonalInfDer

    mov x1, 98
    mov x2, 316
    mov x3, 2
    mov x4, 2
    mov x5, 4
    bl drawDiagonalInfDer

    mov x1, 104
    mov x2, 322
    mov x3, 2
    mov x4, 6
    bl drawRectangle

    mov x1, 106
    mov x2, 326
    mov x3, 2
    mov x4, 2
    mov x5, 4
    bl drawDiagonalInfDer

    mov x1, 106
    mov x2, 328
    mov x3, 2
    mov x4, 2
    mov x5, 3
    bl drawDiagonalInfDer

    mov x1, 106
    mov x2, 330
    mov x3, 2
    mov x4, 2
    mov x5, 2
    bl drawDiagonalInfDer

    /* Detalles claros */
    movz x10, PIEL_INT1, lsl 16
    movk x10, PIEL_INT2, lsl 00

    mov x1, 54
    mov x2, 317
    mov x3, 9
    mov x4, 2
    bl drawRectangle

    mov x1, 63
    mov x2, 314
    mov x3, 14
    mov x4, 2
    bl drawRectangle

    mov x1, 80
    mov x2, 317
    mov x3, 9
    mov x4, 3
    bl drawRectangle

    mov x1, 78
    mov x2, 319
    mov x3, 2
    mov x4, 3
    bl drawRectangle

    mov x1, 76
    mov x2, 321
    mov x3, 2
    mov x4, 5
    bl drawRectangle

    mov x1, 74
    mov x2, 326
    mov x3, 2
    mov x4, 3
    bl drawRectangle

    mov x1, 87
    mov x2, 315
    mov x3, 10
    mov x4, 3
    bl drawRectangle

    mov x1, 96
    mov x2, 316
    mov x3, 2
    mov x4, 2
    mov x5, 4
    bl drawDiagonalInfDer

    mov x1, 102
    mov x2, 326
    mov x3, 2
    mov x4, 2
    mov x5, 4
    bl drawDiagonalInfDer

    mov x1, 100
    mov x2, 326
    mov x3, 2
    mov x4, 2
    mov x5, 4
    bl drawDiagonalInfDer

    /* Detalles color piel */
    movz x10, PIEL1, lsl 16
    movk x10, PIEL2, lsl 00
    mov x1, 56
    mov x2, 319
    mov x3, 9
    mov x4, 3
    bl drawRectangle

    mov x1, 63
    mov x2, 316
    mov x3, 12
    mov x4, 4
    bl drawRectangle

    mov x1, 80
    mov x2, 320
    mov x3, 9
    mov x4, 4
    bl drawRectangle

    mov x1, 78
    mov x2, 322
    mov x3, 5
    mov x4, 4
    bl drawRectangle

    mov x1, 76
    mov x2, 324
    mov x3, 5
    mov x4, 5
    bl drawRectangle

    mov x1, 74
    mov x2, 329
    mov x3, 6
    mov x4, 1
    bl drawRectangle

    mov x1, 89
    mov x2, 318
    mov x3, 8
    mov x4, 5
    bl drawRectangle

    mov x1, 96
    mov x2, 318
    mov x3, 2
    mov x4, 2
    mov x5, 4
    bl drawDiagonalInfDer

    mov x1, 96
    mov x2, 320
    mov x3, 2
    mov x4, 2
    mov x5, 4
    bl drawDiagonalInfDer

    mov x1, 98
    mov x2, 326
    mov x3, 2
    mov x4, 2
    mov x5, 4
    bl drawDiagonalInfDer

    ldr x30, [sp]
    add sp, sp, 8
br x30
