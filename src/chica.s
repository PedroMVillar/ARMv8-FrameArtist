    .include "data.s"

/*----------------------------ARCHIVO CHICA.S--------------------------------*/
	/* Dibuja la chica, fue separado en partes para que cada integrante
    fuese trabajando de forma paralela
    Incluye una subrutina para dibujar el cuerpo, una para la cara, otra para
    la lupa con el ojo izquierdo, y una para cada mano.
    Se separo la parte del codigo que dibuja los ojos para poder crear el
    movimiento de las pupilas y el pestañeo en dynamic.s
    */

.globl makeCuerpo
makeCuerpo:
    sub sp, sp, 8   
    str x30, [sp] 
    movz x10, AZUL_MEDIO1, lsl 16
    movk x10, AZUL_MEDIO2, lsl 00
    mov x1, 126
    mov x2, 297
    mov x3, 7
    mov x4, 3
    bl drawRectangle
    mov x1, 120
    mov x2, 300
    mov x3, 21
    mov x4, 3
    bl drawRectangle
    mov x1, 117
    mov x2, 303
    mov x3, 21
    mov x4, 3
    bl drawRectangle
    mov x1, 114
    mov x2, 306
    mov x3, 14
    mov x4, 6
    bl drawRectangle
    mov x1, 114
    mov x2, 312
    mov x3, 11
    mov x4, 6
    bl drawRectangle
    mov x1, 108
    mov x2, 318
    mov x3, 11
    mov x4, 6
    bl drawRectangle
    mov x1, 105
    mov x2, 324
    mov x3, 14
    mov x4, 6
    bl drawRectangle
    movz x10, AZUL_ILUMINADO1, lsl 16
    movk x10, AZUL_ILUMINADO2, lsl 00
    mov x1, 134
    mov x2, 306
    mov x3, 15
    mov x4, 3
    bl drawRectangle
    mov x1, 128
    mov x2, 309
    mov x3, 21
    mov x4, 3
    bl drawRectangle
    mov x1, 125
    mov x2, 312
    mov x3, 24
    mov x4, 6
    bl drawRectangle
    mov x1, 122
    mov x2, 318
    mov x3, 27
    mov x4, 6
    bl drawRectangle
    mov x1, 119
    mov x2, 324
    mov x3, 30
    mov x4, 3
    bl drawRectangle
    mov x1, 119
    mov x2, 327
    mov x3, 27
    mov x4, 3
    bl drawRectangle
    mov x1, 117
    mov x2, 330
    mov x3, 29
    mov x4, 23
    bl drawRectangle
    mov x1, 117
    mov x2, 353
    mov x3, 26
    mov x4, 18
    bl drawRectangle
    mov x1, 114
    mov x2, 371
    mov x3, 26
    mov x4, 23
    bl drawRectangle
    movz x10, PIEL1, lsl 16
    movk x10, PIEL2, lsl 00
    mov x1, 149
    mov x2, 320
    mov x3, 56
    mov x4, 15
    bl drawRectangle
    mov x1, 149
    mov x2, 335
    mov x3, 50
    mov x4, 3
    bl drawRectangle
    mov x1, 152
    mov x2, 338
    mov x3, 50
    mov x4, 3
    bl drawRectangle
    mov x1, 155
    mov x2, 341
    mov x3, 38
    mov x4, 3
    bl drawRectangle

    movz x10, SOMBRA_CUELLO1, lsl 16
    movk x10, SOMBRA_CUELLO2, lsl 00
    mov x1, 152
    mov x2, 306
    mov x3, 9
    mov x4, 3
    bl drawRectangle
    mov x1, 152 
    mov x2, 309
    mov x3, 12
    mov x4, 3
    bl drawRectangle
    mov x1, 152 
    mov x2, 312
    mov x3, 15
    mov x4, 3
    bl drawRectangle
    mov x1, 152 
    mov x2, 315
    mov x3, 18
    mov x4, 3
    bl drawRectangle
    mov x1, 152 
    mov x2, 318
    mov x3, 21
    mov x4, 3
    bl drawRectangle
    mov x1, 152
    mov x2, 306
    mov x3, 3
    mov x4, 24
    bl drawRectangle
    mov x1, 149
    mov x2, 327
    mov x3, 3
    mov x4, 6
    bl drawRectangle
    movz x10, SOMBRA_CUELLO11, lsl 16
    movk x10, SOMBRA_CUELLO12, lsl 00
    mov x1, 158
    mov x2, 306
    mov x3, 36
    mov x4, 3
    bl drawRectangle
    mov x1, 176
    mov x2, 303
    mov x3, 36
    mov x4, 3
    bl drawRectangle

    mov x1, 161
    mov x2, 309
    mov x3, 33
    mov x4, 3
    bl drawRectangle
    mov x1, 164
    mov x2, 312
    mov x3, 30
    mov x4, 3
    bl drawRectangle
    mov x1, 167
    mov x2, 315
    mov x3, 27
    mov x4, 3
    bl drawRectangle
    mov x1, 170
    mov x2, 318
    mov x3, 21
    mov x4, 3
    bl drawRectangle
    mov x1, 155
    mov x2, 321
    mov x3, 36
    mov x4, 3
    bl drawRectangle
    mov x1, 155
    mov x2, 324
    mov x3, 9
    mov x4, 3
    bl drawRectangle
    mov x1, 185
    mov x2, 324
    mov x3, 6
    mov x4, 3
    bl drawRectangle


    movz x10, AZUL_CLARO1, lsl 16
    movk x10, AZUL_CLARO2, lsl 00
    mov x1, 122
    mov x2, 390
    mov x3, 18
    mov x4, 9
    bl drawRectangle
    mov x1, 125
    mov x2, 399
    mov x3, 15
    mov x4, 9
    bl drawRectangle
    mov x1, 128
    mov x2, 408
    mov x3, 12
    mov x4, 9
    bl drawRectangle
    mov x1, 131
    mov x2, 417
    mov x3, 9
    mov x4, 9
    bl drawRectangle
    mov x1, 122
    mov x2, 387
    mov x3, 6
    mov x4, 3
    bl drawRectangle

    movz x10, AZUL_BORDES1, lsl 16
    movk x10, AZUL_BORDES2, lsl 00
    mov x1, 122
    mov x2, 347
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 128
    mov x2, 350
    mov x3, 3
    mov x4, 3
    bl drawRectangle
    mov x1, 131
    mov x2, 353
    mov x3, 3
    mov x4, 3
    bl drawRectangle
    mov x1, 134
    mov x2, 356
    mov x3, 3
    mov x4, 6
    bl drawRectangle
    mov x1, 131
    mov x2, 359
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 125
    mov x2, 362
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 119
    mov x2, 365
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    movz x10, AZUL_MEDIO1, lsl 16
    movk x10, AZUL_MEDIO2, lsl 00
    mov x1, 122
    mov x2, 350
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 125
    mov x2, 353
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 125
    mov x2, 356
    mov x3, 9
    mov x4, 3
    bl drawRectangle
    mov x1, 125
    mov x2, 359
    mov x3, 6
    mov x4, 3
    bl drawRectangle

    movz x10, AZUL_BORDES1, lsl 16
    movk x10, AZUL_BORDES2, lsl 00
    mov x1, 134
    mov x2, 303
    mov x3, 15
    mov x4, 3
    bl drawRectangle
    mov x1, 128
    mov x2, 306
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 125
    mov x2, 309
    mov x3, 3
    mov x4, 3
    bl drawRectangle
    mov x1, 122
    mov x2, 312
    mov x3, 3
    mov x4, 6
    bl drawRectangle
    mov x1, 119
    mov x2, 318
    mov x3, 3
    mov x4, 6
    bl drawRectangle
    mov x1, 116
    mov x2, 324
    mov x3, 3
    mov x4, 6
    bl drawRectangle
    mov x1, 113
    mov x2, 330
    mov x3, 3
    mov x4, 3
    bl drawRectangle

    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES1, lsl 00
    mov x1, 107
    mov x2, 318
    mov x3, 3
    mov x4, 3
    bl drawRectangle
    mov x1, 110
    mov x2, 306
    mov x3, 3
    mov x4, 12
    bl drawRectangle
    mov x1, 113
    mov x2, 303
    mov x3, 3
    mov x4, 3
    bl drawRectangle
    mov x1, 116
    mov x2, 300
    mov x3, 3
    mov x4, 3
    bl drawRectangle
    mov x1, 119
    mov x2, 297
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 125
    mov x2, 294
    mov x3, 9
    mov x4, 3
    bl drawRectangle
    mov x1, 134
    mov x2, 297
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 140
    mov x2, 300
    mov x3, 12
    mov x4, 3
    bl drawRectangle
    mov x1, 146
    mov x2, 303
    mov x3, 30
    mov x4, 3
    bl drawRectangle
    mov x1, 176
    mov x2, 300
    mov x3, 15
    mov x4, 3
    bl drawRectangle
    mov x1, 191
    mov x2, 303
    mov x3, 9
    mov x4, 3
    bl drawRectangle
    mov x1, 194
    mov x2, 306
    mov x3, 12
    mov x4, 18
    bl drawRectangle
    mov x1, 191
    mov x2, 318
    mov x3, 15
    mov x4, 6
    bl drawRectangle
    mov x1, 188
    mov x2, 324
    mov x3, 12
    mov x4, 6
    bl drawRectangle
    mov x1, 185
    mov x2, 327
    mov x3, 12
    mov x4, 3
    bl drawRectangle
    mov x1, 203
    mov x2, 324
    mov x3, 3
    mov x4, 12
    bl drawRectangle
    mov x1, 200
    mov x2, 330
    mov x3, 3
    mov x4, 33
    bl drawRectangle
    mov x1, 197
    mov x2, 333
    mov x3, 3
    mov x4, 6
    bl drawRectangle
    mov x1, 194
    mov x2, 336
    mov x3, 6
    mov x4, 6
    bl drawRectangle
    mov x1, 188
    mov x2, 339
    mov x3, 9
    mov x4, 3
    bl drawRectangle
    mov x1, 179
    mov x2, 342
    mov x3, 15
    mov x4, 3
    bl drawRectangle
    mov x1, 161
    mov x2, 345
    mov x3, 27
    mov x4, 6
    bl drawRectangle
    mov x1, 152
    mov x2, 342
    mov x3, 9
    mov x4, 6
    bl drawRectangle
    mov x1, 149
    mov x2, 339
    mov x3, 9
    mov x4, 3
    bl drawRectangle
    mov x1, 149
    mov x2, 336
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 149
    mov x2, 333
    mov x3, 3
    mov x4, 3
    bl drawRectangle
    

    mov x1, 197
    mov x2, 363
    mov x3, 3
    mov x4, 63
    bl drawRectangle


    mov x1, 149
    mov x2, 300
    mov x3, 3
    mov x4, 27
    bl drawRectangle
    mov x1, 146
    mov x2, 327
    mov x3, 3
    mov x4, 27
    bl drawRectangle
    mov x1, 143
    mov x2, 354
    mov x3, 3
    mov x4, 18
    bl drawRectangle
    mov x1, 140
    mov x2, 372
    mov x3, 3
    mov x4, 54
    bl drawRectangle
    mov x1, 134
    mov x2, 426
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 137
    mov x2, 423
    mov x3, 3
    mov x4, 3
    bl drawRectangle
    mov x1, 141
    mov x2, 394
    mov x3, 57
    mov x4, 50
    bl drawRectangle
    mov x1, 150
    mov x2, 389
    mov x3, 35
    mov x4, 50
    bl drawRectangle
    mov x1, 185
    mov x2, 391
    mov x3, 6
    mov x4, 50
    bl drawRectangle

    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 157
    mov x2, 361
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 157
    mov x2, 361
    mov x3, 3
    mov x4, 6
    bl drawRectangle
    mov x1, 163
    mov x2, 364
    mov x3, 18
    mov x4, 3
    bl drawRectangle
    mov x1, 181
    mov x2, 361
    mov x3, 6
    mov x4, 9
    bl drawRectangle
    mov x1, 181
    mov x2, 361
    mov x3, 9
    mov x4, 3
    bl drawRectangle
    mov x1, 169
    mov x2, 370
    mov x3, 18
    mov x4, 3
    bl drawRectangle
    /* parte derecha del cuerpo */
    movz x10, AZUL_ILUMINADO1, lsl 16
    movk x10, AZUL_ILUMINADO2, lsl 00
    mov x1, 206 
    mov x2, 299
    mov x3, 71
    mov x4, 50
    bl drawRectangle
    mov x1, 206 
    mov x2, 302
    mov x3, 74
    mov x4, 50
    bl drawRectangle
    mov x1, 206 
    mov x2, 305
    mov x3, 77
    mov x4, 50
    bl drawRectangle
    mov x1, 206 
    mov x2, 308
    mov x3, 80
    mov x4, 50
    bl drawRectangle
    mov x1, 206 
    mov x2, 311
    mov x3, 83
    mov x4, 50
    bl drawRectangle
    mov x1, 206 
    mov x2, 317
    mov x3, 86
    mov x4, 50
    bl drawRectangle
    mov x1, 246 
    mov x2, 293
    mov x3, 20
    mov x4, 50
    bl drawRectangle
    mov x1, 203 
    mov x2, 337
    mov x3, 93
    mov x4, 50
    bl drawRectangle
    mov x1, 203 
    mov x2, 341
    mov x3, 96
    mov x4, 50
    bl drawRectangle
    mov x1, 203 
    mov x2, 347
    mov x3, 99
    mov x4, 50
    bl drawRectangle
    mov x1, 200 
    mov x2, 363
    mov x3, 107
    mov x4, 50
    bl drawRectangle
    mov x1, 200 
    mov x2, 373
    mov x3, 110
    mov x4, 40
    bl drawRectangle
    mov x1, 200 
    mov x2, 376
    mov x3, 113
    mov x4, 40
    bl drawRectangle
    movz x10, AZUL_MEDIO1, lsl 16
    movk x10, AZUL_MEDIO2, lsl 00
    mov x1, 200
    mov x2, 395
    mov x3, 120
    mov x4, 20
    bl drawRectangle
    mov x1, 210
    mov x2, 392
    mov x3, 110
    mov x4, 20
    bl drawRectangle
    mov x1, 215
    mov x2, 389
    mov x3, 95
    mov x4, 20
    bl drawRectangle
    mov x1, 225
    mov x2, 386
    mov x3, 80
    mov x4, 20
    bl drawRectangle
    mov x1, 238
    mov x2, 383
    mov x3, 70
    mov x4, 20
    bl drawRectangle

    mov x1, 230
    mov x2, 419
    mov x3, 20
    mov x4, 6
    bl drawRectangle
    mov x1, 233
    mov x2, 401
    mov x3, 30
    mov x4, 18
    bl drawRectangle
    mov x1, 236
    mov x2, 386
    mov x3, 30
    mov x4, 15
    bl drawRectangle
    mov x1, 239
    mov x2, 380
    mov x3, 30
    mov x4, 6
    bl drawRectangle
    mov x1, 242
    mov x2, 371
    mov x3, 30
    mov x4, 9
    bl drawRectangle
    mov x1, 239
    mov x2, 371
    mov x3, 30
    mov x4, 3
    bl drawRectangle
    mov x1, 233
    mov x2, 368
    mov x3, 30
    mov x4, 3
    bl drawRectangle
    mov x1, 227
    mov x2, 365
    mov x3, 30
    mov x4, 3
    bl drawRectangle
    mov x1, 215
    mov x2, 362
    mov x3, 30
    mov x4, 3
    bl drawRectangle
    mov x1, 215
    mov x2, 359
    mov x3, 30
    mov x4, 6
    bl drawRectangle
    mov x1, 218
    mov x2, 356
    mov x3, 30
    mov x4, 3
    bl drawRectangle
    mov x1, 224
    mov x2, 353
    mov x3, 30
    mov x4, 3
    bl drawRectangle
    mov x1, 230
    mov x2, 350
    mov x3, 30
    mov x4, 3
    bl drawRectangle
    mov x1, 236
    mov x2, 347
    mov x3, 30
    mov x4, 3
    bl drawRectangle

    movz x10, AZUL_CLARO1, lsl 16
    movk x10, AZUL_CLARO2, lsl 00
    mov x1, 200
    mov x2, 409
    mov x3, 120
    mov x4, 16
    bl drawRectangle
    mov x1, 210
    mov x2, 406
    mov x3, 110
    mov x4, 16
    bl drawRectangle
    mov x1, 219
    mov x2, 403
    mov x3, 101
    mov x4, 16
    bl drawRectangle
    mov x1, 228
    mov x2, 400
    mov x3, 92
    mov x4, 16
    bl drawRectangle
    mov x1, 231
    mov x2, 397
    mov x3, 89
    mov x4, 16
    bl drawRectangle
    mov x1, 234
    mov x2, 394
    mov x3, 86
    mov x4, 16
    bl drawRectangle
    mov x1, 237
    mov x2, 391
    mov x3, 70
    mov x4, 16
    bl drawRectangle
    mov x1, 240
    mov x2, 388
    mov x3, 70
    mov x4, 16
    bl drawRectangle
    mov x1, 243
    mov x2, 385
    mov x3, 77
    mov x4, 16
    bl drawRectangle
    mov x1, 250
    mov x2, 382
    mov x3, 70
    mov x4, 16
    bl drawRectangle
    
    

    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES1, lsl 00
    
    mov x1, 198
    mov x2, 306
    mov x3, 20
    mov x4, 6
    bl drawRectangle
    mov x1, 208
    mov x2, 306
    mov x3, 3
    mov x4, 15
    bl drawRectangle
    mov x1, 211
    mov x2, 306
    mov x3, 3
    mov x4, 12
    bl drawRectangle
    mov x1, 214
    mov x2, 306
    mov x3, 3
    mov x4, 9
    bl drawRectangle
    mov x1, 217
    mov x2, 306
    mov x3, 6
    mov x4, 6
    bl drawRectangle
    mov x1, 223
    mov x2, 306
    mov x3, 30
    mov x4, 3
    bl drawRectangle
    mov x1, 226
    mov x2, 303
    mov x3, 25
    mov x4, 3
    bl drawRectangle
    mov x1, 251
    mov x2, 300
    mov x3, 3
    mov x4, 3
    bl drawRectangle
    mov x1, 254
    mov x2, 297
    mov x3, 3
    mov x4, 3
    bl drawRectangle
    mov x1, 257
    mov x2, 291
    mov x3, 3
    mov x4, 6
    bl drawRectangle
    mov x1, 257
    mov x2, 291
    mov x3, 9
    mov x4, 3
    bl drawRectangle
    mov x1, 266
    mov x2, 294
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 272
    mov x2, 297
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 278
    mov x2, 300
    mov x3, 3
    mov x4, 3
    bl drawRectangle
    mov x1, 281
    mov x2, 303
    mov x3, 3
    mov x4, 3
    bl drawRectangle
    mov x1, 284
    mov x2, 306
    mov x3, 3
    mov x4, 3
    bl drawRectangle
    mov x1, 287
    mov x2, 309
    mov x3, 3
    mov x4, 6
    bl drawRectangle
    mov x1, 290
    mov x2, 315
    mov x3, 3
    mov x4, 9
    bl drawRectangle
    mov x1, 293
    mov x2, 324
    mov x3, 3
    mov x4, 9
    bl drawRectangle
    mov x1, 296
    mov x2, 333
    mov x3, 3
    mov x4, 9
    bl drawRectangle
    mov x1, 299
    mov x2, 343
    mov x3, 3
    mov x4, 9
    bl drawRectangle
    mov x1, 302
    mov x2, 352
    mov x3, 3
    mov x4, 9
    bl drawRectangle
    mov x1, 305
    mov x2, 361
    mov x3, 3
    mov x4, 9
    bl drawRectangle
    mov x1, 308
    mov x2, 370
    mov x3, 3
    mov x4, 6
    bl drawRectangle
    mov x1, 311
    mov x2, 376
    mov x3, 3
    mov x4, 3
    bl drawRectangle
    mov x1, 314
    mov x2, 379
    mov x3, 3
    mov x4, 50
    bl drawRectangle

    movz x10, AZUL_BORDES1, lsl 16
    movk x10, AZUL_BORDES2, lsl 00
    mov x1, 230
    mov x2, 419
    mov x3, 3
    mov x4, 6
    bl drawRectangle
    mov x1, 233
    mov x2, 401
    mov x3, 3
    mov x4, 18
    bl drawRectangle
    mov x1, 236
    mov x2, 386
    mov x3, 3
    mov x4, 15
    bl drawRectangle
    mov x1, 239
    mov x2, 380
    mov x3, 3
    mov x4, 6
    bl drawRectangle
    mov x1, 242
    mov x2, 371
    mov x3, 3
    mov x4, 9
    bl drawRectangle
    mov x1, 239
    mov x2, 371
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 233
    mov x2, 368
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 227
    mov x2, 365
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 215
    mov x2, 362
    mov x3, 12
    mov x4, 3
    bl drawRectangle
    mov x1, 215
    mov x2, 359
    mov x3, 3
    mov x4, 6
    bl drawRectangle
    mov x1, 218
    mov x2, 356
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 224
    mov x2, 353
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 230
    mov x2, 350
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 236
    mov x2, 347
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    
    
    movz x10, AZUL_MEDIO1, lsl 16
    movk x10, AZUL_MEDIO2, lsl 00
    mov x1, 235
    mov x2, 418
    mov x3, 2
    bl drawCincoPuntos
    mov x1, 240
    mov x2, 418
    mov x3, 2
    bl drawCincoPuntos
    add x1, x1, 5
    mov x2, 418
    mov x3, 2
    bl drawCincoPuntos
    add x1, x1, 5
    mov x2, 418
    mov x3, 2
    bl drawCincoPuntos
    add x1, x1, 5
    mov x2, 418
    mov x3, 2
    bl drawCincoPuntos
    mov x1, 245
    mov x2, 411
    mov x3, 2
    bl drawCincoPuntos
    add x1, x1, 5
    mov x2, 411
    mov x3, 2
    bl drawCincoPuntos
    add x1, x1, 5
    mov x2, 411
    mov x3, 2
    bl drawCincoPuntos
    mov x1, 258
    mov x2, 404
    mov x3, 2
    bl drawCincoPuntos
    mov x1, 253
    mov x2, 404
    mov x3, 2
    bl drawCincoPuntos
    mov x1, 259
    mov x2, 397
    mov x3, 2
    bl drawCincoPuntos
    mov x1, 259
    mov x2, 389
    mov x3, 2
    bl drawCincoPuntos
    
    ldr x30, [sp]   
    add sp, sp, 8   
