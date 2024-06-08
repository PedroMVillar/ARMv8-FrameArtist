.include "data.s"

/*----------------------------ARCHIVO FRENTE.S--------------------------------*/
	/* Dibuja ambos frascos y el bichito de luz dentro de uno de ellos.
    Se separo el código que dibuja el bichito de luz, el cual se mueve gracias
    al codigo de dynamic.s
    Tambien se separaron partes del codigo para dibujar un destello en el otro
    frasco y aquel que modifica el circulo externo del bichito de luz.
    */

.globl makeFrascos
makeFrascos:
	sub sp, sp, 8   
	str x30, [sp] 
	//bichito de luz
    mov x1, 384               
    mov x2, 363
    bl drawBichito

    //frasco 1
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    //tapa
    mov x1, 344               
    mov x2, 272
    mov x3, 38                  
    mov x4, 17 
    bl drawRectangle
    //cuello
    mov x1, 385               
    mov x2, 282
    mov x3, 4                  
    mov x4, 12 
    bl drawRectangle
    //lado izq
    movz x10, BORDE_FRASCO11, lsl 16
    movk x10, BORDE_FRASCO12, lsl 00
    mov x1, 316               
    mov x2, 312
    mov x3, 4                  
    mov x4, 110 
    bl drawRectangle
    movz x10, AZUL_GORRO21, lsl 16
    movk x10, AZUL_GORRO22, lsl 00
    mov x1, 316               
    mov x2, 416
    mov x3, 4                  
    mov x4, 6 
    bl drawRectangle
    mov x1, 317               
    mov x2, 420
    mov x3, 8                  
    mov x4, 10 
    bl drawRectangle
    //lado der
    movz x10, BORDE_FRASCO11, lsl 16
    movk x10, BORDE_FRASCO12, lsl 00
    mov x1, 404               
    mov x2, 312
    mov x3, 4                  
    mov x4, 110 
    bl drawRectangle
    movz x10, AZUL_GORRO21, lsl 16
    movk x10, AZUL_GORRO22, lsl 00
    mov x1, 404               
    mov x2, 408
    mov x3, 4                  
    mov x4, 15 
    bl drawRectangle
    mov x1, 401               
    mov x2, 420
    mov x3, 4                  
    mov x4, 10 
    bl drawRectangle
    //brillos por parte
    //cuello
    movz x10, AZUL_GORRO21, lsl 16
    movk x10, AZUL_GORRO22, lsl 00
    mov x1, 336               
    mov x2, 280
    mov x3, 48                  
    mov x4, 3 
    bl drawRectangle
    movz x10, CELESTE_NEON1, lsl 16
    movk x10, CELESTE_NEON2, lsl 00
    mov x1, 336               
    mov x2, 280
    mov x3, 17                  
    mov x4, 3 
    bl drawRectangle
    movz x10, BRILLO_HOJA1, lsl 16
    movk x10, BRILLO_HOJA2, lsl 00
    mov x1, 336               
    mov x2, 280
    mov x3, 12                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 336               
    mov x2, 280
    mov x3, 3                  
    mov x4, 14 
    bl drawRectangle
    mov x1, 372               
    mov x2, 280
    mov x3, 7                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 382               
    mov x2, 280
    mov x3, 4                  
    mov x4, 3 
    bl drawRectangle
    movz x10, CELESTE_NEON1, lsl 16
    movk x10, CELESTE_NEON2, lsl 00
    mov x1, 339               
    mov x2, 295
    mov x3, 5                  
    mov x4, 11 
    bl drawRectangle
    //fin cuello
    movz x10, BORDE_FRASCO21, lsl 16
    movk x10, BORDE_FRASCO22, lsl 00
    mov x1, 379               
    mov x2, 295
    mov x3, 5                  
    mov x4, 11 
    bl drawRectangle
    mov x1, 328               
    mov x2, 302
    mov x3, 31                  
    mov x4, 4 
    bl drawRectangle
    mov x1, 364               
    mov x2, 302
    mov x3, 5                  
    mov x4, 4 
    bl drawRectangle
    mov x1, 375               
    mov x2, 302
    mov x3, 20                  
    mov x4, 4 
    bl drawRectangle
    movz x10, CELESTE_NEON1, lsl 16
    movk x10, CELESTE_NEON2, lsl 00
    mov x1, 395               
    mov x2, 304
    mov x3, 6                  
    mov x4, 4 
    bl drawRectangle
    movz x10, BRILLO_HOJA1, lsl 16
    movk x10, BRILLO_HOJA2, lsl 00
    mov x1, 328               
    mov x2, 302
    mov x3, 13                  
    mov x4, 4 
    bl drawRectangle
    mov x1, 316               
    mov x2, 312
    mov x3, 4                  
    mov x4, 4 
    bl drawRectangle
    mov x1, 318               
    mov x2, 308
    mov x3, 5                  
    mov x4, 4 
    bl drawRectangle
    mov x1, 322               
    mov x2, 304
    mov x3, 6                  
    mov x4, 4 
    bl drawRectangle
    mov x1, 393               
    mov x2, 302
    mov x3, 5                  
    mov x4, 4 
    bl drawRectangle
    movz x10, BORDE_FRASCO11, lsl 16
    movk x10, BORDE_FRASCO12, lsl 00
    mov x1, 399               
    mov x2, 308
    mov x3, 7                  
    mov x4, 5 
    bl drawRectangle
    //der
    movz x10, CELESTE_NEON1, lsl 16
    movk x10, CELESTE_NEON2, lsl 00
    mov x1, 404               
    mov x2, 373
    mov x3, 4                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 404               
    mov x2, 378
    mov x3, 4                  
    mov x4, 20 
    bl drawRectangle
    movz x10, BRILLO_HOJA1, lsl 16
    movk x10, BRILLO_HOJA2, lsl 00
    mov x1, 404               
    mov x2, 386
    mov x3, 4                  
    mov x4, 10 
    bl drawRectangle
    mov x1, 404               
    mov x2, 399
    mov x3, 4                  
    mov x4, 4 
    bl drawRectangle
    //frasco 2
    //cuello
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 539               
    mov x2, 270
    mov x3, 78                 
    mov x4, 5 
    bl drawRectangle
    //lado izq
    mov x1, 517               
    mov x2, 320
    mov x3, 5                  
    mov x4, 102 
    bl drawRectangle
    //lado der
    mov x1, 632               
    mov x2, 320
    mov x3, 5                  
    mov x4, 102 
    bl drawRectangle
    //cuello
    movz x10, BORDE_FRASCO21, lsl 16
    movk x10, BORDE_FRASCO22, lsl 00
    mov x1, 539               
    mov x2, 271
    mov x3, 78                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 545               
    mov x2, 289
    mov x3, 3                 
    mov x4, 15 
    bl drawRectangle
    mov x1, 609               
    mov x2, 289
    mov x3, 3                 
    mov x4, 15 
    bl drawRectangle
    mov x1, 612               
    mov x2, 286
    mov x3, 3                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 615               
    mov x2, 283
    mov x3, 3                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 618               
    mov x2, 279
    mov x3, 3                 
    mov x4, 5 
    bl drawRectangle
    //fin cuello
    mov x1, 532               
    mov x2, 302
    mov x3, 26                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 565               
    mov x2, 302
    mov x3, 8                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 582               
    mov x2, 302
    mov x3, 40                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 624               
    mov x2, 305
    mov x3, 4                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 628               
    mov x2, 308
    mov x3, 3                 
    mov x4, 6 
    bl drawRectangle
    mov x1, 631               
    mov x2, 314
    mov x3, 3                 
    mov x4, 6 
    bl drawRectangle
    //lado izq
    mov x1, 518               
    mov x2, 320
    mov x3, 4                  
    mov x4, 102 
    bl drawRectangle
    //lado der
    mov x1, 632               
    mov x2, 320
    mov x3, 4                  
    mov x4, 102 
    bl drawRectangle
    //base
    mov x1, 518               
    mov x2, 419
    mov x3, 8                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 524              
    mov x2, 421
    mov x3, 34                  
    mov x4, 4 
    bl drawRectangle
    mov x1, 629               
    mov x2, 419
    mov x3, 5                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 602              
    mov x2, 421
    mov x3, 28                  
    mov x4, 4 
    bl drawRectangle
    movz x10, AZUL_GORRO21, lsl 16
    movk x10, AZUL_GORRO22, lsl 00
    mov x1, 533              
    mov x2, 421
    mov x3, 2                  
    mov x4, 4 
    bl drawRectangle
    mov x1, 538              
    mov x2, 421
    mov x3, 3                  
    mov x4, 4 
    bl drawRectangle
    mov x1, 544              
    mov x2, 421
    mov x3, 14                  
    mov x4, 4 
    bl drawRectangle
    mov x1, 602              
    mov x2, 421
    mov x3, 14                  
    mov x4, 4 
    bl drawRectangle
    mov x1, 620              
    mov x2, 421
    mov x3, 3                  
    mov x4, 4 
    bl drawRectangle
    //brillos por parte
    movz x10, CLARO_FRASCO21, lsl 16
    movk x10, CLARO_FRASCO22, lsl 00
    //lado izq
    mov x1, 518               
    mov x2, 327
    mov x3, 4                  
    mov x4, 80 
    bl drawRectangle
    //lado der
    mov x1, 632               
    mov x2, 363
    mov x3, 4                  
    mov x4, 53 
    bl drawRectangle
    movz x10, CELESTE_NEON1, lsl 16
    movk x10, CELESTE_NEON2, lsl 00
    //lado izq
    mov x1, 518               
    mov x2, 357
    mov x3, 4                  
    mov x4, 47
    bl drawRectangle
    //lado der
    mov x1, 632               
    mov x2, 375
    mov x3, 4                  
    mov x4, 29 
    bl drawRectangle
    movz x10, BRILLO_HOJA1, lsl 16
    movk x10, BRILLO_HOJA2, lsl 00
     //lado izq
    mov x1, 518               
    mov x2, 364
    mov x3, 4                  
    mov x4, 28 
    bl drawRectangle
    mov x1, 518               
    mov x2, 398
    mov x3, 4                  
    mov x4, 5 
    bl drawRectangle
    //lado der
    mov x1, 632               
    mov x2, 380
    mov x3, 4                  
    mov x4, 18 
    bl drawRectangle
    //cuello
    mov x1, 536               
    mov x2, 274
    mov x3, 3                 
    mov x4, 8 
    bl drawRectangle
    mov x1, 539               
    mov x2, 282
    mov x3, 3                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 542               
    mov x2, 285
    mov x3, 3                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 614               
    mov x2, 271
    mov x3, 4                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 618               
    mov x2, 273
    mov x3, 3                 
    mov x4, 6 
    bl drawRectangle
    //fin cuello 
    mov x1, 532               
    mov x2, 302
    mov x3, 7                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 528               
    mov x2, 305
    mov x3, 4                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 525               
    mov x2, 308
    mov x3, 3                 
    mov x4, 6 
    bl drawRectangle
    mov x1, 522               
    mov x2, 314
    mov x3, 3                 
    mov x4, 6 
    bl drawRectangle

    //agua frasco 2
    movz x10, BORDE_FRASCO21, lsl 16
    movk x10, BORDE_FRASCO22, lsl 00
    mov x1, 522               
    mov x2, 330
    mov x3, 110                 
    mov x4, 3 
    bl drawRectangle
    movz x10, CLARO_FRASCO21, lsl 16
    movk x10, CLARO_FRASCO22, lsl 00
    mov x1, 527               
    mov x2, 330
    mov x3, 5                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 536               
    mov x2, 330
    mov x3, 37                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 599               
    mov x2, 330
    mov x3, 7                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 609               
    mov x2, 330
    mov x3, 12                 
    mov x4, 3 
    bl drawRectangle
    movz x10, BRILLO_HOJA1, lsl 16
    movk x10, BRILLO_HOJA2, lsl 00
    mov x1, 546               
    mov x2, 330
    mov x3, 7                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 556               
    mov x2, 330
    mov x3, 12                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 614               
    mov x2, 330
    mov x3, 3                 
    mov x4, 3 
    bl drawRectangle

    //mesa al frente de todo
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 0               
    mov x2, 425
    mov x3, 640                  
    mov x4, 55 
    bl drawRectangle
    //luz - luz planta <- a mesa
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 0               
    mov x2, 427
    mov x3, 640                  
    mov x4, 3 
    bl drawRectangle
    movz x10, VERDE_OSCURO1, lsl 16
    movk x10, VERDE_OSCURO2, lsl 00
    mov x1, 17               
    mov x2, 427
    mov x3, 10                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 29               
    mov x2, 427
    mov x3, 2                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 54               
    mov x2, 427
    mov x3, 10                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 68               
    mov x2, 427
    mov x3, 2                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 73               
    mov x2, 427
    mov x3, 10                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 85               
    mov x2, 427
    mov x3, 2                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 103               
    mov x2, 427
    mov x3, 30                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 135               
    mov x2, 427
    mov x3, 10                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 147               
    mov x2, 427
    mov x3, 2                  
    mov x4, 3 
    bl drawRectangle
    //luz frasco 1
    movz x10, AZUL_GORRO21, lsl 16
    movk x10, AZUL_GORRO22, lsl 00
    mov x1, 292               
    mov x2, 427
    mov x3, 139                  
    mov x4, 3 
    bl drawRectangle
    movz x10, BORDE_FRASCO11, lsl 16
    movk x10, BORDE_FRASCO12, lsl 00
    mov x1, 298               
    mov x2, 427
    mov x3, 2                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 303               
    mov x2, 427
    mov x3, 3                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 310               
    mov x2, 427
    mov x3, 106                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 423               
    mov x2, 427
    mov x3, 3                  
    mov x4, 3 
    bl drawRectangle
    movz x10, CELESTE_NEON1, lsl 16
    movk x10, CELESTE_NEON2, lsl 00
    mov x1, 376               
    mov x2, 427
    mov x3, 2                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 380               
    mov x2, 427
    mov x3, 20                  
    mov x4, 3 
    bl drawRectangle
    mov x1, 402               
    mov x2, 427
    mov x3, 2                  
    mov x4, 3 
    bl drawRectangle
    movz x10, BRILLO_HOJA1, lsl 16
    movk x10, BRILLO_HOJA2, lsl 00
    mov x1, 388               
    mov x2, 427
    mov x3, 4                  
    mov x4, 3 
    bl drawRectangle

    movz x10, AZUL_GORRO21, lsl 16
    movk x10, AZUL_GORRO22, lsl 00
    mov x1, 312               
    mov x2, 430
    mov x3, 3                   
    bl drawCincoPuntos
    mov x1, 321               
    mov x2, 430
    mov x3, 9                  
    mov x4, 9 
    bl drawRectangle
    mov x1, 330               
    mov x2, 430
    mov x3, 3                   
    bl drawCincoPuntos
    mov x1, 339               
    mov x2, 430
    mov x3, 68                  
    mov x4, 9 
    bl drawRectangle
    mov x1, 407               
    mov x2, 430
    mov x3, 3                   
    bl drawCincoPuntos
    mov x1, 321               
    mov x2, 439
    mov x3, 3                  
    bl drawCincoPuntos
    mov x1, 339               
    mov x2, 439
    mov x3, 3                  
    bl drawCincoPuntos
    mov x1, 375               
    mov x2, 439
    mov x3, 3                  
    bl drawCincoPuntos
    mov x1, 384               
    mov x2, 439
    mov x3, 3                  
    bl drawCincoPuntos
    mov x1, 348               
    mov x2, 448
    mov x3, 3                  
    bl drawCincoPuntos
    //luz frasco 2
    movz x10, AZUL_GORRO21, lsl 16
    movk x10, AZUL_GORRO22, lsl 00
    mov x1, 502               
    mov x2, 427
    mov x3, 3                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 507               
    mov x2, 427
    mov x3, 133                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 524               
    mov x2, 430
    mov x3, 103                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 537               
    mov x2, 433
    mov x3, 72                
    mov x4, 3 
    bl drawRectangle
    movz x10, BORDE_FRASCO21, lsl 16
    movk x10, BORDE_FRASCO22, lsl 00
    mov x1, 529               
    mov x2, 427
    mov x3, 5                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 537               
    mov x2, 427
    mov x3, 85                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 624               
    mov x2, 427
    mov x3, 4                 
    mov x4, 3 
    bl drawRectangle
    movz x10, AZUL_CLARO1, lsl 16
    movk x10, AZUL_CLARO2, lsl 00
    mov x1, 560               
    mov x2, 427
    mov x3, 40                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 604               
    mov x2, 427
    mov x3, 7                 
    mov x4, 3 
    bl drawRectangle
    movz x10, CELESTE_NEON1, lsl 16
    movk x10, CELESTE_NEON2, lsl 00
    mov x1, 582               
    mov x2, 427
    mov x3, 6                 
    mov x4, 3 
    bl drawRectangle
    movz x10, BRILLO_HOJA1, lsl 16
    movk x10, BRILLO_HOJA2, lsl 00
    mov x1, 566               
    mov x2, 427
    mov x3, 13                 
    mov x4, 3 
    bl drawRectangle
    mov x1, 581               
    mov x2, 427
    mov x3, 3                 
    mov x4, 3 
    bl drawRectangle

    movz x10, VERDE_OSCURO2, lsl 00
    mov x1, 0               
    mov x2, 379
    mov x3, 14
    mov x4, 46
    bl drawRectangle

	ldr x30, [sp]   
   	add sp, sp, 8   
