.include "data.s"

/*----------------------------ARCHIVO ESTANTES.S--------------------------------*/
	/* Dibuja los estantes con los libros que se ven detras de los frascos.
    Se separaron del codigo las subrutinas que permiten animar el pestañeo del
    gatito y aquel que pinta el fondo detras del bichito de luz tras cada frame.
    */

.globl makeEstantes
makeEstantes:
    sub sp, sp, 8   
    str x30, [sp]   
    /* [detalle oscuro del fondo] */
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 448               
    mov x2, 312
    mov x3, 180                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 454               
    mov x2, 306
    mov x3, 168                  
    mov x4, 8 
    bl drawRectangle
    mov x1, 448               
    mov x2, 303
    mov x3, 180                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 442               
    mov x2, 270
    mov x3, 193                  
    mov x4, 6 
    bl drawRectangle
    mov x1, 445               
    mov x2, 281
    mov x3, 186                  
    mov x4, 5 
    bl drawRectangle
    mov x1, 445               
    mov x2, 276
    mov x3, 4                  
    mov x4, 27 
    bl drawRectangle
    mov x1, 455               
    mov x2, 276
    mov x3, 4                  
    mov x4, 27 
    bl drawRectangle
    mov x1, 465               
    mov x2, 276
    mov x3, 4                  
    mov x4, 27 
    bl drawRectangle
    mov x1, 475               
    mov x2, 276
    mov x3, 4                  
    mov x4, 27 
    bl drawRectangle
    mov x1, 485               
    mov x2, 276
    mov x3, 4                  
    mov x4, 27 
    bl drawRectangle
    mov x1, 495               
    mov x2, 276
    mov x3, 4                  
    mov x4, 27 
    bl drawRectangle
    mov x1, 505               
    mov x2, 276
    mov x3, 4                  
    mov x4, 27 
    bl drawRectangle
    mov x1, 515               
    mov x2, 276
    mov x3, 4                  
    mov x4, 27 
    bl drawRectangle
    mov x1, 525               
    mov x2, 276
    mov x3, 4                  
    mov x4, 27 
    bl drawRectangle
    mov x1, 535               
    mov x2, 276
    mov x3, 4                  
    mov x4, 27 
    bl drawRectangle
    mov x1, 545               
    mov x2, 276
    mov x3, 4                  
    mov x4, 27 
    bl drawRectangle
    mov x1, 555               
    mov x2, 276
    mov x3, 4                  
    mov x4, 27 
    bl drawRectangle
    mov x1, 565               
    mov x2, 276
    mov x3, 4                  
    mov x4, 27 
    bl drawRectangle
    mov x1, 575               
    mov x2, 276
    mov x3, 4                  
    mov x4, 27 
    bl drawRectangle
    mov x1, 585               
    mov x2, 276
    mov x3, 4                  
    mov x4, 27 
    bl drawRectangle
    mov x1, 595               
    mov x2, 276
    mov x3, 4                  
    mov x4, 27 
    bl drawRectangle
    mov x1, 605               
    mov x2, 276
    mov x3, 4                  
    mov x4, 27 
    bl drawRectangle
    mov x1, 615               
    mov x2, 276
    mov x3, 4                  
    mov x4, 27 
    bl drawRectangle
    mov x1, 627               
    mov x2, 276
    mov x3, 4                  
    mov x4, 27 
    bl drawRectangle
    /* [parte inferior] */
    // mueble
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 346               
    mov x2, 314
    mov x3, 294                 
    mov x4, 166 
    bl drawRectangle
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 349                
    mov x2, 317
    mov x3, 291                  
    mov x4, 163
    bl drawRectangle
	movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 354               
    mov x2, 324
    mov x3, 286                  
    mov x4, 156 
    bl drawRectangle
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 622               
    mov x2, 402
    mov x3, 30                 
    bl drawCircle
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 354                
    mov x2, 397
    mov x3, 286                 
    mov x4, 6
    bl drawRectangle
	movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 354               
    mov x2, 404
    mov x3, 286                  
    mov x4, 76 
    bl drawRectangle
    
    //libros arriba
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    //1
    mov x1, 368               
    mov x2, 356
    mov x3, 7                  
    mov x4, 39 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 368               
    mov x2, 359
    mov x3, 7                  
    mov x4, 3 
    bl drawRectangle
    movz x10, LIBRO1, lsl 16
    movk x10, LIBRO2, lsl 00
    mov x1, 368              
    mov x2, 362
    mov x3, 7                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 368              
    mov x2, 368
    mov x3, 4                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 368              
    mov x2, 374
    mov x3, 4                  
    mov x4, 3 
    bl drawRectangle
    //2
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 377               
    mov x2, 367
    mov x3, 5                  
    mov x4, 28 
    bl drawRectangle
    //3
    mov x1, 384               
    mov x2, 351
    mov x3, 12                  
    mov x4, 44 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 384               
    mov x2, 354
    mov x3, 12                  
    mov x4, 2 
    bl drawRectangle
    mov x1, 384               
    mov x2, 359
    mov x3, 12                  
    mov x4, 2 
    bl drawRectangle
    //4
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 398               
    mov x2, 356
    mov x3, 10                  
    mov x4, 39 
    bl drawRectangle
    //5
    mov x1, 410               
    mov x2, 348
    mov x3, 13                 
    mov x4, 47 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 410               
    mov x2, 392
    mov x3, 13                  
    mov x4, 2 
    bl drawRectangle
    mov x1, 410               
    mov x2, 387
    mov x3, 13                  
    mov x4, 2 
    bl drawRectangle
    movz x10, LIBRO1, lsl 16
    movk x10, LIBRO2, lsl 00
    mov x1, 410              
    mov x2, 352
    mov x3, 3                  
    bl drawCross
    mov x1, 412              
    mov x2, 365
    mov x3, 4                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 412              
    mov x2, 374
    mov x3, 8                  
    mov x4, 4 
    bl drawRectangle
    mov x1, 412              
    mov x2, 382
    mov x3, 8                  
    mov x4, 2 
    bl drawRectangle
    //6
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 425               
    mov x2, 353
    mov x3, 10                  
    mov x4, 42 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 425               
    mov x2, 389
    mov x3, 10                  
    mov x4, 2 
    bl drawRectangle
    movz x10, LIBRO1, lsl 16
    movk x10, LIBRO2, lsl 00
    mov x1, 425               
    mov x2, 358
    mov x3, 10                  
    mov x4, 2 
    bl drawRectangle
    mov x1, 425               
    mov x2, 364
    mov x3, 7                  
    mov x4, 2 
    bl drawRectangle
    mov x1, 425               
    mov x2, 372
    mov x3, 7                  
    mov x4, 2 
    bl drawRectangle
    //7
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 437               
    mov x2, 358
    mov x3, 12                  
    mov x4, 37 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 437               
    mov x2, 362
    mov x3, 12                  
    mov x4, 2 
    bl drawRectangle
    movz x10, LIBRO1, lsl 16
    movk x10, LIBRO2, lsl 00
    mov x1, 442               
    mov x2, 371
    mov x3, 4                  
    bl drawCircle
    mov x1, 438               
    mov x2, 381
    mov x3, 10                  
    mov x4, 2 
    bl drawRectangle
    //8
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 451               
    mov x2, 353
    mov x3, 10                  
    mov x4, 42 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 451               
    mov x2, 360
    mov x3, 10                  
    mov x4, 2 
    bl drawRectangle
    //libros abajo
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    //1
    mov x1, 417               
    mov x2, 411
    mov x3, 12                  
    mov x4, 44 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 417               
    mov x2, 415
    mov x3, 12                  
    mov x4, 2 
    bl drawRectangle
    mov x1, 417               
    mov x2, 420
    mov x3, 12                  
    mov x4, 2 
    bl drawRectangle
    movz x10, LIBRO1, lsl 16
    movk x10, LIBRO2, lsl 00
    mov x1, 417               
    mov x2, 417
    mov x3, 12                  
    mov x4, 3 
    bl drawRectangle
    //2
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 431               
    mov x2, 417
    mov x3, 10                  
    mov x4, 39 
    bl drawRectangle
    movz x10, LIBRO1, lsl 16
    movk x10, LIBRO2, lsl 00
    mov x1, 431               
    mov x2, 421
    mov x3, 10                  
    mov x4, 3 
    bl drawRectangle
    //3
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 443               
    mov x2, 415
    mov x3, 13                 
    mov x4, 47 
    bl drawRectangle
    movz x10, LIBRO1, lsl 16
    movk x10, LIBRO2, lsl 00
    mov x1, 443               
    mov x2, 418
    mov x3, 13                  
    mov x4, 2 
    bl drawRectangle
    mov x1, 443               
    mov x2, 422
    mov x3, 13                  
    mov x4, 2 
    bl drawRectangle
    //divisor
    movz x10, LIBRO1, lsl 16
    movk x10, LIBRO2, lsl 00
    mov x1, 475               
    mov x2, 328
    mov x3, 2                  
    mov x4, 68 
    bl drawRectangle
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 477               
    mov x2, 328
    mov x3, 3                  
    mov x4, 68 
    bl drawRectangle
    mov x1, 480               
    mov x2, 330
    mov x3, 3                  
    mov x4, 67 
    bl drawRectangle
    mov x1, 483               
    mov x2, 332
    mov x3, 3                  
    mov x4, 66 
    bl drawRectangle
    mov x1, 486               
    mov x2, 334
    mov x3, 3                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 486               
    mov x2, 340
    mov x3, 3                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 486               
    mov x2, 346
    mov x3, 3                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 486               
    mov x2, 352
    mov x3, 3                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 486               
    mov x2, 358
    mov x3, 3                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 486               
    mov x2, 364
    mov x3, 3                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 486               
    mov x2, 370
    mov x3, 3                  
    mov x4, 3 
    bl drawRectangle
    //gato
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 481               
    mov x2, 381
    mov x3, 38                  
    mov x4, 10 
    bl drawRectangle
    mov x1, 484               
    mov x2, 390
    mov x3, 38                  
    mov x4, 6 
    bl drawRectangle
    mov x1, 483               
    mov x2, 376
    mov x3, 38                  
    mov x4, 7 
    bl drawRectangle
    mov x1, 485               
    mov x2, 374
    mov x3, 36                  
    mov x4, 7 
    bl drawRectangle
    //oreja1
    mov x1, 487               
    mov x2, 372
    mov x3, 13                  
    mov x4, 7 
    bl drawRectangle
    mov x1, 489               
    mov x2, 370
    mov x3, 11                  
    mov x4, 7 
    bl drawRectangle
    mov x1, 491               
    mov x2, 368
    mov x3, 9                  
    mov x4, 7 
    bl drawRectangle
    mov x1, 493               
    mov x2, 366
    mov x3, 7                  
    mov x4, 7 
    bl drawRectangle
    //oreja2
    mov x1, 502               
    mov x2, 372
    mov x3, 13                  
    mov x4, 7 
    bl drawRectangle
    mov x1, 504               
    mov x2, 370
    mov x3, 11                  
    mov x4, 7 
    bl drawRectangle
    mov x1, 506               
    mov x2, 368
    mov x3, 9                  
    mov x4, 7 
    bl drawRectangle
    mov x1, 508               
    mov x2, 366
    mov x3, 7                  
    mov x4, 7 
    bl drawRectangle
    //ojos

    bl drawOjosGatito

    //boca
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 493               
    mov x2, 386
    mov x3, 2                  
    mov x4, 2 
    bl drawRectangle
    mov x1, 491               
    mov x2, 388
    mov x3, 2                  
    mov x4, 2 
    bl drawRectangle
    mov x1, 495               
    mov x2, 388
    mov x3, 2                  
    mov x4, 2 
    bl drawRectangle
    //pata 1
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 478               
    mov x2, 392
    mov x3, 9                  
    mov x4, 13 
    bl drawRectangle
    mov x1, 487               
    mov x2, 392
    mov x3, 3                  
    mov x4, 9 
    bl drawRectangle
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 480               
    mov x2, 394
    mov x3, 5                  
    mov x4, 9 
    bl drawRectangle
    mov x1, 485               
    mov x2, 394
    mov x3, 3                  
    mov x4, 5 
    bl drawRectangle
    //pata 2
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 498               
    mov x2, 392
    mov x3, 9                  
    mov x4, 13 
    bl drawRectangle
    mov x1, 507               
    mov x2, 392
    mov x3, 3                  
    mov x4, 9 
    bl drawRectangle
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 500               
    mov x2, 394
    mov x3, 5                  
    mov x4, 9 
    bl drawRectangle
    mov x1, 505               
    mov x2, 394
    mov x3, 3                  
    mov x4, 5 
    bl drawRectangle
    /* [mueble largo] */
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 464               
    mov x2, 207
    mov x3, 176                  
    mov x4, 20 
    bl drawRectangle
    mov x1, 444               
    mov x2, 218
    mov x3, 176                  
    mov x4, 20 
    bl drawRectangle
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 448               
    mov x2, 222
    mov x3, 168                  
    mov x4, 12 
    bl drawRectangle
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 448               
    mov x2, 222
    mov x3, 158                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 448               
    mov x2, 222
    mov x3, 3                  
    mov x4, 12 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 456               
    mov x2, 238
    mov x3, 16                  
    mov x4, 242 
    bl drawRectangle
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 459               
    mov x2, 241
    mov x3, 10                  
    mov x4, 239 
    bl drawRectangle
    //segunda pata
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 587               
    mov x2, 238
    mov x3, 16                  
    mov x4, 46 
    bl drawRectangle
    mov x1, 584               
    mov x2, 284
    mov x3, 16                  
    mov x4, 14 
    bl drawRectangle
    mov x1, 581               
    mov x2, 298
    mov x3, 16                  
    mov x4, 12 
    bl drawRectangle
    mov x1, 585               
    mov x2, 310
    mov x3, 16                  
    mov x4, 4 
    bl drawRectangle
    mov x1, 590               
    mov x2, 314
    mov x3, 16                  
    mov x4, 4 
    bl drawRectangle
    mov x1, 594               
    mov x2, 318
    mov x3, 16                  
    mov x4, 15 
    bl drawRectangle
    //a partir del agua
    mov x1, 555               
    mov x2, 333
    mov x3, 16                  
    mov x4, 20 
    bl drawRectangle
    mov x1, 559               
    mov x2, 353
    mov x3, 16                  
    mov x4, 20 
    bl drawRectangle
    mov x1, 555               
    mov x2, 373
    mov x3, 16                  
    mov x4, 20 
    bl drawRectangle
    mov x1, 551              
    mov x2, 393
    mov x3, 16                  
    mov x4, 20 
    bl drawRectangle
    mov x1, 555               
    mov x2, 413
    mov x3, 16                  
    mov x4, 14 
    bl drawRectangle
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 590               
    mov x2, 241
    mov x3, 10                  
    mov x4, 43 
    bl drawRectangle
    mov x1, 587               
    mov x2, 284
    mov x3, 10                  
    mov x4, 14 
    bl drawRectangle
    mov x1, 584               
    mov x2, 298
    mov x3, 10                  
    mov x4, 12 
    bl drawRectangle
    mov x1, 588               
    mov x2, 310
    mov x3, 10                  
    mov x4, 4 
    bl drawRectangle
    mov x1, 593               
    mov x2, 314
    mov x3, 10                  
    mov x4, 4 
    bl drawRectangle
    mov x1, 597               
    mov x2, 318
    mov x3, 10                  
    mov x4, 15 
    bl drawRectangle
    // a partir del agua
    mov x1, 558               
    mov x2, 333
    mov x3, 10                  
    mov x4, 20 
    bl drawRectangle
    mov x1, 562               
    mov x2, 353
    mov x3, 10                  
    mov x4, 20 
    bl drawRectangle
    mov x1, 558               
    mov x2, 373
    mov x3, 10                  
    mov x4, 20 
    bl drawRectangle
    mov x1, 554               
    mov x2, 393
    mov x3, 10                  
    mov x4, 20 
    bl drawRectangle
    mov x1, 558               
    mov x2, 413
    mov x3, 10                  
    mov x4, 14 
    bl drawRectangle
    //extras
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 620                
    mov x2, 120
    mov x3, 3                
    mov x4, 18 
    bl drawRectangle
    mov x1, 625                
    mov x2, 120
    mov x3, 3                
    mov x4, 18 
    bl drawRectangle
    mov x1, 630                
    mov x2, 120
    mov x3, 3                
    mov x4, 18 
    bl drawRectangle
    mov x1, 635                
    mov x2, 120
    mov x3, 3                
    mov x4, 18 
    bl drawRectangle
    mov x1, 620                
    mov x2, 195
    mov x3, 3                
    mov x4, 18 
    bl drawRectangle
    mov x1, 625                
    mov x2, 195
    mov x3, 3                
    mov x4, 18 
    bl drawRectangle
    mov x1, 630                
    mov x2, 195
    mov x3, 3                
    mov x4, 18 
    bl drawRectangle
    mov x1, 635                
    mov x2, 195
    mov x3, 3                
    mov x4, 18 
    bl drawRectangle

    ldr x30, [sp]   
    add sp, sp, 8   