br x30

.globl makeFace
makeFace:
    sub sp, sp, 8   
    str x30, [sp] 

    
    movz x10, PELO_NORMAL1, lsl 16
    movk x10, PELO_NORMAL2, lsl 00
    mov x1, 98
    mov x2, 180
    mov x3, 130
    mov x4, 108
    bl drawRectangle 
    mov x1, 98
    mov x2, 184
    mov x3, 138
    mov x4, 108
    bl drawRectangle 

    mov x1, 104
    mov x2, 177
    mov x3, 124
    mov x4, 108
    bl drawRectangle 
    mov x1, 110
    mov x2, 174
    mov x3, 113
    mov x4, 108
    bl drawRectangle 
    mov x1, 116
    mov x2, 171
    mov x3, 100
    mov x4, 108
    bl drawRectangle 
    mov x1, 122
    mov x2, 168
    mov x3, 88
    mov x4, 108
    bl drawRectangle 
    mov x1, 128
    mov x2, 165
    mov x3, 78
    mov x4, 108
    bl drawRectangle 
    mov x1, 140
    mov x2, 162
    mov x3, 48
    mov x4, 108
    bl drawRectangle 

    mov x1, 103
    mov x2, 305
    mov x3, 7
    mov x4, 12
    bl drawRectangle 

    mov x1, 95
    mov x2, 183
    mov x3, 10
    mov x4, 108
    bl drawRectangle
    mov x1, 92
    mov x2, 186 
    mov x3, 10
    mov x4, 88
    bl drawRectangle
    mov x1, 89
    mov x2, 198
    mov x3, 10
    mov x4, 25
    bl drawRectangle 
    mov x1, 86
    mov x2, 213
    mov x3, 10
    mov x4, 58
    bl drawRectangle 

    movz x10, PELO_LUZ1, lsl 16
    movk x10, PELO_LUZ2, lsl 00
    mov x1, 113
    mov x2, 204
    mov x3, 3
    mov x4, 35
    bl drawRectangle
    mov x1, 116
    mov x2, 200
    mov x3, 6
    mov x4, 35
    bl drawRectangle
    mov x1, 122
    mov x2, 197
    mov x3, 6
    mov x4, 35
    bl drawRectangle
    mov x1, 128
    mov x2, 197
    mov x3, 6
    mov x4, 32
    bl drawRectangle
    mov x1, 134
    mov x2, 194
    mov x3, 6
    mov x4, 32
    bl drawRectangle
    mov x1, 140
    mov x2, 194
    mov x3, 100
    mov x4, 32
    bl drawRectangle

    movz x10, PIEL1, lsl 16
    movk x10, PIEL2, lsl 00
    mov x1, 149
    mov x2, 300
    mov x3, 27
    mov x4, 3
    bl drawRectangle
    mov x1, 143
    mov x2, 297
    mov x3, 36
    mov x4, 3
    bl drawRectangle
    mov x1, 137
    mov x2, 294
    mov x3, 39
    mov x4, 3
    bl drawRectangle
    mov x1, 131
    mov x2, 291
    mov x3, 45
    mov x4, 3
    bl drawRectangle
    mov x1, 128
    mov x2, 288
    mov x3, 45
    mov x4, 3
    bl drawRectangle
    mov x1, 125
    mov x2, 285
    mov x3, 45
    mov x4, 3
    bl drawRectangle
    mov x1, 122
    mov x2, 282
    mov x3, 45
    mov x4, 3
    bl drawRectangle
    mov x1, 119
    mov x2, 276
    mov x3, 45
    mov x4, 6
    bl drawRectangle
    mov x1, 116
    mov x2, 270
    mov x3, 45
    mov x4, 6
    bl drawRectangle
    mov x1, 113
    mov x2, 264
    mov x3, 45
    mov x4, 6
    bl drawRectangle
    mov x1, 110
    mov x2, 243
    mov x3, 48
    mov x4, 21
    bl drawRectangle
    mov x1, 116
    mov x2, 240
    mov x3, 39
    mov x4, 3
    bl drawRectangle