br x30

.global drawDestelloON1
drawDestelloON1:
	sub sp, sp, 8   
	str x30, [sp] 

    mov x1, 601
    mov x2, 345
    mov x3, 2
    bl drawCincoPuntos
    mov x1, 605
    mov x2, 349
    mov x3, 2
    bl drawCincoPuntos

	ldr x30, [sp]   
   	add sp, sp, 8   

br x30

.global drawDestelloON2
drawDestelloON2:
	sub sp, sp, 8   
	str x30, [sp] 

    mov x1, 534
    mov x2, 386
    mov x3, 2
    bl drawCincoPuntos
    mov x1, 538
    mov x2, 390
    mov x3, 2
    bl drawCincoPuntos

	ldr x30, [sp]   
   	add sp, sp, 8   
br x30

.global drawBichito
drawBichito:
	sub sp, sp, 8   
	str x30, [sp] 

    movz x10, BRILLO_HOJA1, lsl 16
    movk x10, BRILLO_HOJA2, lsl 00
    mov x3, 10
    bl drawCircle
    movz x10, CELESTE_NEON1, lsl 16
    movk x10, CELESTE_NEON2, lsl 00
    mov x3, 6
    bl drawCircle
    movz x10, AZUL_CLARO1, lsl 16
    movk x10, AZUL_CLARO2, lsl 00
    mov x3, 4
    bl drawCircle

	ldr x30, [sp]   
   	add sp, sp, 8   
br x30

.global drawBichitoDinamico
drawBichitoDinamico:
	sub sp, sp, 8   
	str x30, [sp] 

    mov x1, x21
    mov x2, x22

    movz x10, BRILLO_HOJA1, lsl 16
    movk x10, BRILLO_HOJA2, lsl 00
    mov x3, x28
    bl drawCircle
    movz x10, CELESTE_NEON1, lsl 16
    movk x10, CELESTE_NEON2, lsl 00
    mov x3, 6
    bl drawCircle
    movz x10, AZUL_CLARO1, lsl 16
    movk x10, AZUL_CLARO2, lsl 00
    mov x3, 4
    bl drawCircle

    add x28, x28, x29
    sub x27, x28, 11
    cbz x27, reducir

    sub x27, x28, 7
    cbz x27, aumentar

	ldr x30, [sp]   
   	add sp, sp, 8   
br x30

reducir:
	sub sp, sp, 8   
	str x30, [sp]     

    mov x29, -1

	ldr x30, [sp]   
   	add sp, sp, 8   
br x30

aumentar:
	sub sp, sp, 8   
	str x30, [sp]     

    mov x29, 1

	ldr x30, [sp]   
   	add sp, sp, 8   
br x30