br x30

.global normalAgua
normalAgua:
    sub sp, sp, 8   
    str x30, [sp]

    sub sp, sp, 8   
    str x30, [sp]
    mov x1, 558               
    mov x2, 333
    mov x3, 10                  
    mov x4, 20 
    bl drawRectangle
    mov x1, 562               
    mov x2, 353
    mov x3, 10                  
    mov x4, 20 
    bl drawRectangle
    mov x1, 558               
    mov x2, 373
    mov x3, 10                  
    mov x4, 20 
    bl drawRectangle
    mov x1, 554               
    mov x2, 393
    mov x3, 10                  
    mov x4, 20 
    bl drawRectangle
    mov x1, 558               
    mov x2, 413
    mov x3, 10                  
    mov x4, 14 
    bl drawRectangle

    ldr x30, [sp]   
    add sp, sp, 8   
br x30

.global efectoAgua
efectoAgua:
    sub sp, sp, 8   
    str x30, [sp]

    sub sp, sp, 8   
    str x30, [sp]
    mov x1, 558               
    mov x2, 333
    mov x3, 10                  
    mov x4, 20 
    bl drawRectangle
    mov x1, 562               
    mov x2, 353
    mov x3, 10                  
    mov x4, 20 
    bl drawRectangle
    mov x1, 558               
    mov x2, 373
    mov x3, 10                  
    mov x4, 20 
    bl drawRectangle
    mov x1, 554               
    mov x2, 393
    mov x3, 10                  
    mov x4, 20 
    bl drawRectangle
    mov x1, 558               
    mov x2, 413
    mov x3, 10                  
    mov x4, 14 
    bl drawRectangle

    ldr x30, [sp]   
    add sp, sp, 8   