/*--------------- frente -------------------------*/
    movz x10, SOMBRA_CUELLO11, lsl 16
    movk x10, SOMBRA_CUELLO12, lsl 00
    mov x1, 122
    mov x2, 234
    mov x3, 45
    mov x4, 3
    bl drawRectangle
    mov x1, 128
    mov x2, 231
    mov x3, 39
    mov x4, 3
    bl drawRectangle
    mov x1, 134
    mov x2, 228
    mov x3, 42
    mov x4, 3
    bl drawRectangle
    mov x1, 140
    mov x2, 225
    mov x3, 39
    mov x4, 3
    bl drawRectangle
    mov x1, 143
    mov x2, 222
    mov x3, 39
    mov x4, 3
    bl drawRectangle
    mov x1, 146
    mov x2, 219
    mov x3, 39
    mov x4, 3
    bl drawRectangle
    mov x1, 149
    mov x2, 216
    mov x3, 39
    mov x4, 3
    bl drawRectangle
    mov x1, 152
    mov x2, 213
    mov x3, 39
    mov x4, 3
    bl drawRectangle
    mov x1, 155
    mov x2, 210
    mov x3, 39
    mov x4, 3
    bl drawRectangle
    mov x1, 158
    mov x2, 207
    mov x3, 39
    mov x4, 3
    bl drawRectangle
    mov x1, 161
    mov x2, 201
    mov x3, 39
    mov x4, 6
    bl drawRectangle

    mov x1, 145
    mov x2, 237
    mov x3, 14
    mov x4, 3
    bl drawRectangle    // entrecejo

    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 113
    mov x2, 234
    mov x3, 9
    mov x4, 3
    bl drawRectangle
    mov x1, 122
    mov x2, 231
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 128
    mov x2, 228
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 134
    mov x2, 225
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 140
    mov x2, 222
    mov x3, 3
    mov x4, 3
    bl drawRectangle
    mov x1, 143
    mov x2, 219
    mov x3, 3
    mov x4, 3
    bl drawRectangle
    mov x1, 146
    mov x2, 216
    mov x3, 3
    mov x4, 3
    bl drawRectangle
    mov x1, 149
    mov x2, 213
    mov x3, 3
    mov x4, 3
    bl drawRectangle
    mov x1, 152
    mov x2, 210
    mov x3, 3
    mov x4, 3
    bl drawRectangle
    mov x1, 155
    mov x2, 207
    mov x3, 3
    mov x4, 3
    bl drawRectangle
    mov x1, 158
    mov x2, 201
    mov x3, 3
    mov x4, 6
    bl drawRectangle
    mov x1, 161
    mov x2, 189
    mov x3, 3
    mov x4, 12
    bl drawRectangle
    mov x1, 164
    mov x2, 201
    mov x3, 3
    mov x4, 6
    bl drawRectangle
    mov x1, 167
    mov x2, 207
    mov x3, 3
    mov x4, 3
    bl drawRectangle
    mov x1, 170
    mov x2, 210
    mov x3, 3
    mov x4, 3
    bl drawRectangle
    mov x1, 173
    mov x2, 213
    mov x3, 3
    mov x4, 3
    bl drawRectangle

/*--------------- pelo ---------------------------*/
/*--------------- relleno de cabeza --------------*/
    movz x10, PELO_LUZ1, lsl 16
    movk x10, PELO_LUZ2, lsl 00
    mov x1, 173
    mov x2, 195
    mov x3, 30
    mov x4, 18
    bl drawRectangle
    mov x1, 170
    mov x2, 195
    mov x3, 30
    mov x4, 15
    bl drawRectangle
    mov x1, 167
    mov x2, 195
    mov x3, 30
    mov x4, 12
    bl drawRectangle


    movz x10, PELO_BORDES1, lsl 16
    movk x10, PELO_BORDES2, lsl 00
    mov x1, 110
    mov x2, 294
    mov x3, 3
    mov x4, 12
    bl drawRectangle    
    movz x10, BORDE_LUZ1, lsl 16
    movk x10, BORDE_LUZ2, lsl 00
    mov x1, 110
    mov x2, 282
    mov x3, 3
    mov x4, 12
    bl drawRectangle    
    movz x10, PELO_BORDES1, lsl 16
    movk x10, PELO_BORDES2, lsl 00
    mov x1, 107
    mov x2, 273
    mov x3, 3
    mov x4, 9
    bl drawRectangle    
    movz x10, PELO_LUZ1, lsl 16
    movk x10, PELO_LUZ2, lsl 00
    mov x1, 104
    mov x2, 219
    mov x3, 3
    mov x4, 51
    bl drawRectangle
    mov x1, 107
    mov x2, 204
    mov x3, 3
    mov x4, 15
    bl drawRectangle
    mov x1, 110
    mov x2, 198
    mov x3, 3
    mov x4, 6
    bl drawRectangle  
    mov x1, 113
    mov x2, 195
    mov x3, 3
    mov x4, 3
    bl drawRectangle  
    mov x1, 116
    mov x2, 192
    mov x3, 3
    mov x4, 3
    bl drawRectangle 


    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 107
    mov x2, 219
    mov x3, 3
    mov x4, 54
    bl drawRectangle
    mov x1, 110
    mov x2, 264
    mov x3, 3
    mov x4, 18
    bl drawRectangle
    mov x1, 113
    mov x2, 270
    mov x3, 3
    mov x4, 36
    bl drawRectangle
    mov x1, 116
    mov x2, 276
    mov x3, 3
    mov x4, 27
    bl drawRectangle    
    mov x1, 119
    mov x2, 279
    mov x3, 3
    mov x4, 23
    bl drawRectangle    
    mov x1, 122
    mov x2, 282
    mov x3, 3
    mov x4, 17
    bl drawRectangle    
    mov x1, 125
    mov x2, 285
    mov x3, 3
    mov x4, 8
    bl drawRectangle    
    
    mov x1, 110
    mov x2, 315
    mov x3, 3
    mov x4, 3
    bl drawRectangle    
    mov x1, 102
    mov x2, 317
    mov x3, 10
    mov x4, 3
    bl drawRectangle    
    mov x1, 102
    mov x2, 308
    mov x3, 3
    mov x4, 9
    bl drawRectangle    

    mov x1, 99
    mov x2, 301
    mov x3, 3
    mov x4, 6
    bl drawRectangle    
    mov x1, 96
    mov x2, 295
    mov x3, 3
    mov x4, 6
    bl drawRectangle    
    mov x1, 93
    mov x2, 286
    mov x3, 3
    mov x4, 9
    bl drawRectangle    
    mov x1, 90
    mov x2, 274
    mov x3, 3
    mov x4, 12
    bl drawRectangle    
    mov x1, 87
    mov x2, 250
    mov x3, 3
    mov x4, 24
    bl drawRectangle    
    mov x1, 84
    mov x2, 217
    mov x3, 3
    mov x4, 33
    bl drawRectangle  
    mov x1, 87
    mov x2, 202
    mov x3, 3
    mov x4, 15
    bl drawRectangle 
    mov x1, 90
    mov x2, 190
    mov x3, 3
    mov x4, 12
    bl drawRectangle    
    mov x1, 93
    mov x2, 187
    mov x3, 3
    mov x4, 3
    bl drawRectangle    
    mov x1, 96
    mov x2, 184
    mov x3, 3
    mov x4, 3
    bl drawRectangle    
    mov x1, 99
    mov x2, 181
    mov x3, 3
    mov x4, 3
    bl drawRectangle 
    mov x1, 102
    mov x2, 178
    mov x3, 6
    mov x4, 3
    bl drawRectangle 
    mov x1, 108
    mov x2, 175
    mov x3, 6
    mov x4, 3
    bl drawRectangle 
    mov x1, 114
    mov x2, 172
    mov x3, 6
    mov x4, 3
    bl drawRectangle 
    mov x1, 120
    mov x2, 169
    mov x3, 6
    mov x4, 3
    bl drawRectangle 
    mov x1, 126
    mov x2, 166
    mov x3, 12  
    mov x4, 3
    bl drawRectangle 
    mov x1, 138
    mov x2, 163
    mov x3, 12  
    mov x4, 3
    bl drawRectangle 
    mov x1, 150
    mov x2, 160
    mov x3, 18
    mov x4, 3
    bl drawRectangle
/*--------------- segunda mitad de la cabeza -----*/
    mov x1, 168
    mov x2, 160
    mov x3, 12
    mov x4, 3
    bl drawRectangle 
    mov x1, 180
    mov x2, 163
    mov x3, 12  
    mov x4, 3
    bl drawRectangle 
    mov x1, 192
    mov x2, 166
    mov x3, 12  
    mov x4, 3
    bl drawRectangle 
    mov x1, 204
    mov x2, 169
    mov x3, 6 
    mov x4, 3
    bl drawRectangle
    mov x1, 210
    mov x2, 172
    mov x3, 6 
    mov x4, 3
    bl drawRectangle 
    mov x1, 216
    mov x2, 175
    mov x3, 6 
    mov x4, 3
    bl drawRectangle 
    mov x1, 222
    mov x2, 178
    mov x3, 6 
    mov x4, 3
    bl drawRectangle 
    mov x1, 228
    mov x2, 181
    mov x3, 3 
    mov x4, 3
    bl drawRectangle
    mov x1, 231
    mov x2, 184
    mov x3, 3 
    mov x4, 3
    bl drawRectangle 
    mov x1, 234
    mov x2, 187
    mov x3, 3 
    mov x4, 3
    bl drawRectangle 
    mov x1, 237
    mov x2, 190
    mov x3, 3 
    mov x4, 9
    bl drawRectangle 
    
/*--------------- Ojo Derecho --------------------*/
    bl pintarOjoCompleto

/*---------------  Nariz y Boca ------------------*/
    movz x10, SOMBRA_CUELLO12, lsl 16
    movk x10, SOMBRA_CUELLO12, lsl 00
    mov x1, 155
    mov x2, 277
    mov x3, 3
    mov x4, 6
    bl drawRectangle
    mov x1, 163
    mov x2, 294
    mov x3, 6
    mov x4, 3
    bl drawRectangle

    ldr x30, [sp]   
    add sp, sp, 8   
br x30

/*--------------- Partes ----------------*/
/* Pulgar sobre la planta - el resto de los dedos se dibuja en el archivo planta.s */
.global makeRightHand
makeRightHand:
    sub sp, sp, 8   
    str x30, [sp] 

/*--------------- Bordes Negros ------------------*/
    movz x10, NEGRO_BORDES2, lsl 00
    mov x1, 103
    mov x2, 335
    mov x3, 2
    mov x4, 13
    bl drawRectangle

    mov x1, 105
    mov x2, 348
    mov x3, 2
    mov x4, 2
    bl drawRectangle

    mov x1, 107
    mov x2, 350
    mov x3, 14
    mov x4, 2
    bl drawRectangle

    mov x1, 121
    mov x2, 338
    mov x3, 2
    mov x4, 13
    bl drawRectangle

    mov x1, 118
    mov x2, 336
    mov x3, 2
    mov x4, 2
    bl drawRectangle

    mov x1, 105
    mov x2, 334
    mov x3, 13
    mov x4, 2
    bl drawRectangle

/*--------------- Detalles oscuros ---------------*/
    movz x10, PIEL_SOMBRA1, lsl 16
    movk x10, PIEL_SOMBRA2, lsl 00

    mov x1, 106
    mov x2, 336
    mov x3, 12
    mov x4, 12
    bl drawRectangle

    mov x1, 117
    mov x2, 338
    mov x3, 4
    mov x4, 11
    bl drawRectangle

/*--------------- Detalles claros ----------------*/
    movz x10, PIEL_INT1, lsl 16
    movk x10, PIEL_INT2, lsl 00

    mov x1, 106
    mov x2, 345
    mov x3, 3
    mov x4, 4
    bl drawRectangle

    mov x1, 108
    mov x2, 348
    mov x3, 12
    mov x4, 3
    bl drawRectangle

    mov x1, 108
    mov x2, 336
    mov x3, 5
    mov x4, 6
    bl drawRectangle

    mov x1, 110
    mov x2, 342
    mov x3, 3
    mov x4, 2
    bl drawRectangle

    ldr x30, [sp]   
    add sp, sp, 8   
br x30

.global makeLeftHand
makeLeftHand:
    sub sp, sp, 8   
    str x30, [sp] 