br x30

.global drawOjosGatito
drawOjosGatito:
    sub sp, sp, 8   
    str x30, [sp]

    movz x10, VERDE_FUERTE1, lsl 16
    movk x10, VERDE_FUERTE2, lsl 00
    mov x1, 488               
    mov x2, 379
    mov x3, 2                  
    mov x4, 7 
    bl drawRectangle
    mov x1, 500               
    mov x2, 379
    mov x3, 2                  
    mov x4, 7 
    bl drawRectangle

    ldr x30, [sp]   
    add sp, sp, 8   
br x30

.global drawParpadeoGatito
drawParpadeoGatito:
    sub sp, sp, 8   
    str x30, [sp]

    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 488               
    mov x2, 379
    mov x3, 2                  
    mov x4, 5 
    bl drawRectangle
    mov x1, 500               
    mov x2, 379
    mov x3, 2                  
    mov x4, 5 
    bl drawRectangle

    ldr x30, [sp]   
    add sp, sp, 8   
br x30

.global drawFondoFrasco
drawFondoFrasco:
	sub sp, sp, 8   
	str x30, [sp] 

    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 346               
    mov x2, 314
    mov x3, 45                 
    mov x4, 110 
    bl drawRectangle
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 349                
    mov x2, 317
    mov x3, 42                  
    mov x4, 107
    bl drawRectangle
	movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 354               
    mov x2, 324
    mov x3, 37                  
    mov x4, 100 
    bl drawRectangle

    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 354                
    mov x2, 397
    mov x3, 45                 
    mov x4, 6
    bl drawRectangle
	movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 354               
    mov x2, 404
    mov x3, 45                  
    mov x4, 6 
    bl drawRectangle

    //libros arriba
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    //1
    mov x1, 368               
    mov x2, 356
    mov x3, 7                  
    mov x4, 39 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 368               
    mov x2, 359
    mov x3, 7                  
    mov x4, 3 
    bl drawRectangle
    movz x10, LIBRO1, lsl 16
    movk x10, LIBRO2, lsl 00
    mov x1, 368              
    mov x2, 362
    mov x3, 7                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 368              
    mov x2, 368
    mov x3, 4                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 368              
    mov x2, 374
    mov x3, 4                  
    mov x4, 3 
    bl drawRectangle
    //2
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 377               
    mov x2, 367
    mov x3, 5                  
    mov x4, 28 
    bl drawRectangle
    //3
    mov x1, 384               
    mov x2, 351
    mov x3, 12                  
    mov x4, 44 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 384               
    mov x2, 354
    mov x3, 12                  
    mov x4, 2 
    bl drawRectangle
    mov x1, 384               
    mov x2, 359
    mov x3, 12                  
    mov x4, 2 
    bl drawRectangle

    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 328
    mov x2, 342
    mov x3, 18
    mov x4, 43
    bl drawRectangle

	ldr x30, [sp]   
   	add sp, sp, 8   
br x30