/*--------------- Bordes Negros -------------------*/
    movz x10, NEGRO_BORDES2, lsl 00

    mov x1, 269
    mov x2, 402
    mov x3, 2
    mov x4, 21
    bl drawRectangle

    mov x1, 271
    mov x2, 423
    mov x3, 2
    mov x4, 2
    bl drawRectangle

    mov x1, 273
    mov x2, 402
    mov x3, 7
    mov x4, 14
    bl drawRectangle

    mov x1, 276
    mov x2, 416
    mov x3, 8
    mov x4, 3
    bl drawRectangle

    mov x1, 280
    mov x2, 418
    mov x3, 17
    mov x4, 3
    bl drawRectangle

    mov x1, 284
    mov x2, 421
    mov x3, 10
    mov x4, 2
    bl drawRectangle

    mov x1, 297
    mov x2, 416
    mov x3, 2
    mov x4, 3
    mov x5, 4
    bl drawDiagonalSupDer

    mov x1, 305
    mov x2, 393
    mov x3, 2
    mov x4, 14
    bl drawRectangle //

    mov x1, 248
    mov x2, 374
    mov x3, 2
    mov x4, 8
    bl drawRectangle

    mov x1, 250
    mov x2, 382
    mov x3, 2
    mov x4, 2
    bl drawRectangle

    mov x1, 252
    mov x2, 384
    mov x3, 13
    mov x4, 2
    bl drawRectangle

    mov x1, 250
    mov x2, 372
    mov x3, 10
    mov x4, 2
    bl drawRectangle

    mov x1, 240
    mov x2, 374
    mov x3, 2
    mov x4, 2
    bl drawRectangle //

    mov x1, 242
    mov x2, 376
    mov x3, 6
    mov x4, 2
    bl drawRectangle //

    mov x1, 238
    mov x2, 363
    mov x3, 2
    mov x4, 11
    bl drawRectangle //

    mov x1, 240
    mov x2, 361
    mov x3, 4
    mov x4, 2
    bl drawRectangle //

    mov x1, 244
    mov x2, 358
    mov x3, 4
    mov x4, 2
    bl drawRectangle //

    mov x1, 248
    mov x2, 356
    mov x3, 5
    mov x4, 2
    bl drawRectangle

    mov x1, 274
    mov x2, 382
    mov x3, 13
    mov x4, 3
    bl drawRectangle

    mov x1, 303
    mov x2, 380
    mov x3, 2
    mov x4, 13
    bl drawRectangle

    mov x1, 301
    mov x2, 364
    mov x3, 2
    mov x4, 16
    bl drawRectangle

    mov x1, 299
    mov x2, 356
    mov x3, 2
    mov x4, 8
    bl drawRectangle

    mov x1, 269
    mov x2, 354
    mov x3, 9
    mov x4, 2
    bl drawRectangle

    mov x1, 297
    mov x2, 351
    mov x3, 2
    mov x4, 5
    bl drawRectangle

    mov x1, 295
    mov x2, 349
    mov x3, 3
    mov x4, 3
    bl drawRectangle

    mov x1, 293
    mov x2, 345
    mov x3, 2
    mov x4, 4
    bl drawRectangle

    mov x1, 234
    mov x2, 363
    mov x3, 5
    mov x4, 2
    bl drawRectangle

    mov x1, 232
    mov x2, 361
    mov x3, 2
    mov x4, 2
    bl drawRectangle

    mov x1, 230
    mov x2, 353
    mov x3, 2
    mov x4, 8
    bl drawRectangle

    mov x1, 232
    mov x2, 351
    mov x3, 5
    mov x4, 2
    bl drawRectangle

    mov x1, 234
    mov x2, 348
    mov x3, 8
    mov x4, 3
    bl drawRectangle

    mov x1, 291
    mov x2, 340
    mov x3, 2
    mov x4, 5
    bl drawRectangle

    mov x1, 259
    mov x2, 328
    mov x3, 22
    mov x4, 2
    bl drawRectangle

    mov x1, 232
    mov x2, 340
    mov x3, 2
    mov x4, 8
    bl drawRectangle

    mov x1, 234
    mov x2, 338
    mov x3, 3
    mov x4, 2
    bl drawRectangle

    mov x1, 237
    mov x2, 335
    mov x3, 2
    mov x4, 3
    bl drawRectangle

    mov x1, 239
    mov x2, 333
    mov x3, 3
    mov x4, 2
    bl drawRectangle

    mov x1, 242
    mov x2, 330
    mov x3, 3
    mov x4, 3
    bl drawRectangle

    mov x1, 242
    mov x2, 346
    mov x3, 5
    mov x4, 2
    bl drawRectangle

    mov x1, 246
    mov x2, 343
    mov x3, 6
    mov x4, 2
    bl drawRectangle

    mov x1, 268
    mov x2, 322
    mov x3, 2
    mov x4, 6
    bl drawRectangle

    mov x1, 266
    mov x2, 318
    mov x3, 2
    mov x4, 4
    bl drawRectangle

    mov x1, 253
    mov x2, 310
    mov x3, 7
    mov x4, 2
    bl drawRectangle

    mov x1, 265
    mov x2, 341
    mov x3, 6
    mov x4, 3
    bl drawRectangle

    mov x1, 305
    mov x2, 382
    mov x3, 2
    mov x4, 4
    mov x5, 6
    bl drawDiagonalInfDer

    mov x1, 281
    mov x2, 330
    mov x3, 2
    mov x4, 2
    mov x5, 5
    bl drawDiagonalInfDer

    mov x1, 280
    mov x2, 330
    mov x3, 2
    mov x4, 2
    mov x5, 5
    bl drawDiagonalInfDer

    mov x1, 260
    mov x2, 312
    mov x3, 2
    mov x4, 2
    mov x5, 3
    bl drawDiagonalInfDer

/*--------------- Sombra del Mango ----------------*/
    movz x10, VERDE_OSC2, lsl 00

    mov x1, 281
    mov x2, 386
    mov x3, 12
    mov x4, 32
    bl drawRectangle

    mov x1, 281
    mov x2, 385
    mov x3, 6
    mov x4, 1
    bl drawRectangle

    mov x1, 259
    mov x2, 327
    mov x3, 5
    mov x4, 1
    bl drawRectangle

    mov x1, 253
    mov x2, 312
    mov x3, 2
    mov x4, 5
    mov x5, 3
    bl drawDiagonalInfDer

    mov x1, 255
    mov x2, 312
    mov x3, 2
    mov x4, 5
    mov x5, 3
    bl drawDiagonalInfDer

/*--------------- Detalle en la manga -------------*/
    movz x10, NEGRO_BORDES2, lsl 00

    mov x1, 278
    mov x2, 414
    mov x3, 3
    mov x4, 3
    bl drawRectangle

    mov x1, 280
    mov x2, 416
    mov x3, 3
    mov x4, 3
    bl drawRectangle

/*--------------- Mango de la Lupa ----------------*/
    movz x10, NEGRO_BORDES2, lsl 00
    mov x1, 233
    mov x2, 304
    mov x3, 2
    mov x4, 5
    mov x5, 22
    bl drawDiagonalInfDer

    mov x1, 235
    mov x2, 304
    mov x3, 2
    mov x4, 5
    mov x5, 22
    bl drawDiagonalInfDer

    mov x1, 237
    mov x2, 304
    mov x3, 2
    mov x4, 5
    mov x5, 22
    bl drawDiagonalInfDer

    mov x1, 239
    mov x2, 304
    mov x3, 2
    mov x4, 5
    mov x5, 22
    bl drawDiagonalInfDer

    mov x1, 239
    mov x2, 299
    mov x3, 2
    mov x4, 5
    mov x5, 23
    bl drawDiagonalInfDer

    mov x1, 241
    mov x2, 299
    mov x3, 2
    mov x4, 5
    mov x5, 22
    bl drawDiagonalInfDer

    mov x1, 243
    mov x2, 299
    mov x3, 2
    mov x4, 5
    mov x5, 22
    bl drawDiagonalInfDer

    mov x1, 245
    mov x2, 299
    mov x3, 2
    mov x4, 5
    mov x5, 22
    bl drawDiagonalInfDer

    mov x1, 247
    mov x2, 299
    mov x3, 2
    mov x4, 5
    mov x5, 22
    bl drawDiagonalInfDer

/*--------------- Detalles oscuros ----------------*/
    movz x10, PIEL_SOMBRA1, lsl 16
    movk x10, PIEL_SOMBRA2, lsl 00

    mov x1, 295
    mov x2, 415
    mov x3, 2
    mov x4, 3
    mov x5, 5
    bl drawDiagonalSupDer

    mov x1, 293
    mov x2, 415
    mov x3, 2
    mov x4, 3
    mov x5, 6
    bl drawDiagonalSupDer

    mov x1, 291
    mov x2, 415
    mov x3, 2
    mov x4, 3
    mov x5, 7
    bl drawDiagonalSupDer

    mov x1, 293
    mov x2, 409
    mov x3, 2
    mov x4, 3
    mov x5, 6
    bl drawDiagonalSupDer //

    mov x1, 293
    mov x2, 406
    mov x3, 2
    mov x4, 3
    mov x5, 5
    bl drawDiagonalSupDer //

    mov x1, 260
    mov x2, 374
    mov x3, 14
    mov x4, 3
    bl drawRectangle

    mov x1, 262
    mov x2, 377
    mov x3, 12
    mov x4, 7
    bl drawRectangle

    mov x1, 270
    mov x2, 363
    mov x3, 30
    mov x4, 19
    bl drawRectangle //

    mov x1, 260
    mov x2, 368
    mov x3, 17
    mov x4, 3
    bl drawRectangle

    mov x1, 257
    mov x2, 363
    mov x3, 20
    mov x4, 5
    bl drawRectangle //

    mov x1, 254
    mov x2, 360
    mov x3, 16
    mov x4, 3
    bl drawRectangle //

    mov x1, 240
    mov x2, 371
    mov x3, 10
    mov x4, 3
    bl drawRectangle //

    mov x1, 242
    mov x2, 374
    mov x3, 6
    mov x4, 2
    bl drawRectangle //

    mov x1, 251
    mov x2, 358
    mov x3, 19
    mov x4, 2
    bl drawRectangle

    mov x1, 254
    mov x2, 356
    mov x3, 45
    mov x4, 7
    bl drawRectangle

    mov x1, 252
    mov x2, 354
    mov x3, 2
    mov x4, 2
    bl drawRectangle

    mov x1, 252
    mov x2, 348
    mov x3, 43
    mov x4, 6
    bl drawRectangle

    mov x1, 287
    mov x2, 382
    mov x3, 15
    mov x4, 4
    bl drawRectangle

    mov x1, 291
    mov x2, 380
    mov x3, 12
    mov x4, 14
    bl drawRectangle

    mov x1, 293
    mov x2, 393
    mov x3, 12
    mov x4, 14
    bl drawRectangle

    mov x1, 300
    mov x2, 364
    mov x3, 1
    mov x4, 16
    bl drawRectangle

    mov x1, 278
    mov x2, 354
    mov x3, 19
    mov x4, 2
    bl drawRectangle

    mov x1, 295
    mov x2, 351
    mov x3, 2
    mov x4, 4
    bl drawRectangle

    mov x1, 250
    mov x2, 345
    mov x3, 43
    mov x4, 3
    bl drawRectangle

    mov x1, 264
    mov x2, 322
    mov x3, 4
    mov x4, 6
    bl drawRectangle

    mov x1, 264
    mov x2, 318
    mov x3, 2
    mov x4, 4
    bl drawRectangle

    mov x1, 252
    mov x2, 343
    mov x3, 39
    mov x4, 2
    bl drawRectangle

    mov x1, 270
    mov x2, 341
    mov x3, 21
    mov x4, 3
    bl drawRectangle

    mov x1, 250
    mov x2, 339
    mov x3, 40
    mov x4, 2
    bl drawRectangle

    mov x1, 237
    mov x2, 337
    mov x3, 52
    mov x4, 2
    bl drawRectangle

    mov x1, 239
    mov x2, 335
    mov x3, 47
    mov x4, 2
    bl drawRectangle

    mov x1, 242
    mov x2, 333
    mov x3, 42
    mov x4, 2
    bl drawRectangle

    mov x1, 254
    mov x2, 331
    mov x3, 28
    mov x4, 2
    bl drawRectangle

    mov x1, 260
    mov x2, 330
    mov x3, 21
    mov x4, 1
    bl drawRectangle

    mov x1, 257
    mov x2, 312
    mov x3, 2
    mov x4, 5
    mov x5, 3
    bl drawDiagonalInfDer

    mov x1, 259
    mov x2, 312
    mov x3, 2
    mov x4, 5
    mov x5, 3
    bl drawDiagonalInfDer

    mov x1, 260
    mov x2, 314
    mov x3, 2
    mov x4, 2
    mov x5, 3
    bl drawDiagonalInfDer

    mov x1, 263
    mov x2, 317
    mov x3, 2
    mov x4, 5
    mov x5, 2
    bl drawDiagonalInfDer

/*--------------- Detalles claros -----------------*/
    movz x10, PIEL1, lsl 16
    movk x10, PIEL2, lsl 00

    mov x1, 250
    mov x2, 374
    mov x3, 10
    mov x4, 8
    bl drawRectangle

    mov x1, 252
    mov x2, 377
    mov x3, 10
    mov x4, 7
    bl drawRectangle

    mov x1, 240
    mov x2, 368
    mov x3, 20
    mov x4, 3
    bl drawRectangle //

    mov x1, 240
    mov x2, 363
    mov x3, 17
    mov x4, 5
    bl drawRectangle //

    mov x1, 244
    mov x2, 360
    mov x3, 10
    mov x4, 3
    bl drawRectangle //

    mov x1, 248
    mov x2, 358
    mov x3, 3
    mov x4, 2
    bl drawRectangle

    mov x1, 238
    mov x2, 339
    mov x3, 12
    mov x4, 2
    bl drawRectangle

    mov x1, 234
    mov x2, 341
    mov x3, 16
    mov x4, 2
    bl drawRectangle

    mov x1, 234
    mov x2, 343
    mov x3, 12
    mov x4, 3
    bl drawRectangle

    mov x1, 234
    mov x2, 346
    mov x3, 8
    mov x4, 2
    bl drawRectangle

    mov x1, 234
    mov x2, 361
    mov x3, 6
    mov x4, 2
    bl drawRectangle

    mov x1, 232
    mov x2, 358
    mov x3, 12
    mov x4, 3
    bl drawRectangle

    mov x1, 232
    mov x2, 353
    mov x3, 17
    mov x4, 5
    bl drawRectangle

    mov x1, 237
    mov x2, 351
    mov x3, 15
    mov x4, 5
    bl drawRectangle

    mov x1, 242
    mov x2, 348
    mov x3, 9
    mov x4, 3
    bl drawRectangle

    mov x1, 247
    mov x2, 345
    mov x3, 3
    mov x4, 3
    bl drawRectangle

    /* ---------parte blanca de la lupa, temporal ------------- */
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00



    ldr x30, [sp]   
    add sp, sp, 8   
br x30

.global makeLupa
makeLupa:
    sub sp, sp, 8   
    str x30, [sp] 

/*--------------- Bordes Negros ------------------*/
    movz x10, NEGRO_BORDES2, lsl 00

    mov x1, 160
    mov x2, 234
    mov x3, 6
    mov x4, 35
    bl drawRectangle   //--lupa - borde + izquierdo --//

    mov x1, 163
    mov x2, 267
    mov x3, 6
    mov x4, 9
    bl drawRectangle

    mov x1, 165
    mov x2, 274
    mov x3, 6
    mov x4, 6
    bl drawRectangle 

    mov x1, 168
    mov x2, 278
    mov x3, 6
    mov x4, 7
    bl drawRectangle

    mov x1, 170
    mov x2, 283
    mov x3, 7
    mov x4, 5
    bl drawRectangle

    mov x1, 173
    mov x2, 287
    mov x3, 7
    mov x4, 6
    bl drawRectangle

    mov x1, 176
    mov x2, 289
    mov x3, 7
    mov x4, 7
    bl drawRectangle

    mov x1, 178
    mov x2, 292
    mov x3, 7
    mov x4, 7
    bl drawRectangle

    mov x1, 181
    mov x2, 295
    mov x3, 6
    mov x4, 8
    bl drawRectangle

    mov x1, 183
    mov x2, 297
    mov x3, 12
    mov x4, 7
    bl drawRectangle

    mov x1, 188
    mov x2, 300
    mov x3, 17
    mov x4, 6
    bl drawRectangle

    mov x1, 196
    mov x2, 302
    mov x3, 53
    mov x4, 7
    bl drawRectangle

    mov x1, 209
    mov x2, 309
    mov x3, 17
    mov x4, 2
    bl drawRectangle    //--lupa - punto mas bajo --//

    mov x1, 224
    mov x2, 300
    mov x3, 28
    mov x4, 4
    bl drawRectangle

    mov x1, 235
    mov x2, 297
    mov x3, 19
    mov x4, 4
    bl drawRectangle

    mov x1, 240
    mov x2, 294
    mov x3, 17
    mov x4, 5
    bl drawRectangle

    mov x1, 245
    mov x2, 292
    mov x3, 15
    mov x4, 4
    bl drawRectangle

    mov x1, 247
    mov x2, 289
    mov x3, 15
    mov x4, 4
    bl drawRectangle

    mov x1, 247
    mov x2, 289
    mov x3, 15
    mov x4, 4
    bl drawRectangle

    mov x1, 250
    mov x2, 287
    mov x3, 13
    mov x4, 3
    bl drawRectangle

    mov x1, 252
    mov x2, 284
    mov x3, 14
    mov x4, 4
    bl drawRectangle

    mov x1, 256
    mov x2, 279
    mov x3, 12
    mov x4, 5
    bl drawRectangle

    mov x1, 258
    mov x2, 274
    mov x3, 12
    mov x4, 5
    bl drawRectangle

    mov x1, 261
    mov x2, 264
    mov x3, 9
    mov x4, 10
    bl drawRectangle

    mov x1, 263
    mov x2, 235
    mov x3, 9
    mov x4, 35
    bl drawRectangle   //--lupa - borde + derecho --//

    mov x1, 261
    mov x2, 227
    mov x3, 9
    mov x4, 12
    bl drawRectangle

    mov x1, 258
    mov x2, 222
    mov x3, 9
    mov x4, 9
    bl drawRectangle

    mov x1, 255
    mov x2, 219
    mov x3, 10
    mov x4, 7
    bl drawRectangle

    mov x1, 253
    mov x2, 214
    mov x3, 9
    mov x4, 9
    bl drawRectangle

    mov x1, 250
    mov x2, 214
    mov x3, 12
    mov x4, 7
    bl drawRectangle

    mov x1, 250
    mov x2, 211
    mov x3, 10
    mov x4, 10
    bl drawRectangle

    mov x1, 247
    mov x2, 210
    mov x3, 12
    mov x4, 8
    bl drawRectangle

    mov x1, 243
    mov x2, 207
    mov x3, 9
    mov x4, 7
    bl drawRectangle

    mov x1, 240
    mov x2, 204
    mov x3, 9
    mov x4, 7
    bl drawRectangle

    mov x1, 234
    mov x2, 201
    mov x3, 10
    mov x4, 7
    bl drawRectangle

    mov x1, 224
    mov x2, 199
    mov x3, 15
    mov x4, 6
    bl drawRectangle

    mov x1, 201
    mov x2, 196
    mov x3, 30
    mov x4, 7
    bl drawRectangle    //--lupa - punto mas alto --//

    mov x1, 191
    mov x2, 199
    mov x3, 11
    mov x4, 6
    bl drawRectangle

    mov x1, 186
    mov x2, 201
    mov x3, 8
    mov x4, 7
    bl drawRectangle

    mov x1, 183
    mov x2, 204
    mov x3, 7
    mov x4, 7
    bl drawRectangle

    mov x1, 180
    mov x2, 207
    mov x3, 5
    mov x4, 6
    bl drawRectangle

    mov x1, 178
    mov x2, 209
    mov x3, 4
    mov x4, 7
    bl drawRectangle

    mov x1, 175
    mov x2, 212
    mov x3, 5
    mov x4, 7
    bl drawRectangle

    mov x1, 170
    mov x2, 214
    mov x3, 7
    mov x4, 7
    bl drawRectangle

    mov x1, 168
    mov x2, 217
    mov x3, 6
    mov x4, 7
    bl drawRectangle

    mov x1, 165
    mov x2, 222
    mov x3, 6
    mov x4, 6
    bl drawRectangle

    mov x1, 162
    mov x2, 227
    mov x3, 7
    mov x4, 7
    bl drawRectangle

/*------------ Lupa - Piel ------------*/
    movz x10, PIEL_SOMBRA1, lsl 16
    movk x10, PIEL_SOMBRA2, lsl 00
    mov x1, 205
    mov x2, 300
    mov x3, 19
    mov x4, 2
    bl drawRectangle

    mov x1, 195
    mov x2, 297
    mov x3, 39
    mov x4, 3
    bl drawRectangle

    mov x1, 187
    mov x2, 295
    mov x3, 53
    mov x4, 2
    bl drawRectangle

    mov x1, 232
    mov x2, 290
    mov x3, 10
    mov x4, 5
    bl drawRectangle

/*------------ Lupa - Parte Azul ------------*/
    movz x10, AZUL_LUPA, lsl 00
    mov x1, 242
    mov x2, 292
    mov x3, 3
    mov x4, 2
    bl drawRectangle

    mov x1, 242
    mov x2, 290
    mov x3, 5
    mov x4, 2
    bl drawRectangle

    mov x1, 242
    mov x2, 284
    mov x3, 8
    mov x4, 6
    bl drawRectangle

    mov x1, 250
    mov x2, 284
    mov x3, 2
    mov x4, 2
    bl drawRectangle

    mov x1, 247
    mov x2, 274
    mov x3, 8
    mov x4, 10
    bl drawRectangle

    mov x1, 255
    mov x2, 274
    mov x3, 3
    mov x4, 5
    bl drawRectangle

    mov x1, 253
    mov x2, 237
    mov x3, 8
    mov x4, 37
    bl drawRectangle

    mov x1, 261
    mov x2, 239
    mov x3, 2
    mov x4, 25
    bl drawRectangle

    mov x1, 182
    mov x2, 213
    mov x3, 45
    mov x4, 3
    bl drawRectangle
    
    mov x1, 185
    mov x2, 211
    mov x3, 41
    mov x4, 2
    bl drawRectangle

    mov x1, 190
    mov x2, 208
    mov x3, 27
    mov x4, 3
    bl drawRectangle

    mov x1, 195
    mov x2, 206
    mov x3, 21
    mov x4, 2
    bl drawRectangle

/*------------ Lupa - Ceja Azul Oscuro ------------*/
    movz x10, AZUL_OJO1, lsl 16
    movk x10, AZUL_OJO2, lsl 00
    mov x1, 253
    mov x2, 231
    mov x3, 8
    mov x4, 6
    bl drawRectangle

    mov x1, 237
    mov x2, 226
    mov x3, 21
    mov x4, 5
    bl drawRectangle

    mov x1, 171
    mov x2, 224
    mov x3, 84
    mov x4, 3
    bl drawRectangle   //--- Parpado, borde inferior ---//

    mov x1, 174
    mov x2, 221
    mov x3, 81
    mov x4, 3
    bl drawRectangle

    mov x1, 177
    mov x2, 219
    mov x3, 65
    mov x4, 4
    bl drawRectangle

    mov x1, 180
    mov x2, 216
    mov x3, 62
    mov x4, 3
    bl drawRectangle

    mov x1, 180
    mov x2, 216
    mov x3, 62
    mov x4, 3
    bl drawRectangle

    mov x1, 171
    mov x2, 227
    mov x3, 3
    mov x4, 4
    bl drawRectangle

    mov x1, 169
    mov x2, 228
    mov x3, 3
    mov x4, 3
    bl drawRectangle

/*------------ Lupa - Gorro ------------*/
    movz x10, AZUL_GORRO2, lsl 00

    mov x1, 195
    mov x2, 205
    mov x3, 8
    mov x4, 1
    bl drawRectangle

    mov x1, 203
    mov x2, 203
    mov x3, 21
    mov x4, 3
    bl drawRectangle

    mov x1, 217
    mov x2, 206
    mov x3, 17
    mov x4, 5
    bl drawRectangle

    mov x1, 236
    mov x2, 208
    mov x3, 6
    mov x4, 3
    bl drawRectangle

    mov x1, 227
    mov x2, 211
    mov x3, 18
    mov x4, 5
    bl drawRectangle

    mov x1, 242
    mov x2, 213
    mov x3, 5
    mov x4, 8
    bl drawRectangle

    mov x1, 248
    mov x2, 218
    mov x3, 2
    mov x4, 3
    bl drawRectangle

/*------------ Lupa - Celeste Ojo ------------*/
    movz x10, CELESTE_OJO, lsl 16
    movk x10, CELESTE_OJO2, lsl 00

    mov x1, 242
    mov x2, 231
    mov x3, 11
    mov x4, 16
    bl drawRectangle

    mov x1, 232
    mov x2, 231
    mov x3, 10
    mov x4, 11
    bl drawRectangle

    mov x1, 216
    mov x2, 226
    mov x3, 21
    mov x4, 11
    bl drawRectangle

    mov x1, 175
    mov x2, 226
    mov x3, 21
    mov x4, 11
    bl drawRectangle

    mov x1, 170
    mov x2, 231
    mov x3, 5
    mov x4, 6
    bl drawRectangle

    mov x1, 167
    mov x2, 235
    mov x3, 3
    mov x4, 2
    bl drawRectangle

/*------------ Lupa - Blanco Ojo ------------*/
    movz x10, BLANCO1, lsl 16
    movk x10, BLANCO2, lsl 00
    mov x1, 167
    mov x2, 237
    mov x3, 19
    mov x4, 29
    bl drawRectangle

    mov x1, 216
    mov x2, 237
    mov x3, 16
    mov x4, 58
    bl drawRectangle

    mov x1, 232
    mov x2, 242
    mov x3, 10
    mov x4, 48
    bl drawRectangle

    mov x1, 242
    mov x2, 247
    mov x3, 5
    mov x4, 37
    bl drawRectangle

    mov x1, 242
    mov x2, 247
    mov x3, 5
    mov x4, 37
    bl drawRectangle

    mov x1, 247
    mov x2, 247
    mov x3, 6
    mov x4, 27
    bl drawRectangle

    mov x1, 170
    mov x2, 266
    mov x3, 21
    mov x4, 8
    bl drawRectangle

    mov x1, 172
    mov x2, 274
    mov x3, 19
    mov x4, 5
    bl drawRectangle

    mov x1, 175
    mov x2, 279
    mov x3, 16
    mov x4, 5
    bl drawRectangle

    mov x1, 177
    mov x2, 284
    mov x3, 14
    mov x4, 3
    bl drawRectangle

    mov x1, 179
    mov x2, 287
    mov x3, 12
    mov x4, 2
    bl drawRectangle

    mov x1, 182
    mov x2, 288
    mov x3, 14
    mov x4, 4
    bl drawRectangle

    mov x1, 185
    mov x2, 292
    mov x3, 11
    mov x4, 3
    bl drawRectangle

/*------------------ OJO IZQUIERDO - INICIA -------------------*/
    mov x1, 186
    mov x2, 226
    bl drawOjoIzquierdo

    /*------------------ OJO IZQUIERDO - TERMINA -------------------*/

    ldr x30, [sp]   
    add sp, sp, 8   
br x30

.global drawOjoIzquierdo
drawOjoIzquierdo:
    sub sp, sp, 8   
    str x30, [sp] 

    mov x13, x2

    /*------------------ OJO IZQUIERDO - INICIA -------------------*/

    movz x10, AZUL_OJO1, lsl 16
    movk x10, AZUL_OJO2, lsl 00
    mov x3, 30
    mov x4, 41
    bl drawRectangle

    add x13, x13, 27
    mov x2, x13
    add x1, x1, 5
    mov x3, 30
    mov x4, 35
    bl drawRectangle

    add x13, x13, 35
    mov x2, x13
    add x1, x1, 5
    mov x3, 20
    mov x4, 7
    bl drawRectangle

    movz x10, BRILLO_HOJA1, lsl 16
    movk x10, BRILLO_HOJA2, lsl 00

    sub x13, x13, 35
    mov x2, x13
    add x1, x1, 5
    mov x3, 5
    mov x4, 14
    bl drawRectangle

    /*------------------ OJO IZQUIERDO - TERMINA -------------------*/

    ldr x30, [sp]   
    add sp, sp, 8   
br x30

.global drawOjoDerecho
drawOjoDerecho:
    sub sp, sp, 8   
    str x30, [sp] 

    mov x13, x2

    /*------------------ OJO DERECHO - INICIA -------------------*/
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00

    mov x3, 15
    mov x4, 12
    bl drawRectangle

    add x13, x13, 12
    mov x2, x13

    mov x3, 18
    mov x4, 9
    bl drawRectangle

    add x1, x1, 3
    add x13, x13, 9
    mov x2, x13

    mov x3, 12
    mov x4, 9
    bl drawRectangle

    add x1, x1, 3
    add x13, x13, 9
    mov x2, x13

    mov x3, 6
    mov x4, 3
    bl drawRectangle

    movz x10, BRILLO_HOJA1, lsl 16
    movk x10, BRILLO_HOJA2, lsl 00

    add x1, x1, 2
    sub x13, x13, 14
    mov x2, x13

    mov x3, 2
    mov x4, 6
    bl drawRectangle
    /*------------------ OJO DERECHO - TERMINA -------------------*/

    ldr x30, [sp]   
    add sp, sp, 8   
br x30

.global pintarOjoBlanco
pintarOjoBlanco:
    sub sp, sp, 8
    str x30, [sp]

    /*--------- Ojo Derecho ----------*/
    movz x10, CELESTE_OJO, lsl 16
    movk x10, CELESTE_OJO2, lsl 00
    mov x1, 116
    mov x2, 240
    mov x3, 27
    mov x4, 3
    bl drawRectangle
    mov x1, 110
    mov x2, 243
    mov x3, 33
    mov x4, 3
    bl drawRectangle
    mov x1, 110
    mov x2, 246
    mov x3, 28
    mov x4, 3
    bl drawRectangle
    mov x1, 110
    mov x2, 249
    mov x3, 3
    mov x4, 3
    bl drawRectangle

    movz x10, BLANCO1, lsl 16
    movk x10, BLANCO2, lsl 00
    mov x1, 113
    mov x2, 249
    mov x3, 36
    mov x4, 9
    bl drawRectangle
    mov x1, 116
    mov x2, 258
    mov x3, 33
    mov x4, 6
    bl drawRectangle
    mov x1, 119
    mov x2, 261
    mov x3, 30
    mov x4, 3
    bl drawRectangle
    mov x1, 122
    mov x2, 264
    mov x3, 27
    mov x4, 3
    bl drawRectangle
    mov x1, 125
    mov x2, 267
    mov x3, 21
    mov x4, 6
    bl drawRectangle

    /*--------- Ojo izquierdo --------- */
    movz x10, CELESTE_OJO, lsl 16
    movk x10, CELESTE_OJO2, lsl 00
    mov x1, 180
    mov x2, 226
    mov x3, 38
    mov x4, 11
    bl drawRectangle

    movz x10, BLANCO1, lsl 16
    movk x10, BLANCO2, lsl 00
    mov x1, 180
    mov x2, 237
    mov x3, 43
    mov x4, 52
    bl drawRectangle

    mov x1, 189
    mov x2, 289
    mov x3, 29
    mov x4, 6
    bl drawRectangle

    ldr x30, [sp]
    add sp, sp, 8
br x30

.global taparOjos
taparOjos:
    sub sp, sp, 8
    str x30, [sp]

/* tapar ojo derecho */
    movz x10, PIEL1, lsl 16
    movk x10, PIEL2, lsl 00

    mov x1, 110
    mov x2, 240
    mov x3, 39
    mov x4, 25
    bl drawRectangle

    mov x1, 120
    mov x2, 265
    mov x3, 28
    mov x4, 10
    bl drawRectangle

    movz x10, PIEL_SOMBRA1, lsl 16
    movk x10, PIEL_SOMBRA2, lsl 00

    mov x1, 112
    mov x2, 235
    mov x3, 33
    mov x4, 5
    bl drawRectangle

/* tapar ojo izquierdo */
    movz x10, PIEL1, lsl 16
    movk x10, PIEL2, lsl 00

    mov x1, 167
    mov x2, 260
    mov x3, 86
    mov x4, 6
    bl drawRectangle

    mov x1, 169
    mov x2, 266
    mov x3, 84
    mov x4, 8
    bl drawRectangle

    mov x1, 172
    mov x2, 274
    mov x3, 76
    mov x4, 5
    bl drawRectangle

    mov x1, 174
    mov x2, 279
    mov x3, 74
    mov x4, 5
    bl drawRectangle

    mov x1, 177
    mov x2, 284
    mov x3, 65
    mov x4, 3
    bl drawRectangle

    mov x1, 180
    mov x2, 287
    mov x3, 62
    mov x4, 2
    bl drawRectangle

    mov x1, 182
    mov x2, 289
    mov x3, 50
    mov x4, 3
    bl drawRectangle

    mov x1, 182
    mov x2, 289
    mov x3, 50
    mov x4, 3
    bl drawRectangle

    mov x1, 185
    mov x2, 292
    mov x3, 47
    mov x4, 3
    bl drawRectangle

    movz x10, AZUL_LUPA, lsl 00

    mov x1, 180
    mov x2, 216
    mov x3, 62
    mov x4, 4
    bl drawRectangle

    mov x1, 177
    mov x2, 220
    mov x3, 76
    mov x4, 3
    bl drawRectangle

    mov x1, 175
    mov x2, 223
    mov x3, 81
    mov x4, 28
    bl drawRectangle

    movz x10, PIEL_SOMBRA1, lsl 16
    movk x10, PIEL_SOMBRA2, lsl 00

    mov x1, 169
    mov x2, 230
    mov x3, 16
    mov x4, 4
    bl drawRectangle

    mov x1, 167
    mov x2, 234
    mov x3, 18
    mov x4, 2
    bl drawRectangle

    mov x1, 167
    mov x2, 236
    mov x3, 23
    mov x4, 6
    bl drawRectangle

    mov x1, 167
    mov x2, 242
    mov x3, 37
    mov x4, 6
    bl drawRectangle

    mov x1, 167
    mov x2, 248
    mov x3, 50
    mov x4, 6
    bl drawRectangle

    mov x1, 175
    mov x2, 254
    mov x3, 50
    mov x4, 6
    bl drawRectangle    //1

    mov x1, 180
    mov x2, 257
    mov x3, 34
    mov x4, 6
    bl drawRectangle

    movz x10, AZUL_GORRO1, lsl 16
    movk x10, AZUL_GORRO2, lsl 00

    mov x1, 172
    mov x2, 224
    mov x3, 6
    mov x4, 6
    bl drawRectangle

    mov x1, 178
    mov x2, 230
    mov x3, 13
    mov x4, 6
    mov x5, 4
    bl drawDiagonalInfDer

    mov x1, 230
    mov x2, 250
    mov x3, 8
    mov x4, 4
    bl drawRectangle

    ldr x30, [sp]
    add sp, sp, 8
br x30

.global parpadeo
parpadeo:
    sub sp, sp, 8
    str x30, [sp]
/* Párpado Derecho */
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00

    mov x1, 110
    mov x2, 248
    mov x3, 2
    mov x4, 6
    bl drawRectangle 

    mov x1, 112
    mov x2, 250
    mov x3, 2
    mov x4, 6
    bl drawRectangle

    mov x1, 114
    mov x2, 252
    mov x3, 4
    mov x4, 6
    bl drawRectangle

    mov x1, 118
    mov x2, 254
    mov x3, 2
    mov x4, 6
    bl drawRectangle

    mov x1, 120
    mov x2, 256
    mov x3, 13
    mov x4, 4
    bl drawRectangle

    mov x1, 133
    mov x2, 254
    mov x3, 2
    mov x4, 6
    bl drawRectangle

    mov x1, 135
    mov x2, 254
    mov x3, 4
    mov x4, 4
    bl drawRectangle

    mov x1, 138
    mov x2, 252
    mov x3, 3
    mov x4, 4
    bl drawRectangle

/* Párpado Izquierdo */
    movz x10, AZUL_OJO1, lsl 16
    movk x10, AZUL_OJO2, lsl 00

    mov x1, 167
    mov x2, 254
    mov x3, 10
    mov x4, 6
    bl drawRectangle    //1

    mov x1, 172
    mov x2, 257
    mov x3, 10
    mov x4, 6
    bl drawRectangle    //2

    mov x1, 177
    mov x2, 260
    mov x3, 10
    mov x4, 6
    bl drawRectangle    //3

    mov x1, 182
    mov x2, 263
    mov x3, 38
    mov x4, 6
    bl drawRectangle    //largo

    mov x1, 213
    mov x2, 260
    mov x3, 12
    mov x4, 6
    bl drawRectangle    //3

    mov x1, 219
    mov x2, 257
    mov x3, 12
    mov x4, 6
    bl drawRectangle    //2

    mov x1, 225
    mov x2, 254
    mov x3, 12
    mov x4, 6
    bl drawRectangle    //1

    mov x1, 234
    mov x2, 251
    mov x3, 12
    mov x4, 6
    bl drawRectangle

    mov x1, 240
    mov x2, 248
    mov x3, 12
    mov x4, 6
    bl drawRectangle

    mov x1, 246
    mov x2, 245
    mov x3, 12
    mov x4, 6
    bl drawRectangle

    mov x1, 251
    mov x2, 240
    mov x3, 12
    mov x4, 8
    bl drawRectangle

    mov x1, 255
    mov x2, 237
    mov x3, 8
    mov x4, 5
    bl drawRectangle

    ldr x30, [sp]
    add sp, sp, 8
br x30

.global pintarOjoCompleto
pintarOjoCompleto:
    sub sp, sp, 8
    str x30, [sp]

    movz x10, CELESTE_OJO, lsl 16
    movk x10, CELESTE_OJO2, lsl 00
    mov x1, 116
    mov x2, 240
    mov x3, 27
    mov x4, 3
    bl drawRectangle
    mov x1, 110
    mov x2, 243
    mov x3, 33
    mov x4, 3
    bl drawRectangle
    mov x1, 110
    mov x2, 246
    mov x3, 12
    mov x4, 3
    bl drawRectangle
    mov x1, 110
    mov x2, 249
    mov x3, 3
    mov x4, 5
    bl drawRectangle
    movz x10, BLANCO1, lsl 16
    movk x10, BLANCO2, lsl 00
    mov x1, 112
    mov x2, 249
    mov x3, 37
    mov x4, 9
    bl drawRectangle
    mov x1, 116
    mov x2, 258
    mov x3, 33
    mov x4, 6
    bl drawRectangle
    mov x1, 119
    mov x2, 261
    mov x3, 30
    mov x4, 3
    bl drawRectangle
    mov x1, 122
    mov x2, 264
    mov x3, 27
    mov x4, 3
    bl drawRectangle
    mov x1, 125
    mov x2, 267
    mov x3, 21
    mov x4, 6
    bl drawRectangle

    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 110
    mov x2, 240
    mov x3, 6
    mov x4, 3
    bl drawRectangle
    mov x1, 110
    mov x2, 237
    mov x3, 33
    mov x4, 3
    bl drawRectangle

    mov x1, 112
    mov x2, 235
    mov x3, 27
    mov x4, 3
    bl drawRectangle

    mov x1, 122
    mov x2, 237
    bl drawOjoDerecho

    ldr x30, [sp]
    add sp, sp, 8
br x30
