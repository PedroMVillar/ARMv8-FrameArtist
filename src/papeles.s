.include "data.s"

/*----------------------------ARCHIVO PAPELES.S--------------------------------*/
	/* Dibuja los 4 papeles que estan colgados en la pared del fondo
    */

.globl makePapeles
makePapeles:
    sub sp, sp, 8   
    str x30, [sp] 
    /* [papel con números] */
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 146               
    mov x2, 12
    mov x3, 39                  
    mov x4, 50
    bl drawRectangle
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 149               
    mov x2, 8
    mov x3, 39                  
    mov x4, 50
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 152               
    mov x2, 5
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6                
    mov x2, 5
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6                
    mov x2, 5
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6                
    mov x2, 5
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6                
    mov x2, 5
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6                
    mov x2, 5
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    // texto
    movz x10, AZUL_GORRO1, lsl 16
    movk x10, AZUL_GORRO2, lsl 00
    mov x1, 152               
    mov x2, 17
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 155               
    mov x2, 14
    mov x3, 3                  
    mov x4, 15
    bl drawRectangle
    mov x1, 161                
    mov x2, 26
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 167                
    mov x2, 26
    mov x3, 12                  
    mov x4, 3
    bl drawRectangle
    mov x1, 167                
    mov x2, 23
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 170                
    mov x2, 20
    mov x3, 6                  
    mov x4, 3
    bl drawRectangle
    mov x1, 176                
    mov x2, 17
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 167                
    mov x2, 14
    mov x3, 9                  
    mov x4, 3
    bl drawRectangle
    mov x1, 152               
    mov x2, 38
    mov x3, 3                
    mov x4, 3
    bl drawRectangle
    mov x1, 155               
    mov x2, 35
    mov x3, 6                  
    mov x4, 3
    bl drawRectangle
    mov x1, 161               
    mov x2, 38
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 158               
    mov x2, 41
    mov x3, 3                
    mov x4, 3
    bl drawRectangle
    mov x1, 161               
    mov x2, 44
    mov x3, 3                 
    mov x4, 3
    bl drawRectangle
    mov x1, 155               
    mov x2, 47
    mov x3, 6                  
    mov x4, 3
    bl drawRectangle
    mov x1, 152               
    mov x2, 44
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 167               
    mov x2, 47
    mov x3, 3                 
    mov x4, 3
    bl drawRectangle
    mov x1, 173               
    mov x2, 35
    mov x3, 12                  
    mov x4, 3
    bl drawRectangle
    mov x1, 176               
    mov x2, 41
    mov x3, 6                 
    mov x4, 3
    bl drawRectangle
    mov x1, 182               
    mov x2, 44
    mov x3, 3              
    mov x4, 3
    bl drawRectangle
    mov x1, 173               
    mov x2, 47
    mov x3, 9                
    mov x4, 3
    bl drawRectangle
    mov x1, 173               
    mov x2, 38
    mov x3, 3                
    mov x4, 3
    bl drawRectangle
    /* [papel con lambda] */
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 200               
    mov x2, 18
    mov x3, 39                 
    mov x4, 50
    bl drawRectangle
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 203               
    mov x2, 15
    mov x3, 39                
    mov x4, 50
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 206               
    mov x2, 11
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6                
    mov x2, 11
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6                
    mov x2, 11
    mov x3, 4                 
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6                
    mov x2, 11
    mov x3, 4                 
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6                
    mov x2, 11
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6                
    mov x2, 11
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    // texto
    movz x10, AZUL_GORRO1, lsl 16
    movk x10, AZUL_GORRO2, lsl 00
    mov x1, 206               
    mov x2, 27
    mov x3, 3                  
    mov x4, 9
    bl drawRectangle
    mov x1, 209               
    mov x2, 24
    mov x3, 3                  
    mov x4, 9
    bl drawRectangle
    mov x1, 209               
    mov x2, 24
    mov x3, 12                  
    mov x4, 6
    bl drawRectangle
    mov x1, 218               
    mov x2, 27
    mov x3, 6                  
    mov x4, 9
    bl drawRectangle
    mov x1, 221               
    mov x2, 30
    mov x3, 6                  
    mov x4, 9
    bl drawRectangle
    mov x1, 217               
    mov x2, 39
    mov x3, 12                  
    mov x4, 9
    bl drawRectangle
    mov x1, 214               
    mov x2, 42
    mov x3, 3                 
    mov x4, 6
    bl drawRectangle
    mov x1, 211               
    mov x2, 45
    mov x3, 6                
    mov x4, 6
    bl drawRectangle
    mov x1, 208               
    mov x2, 48
    mov x3, 6                  
    mov x4, 6
    bl drawRectangle
    mov x1, 205               
    mov x2, 51
    mov x3, 6                 
    mov x4, 6
    bl drawRectangle
    mov x1, 225               
    mov x2, 45
    mov x3, 6                  
    mov x4, 9
    bl drawRectangle
    mov x1, 228               
    mov x2, 48
    mov x3, 3                 
    mov x4, 9
    bl drawRectangle
    mov x1, 231               
    mov x2, 51
    mov x3, 6                
    mov x4, 6
    bl drawRectangle
    /* [papel con x] */
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 253              
    mov x2, 45
    mov x3, 48                  
    mov x4, 40
    bl drawRectangle
	movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 255              
    mov x2, 85
    mov x3, 48                 
    mov x4, 19
    bl drawRectangle
    mov x1, 258              
    mov x2, 104
    mov x3, 45                 
    mov x4, 3
    bl drawRectangle
    mov x1, 261              
    mov x2, 107
    mov x3, 42                 
    mov x4, 3
    bl drawRectangle
	movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 256              
    mov x2, 42
    mov x3, 48                  
    mov x4, 40
    bl drawRectangle
	movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 258              
    mov x2, 82
    mov x3, 48                  
    mov x4, 19
    bl drawRectangle
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 261              
    mov x2, 101
    mov x3, 45               
    mov x4, 3
    bl drawRectangle
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 264              
    mov x2, 104
    mov x3, 42                  
    mov x4, 3
    bl drawRectangle
    movz x10, ESQUINA_HOJA1, lsl 16
    movk x10, ESQUINA_HOJA2, lsl 00
    mov x1, 258              
    mov x2, 98
    mov x3, 6                  
    mov x4, 3
    bl drawRectangle
    mov x1, 261              
    mov x2, 101
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 264              
    mov x2, 98
    mov x3, 3                  
    mov x4, 9
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 259              
    mov x2, 48
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 262              
    mov x2, 45
    mov x3, 5                  
    mov x4, 9
    bl drawRectangle
    movz x10, ESQUINA_HOJA1, lsl 16
    movk x10, ESQUINA_HOJA2, lsl 00
    mov x1, 259              
    mov x2, 51
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 292              
    mov x2, 48
    mov x3, 3                 
    mov x4, 3
    bl drawRectangle
    mov x1, 295              
    mov x2, 45
    mov x3, 5                  
    mov x4, 9
    bl drawRectangle
    movz x10, ESQUINA_HOJA1, lsl 16
    movk x10, ESQUINA_HOJA2, lsl 00
    mov x1, 292              
    mov x2, 51
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    // texto
    movz x10, AZUL_GORRO1, lsl 16
    movk x10, AZUL_GORRO2, lsl 00
    mov x1, 272              
    mov x2, 60
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 275              
    mov x2, 63
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 278              
    mov x2, 60
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 278              
    mov x2, 66
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 273              
    mov x2, 66
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 284              
    mov x2, 63
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 287              
    mov x2, 60
    mov x3, 3                  
    mov x4, 9
    bl drawRectangle
    mov x1, 272              
    mov x2, 72
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 275              
    mov x2, 75
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 278              
    mov x2, 72
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 278              
    mov x2, 78
    mov x3, 3                 
    mov x4, 3
    bl drawRectangle
    mov x1, 273              
    mov x2, 78
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 284              
    mov x2, 72
    mov x3, 6                  
    mov x4, 3
    bl drawRectangle
    mov x1, 284              
    mov x2, 72
    mov x3, 3                  
    mov x4, 9
    bl drawRectangle
    mov x1, 284              
    mov x2, 78
    mov x3, 6                  
    mov x4, 3
    bl drawRectangle
    mov x1, 275              
    mov x2, 87
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 278              
    mov x2, 90
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 281              
    mov x2, 87
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 281              
    mov x2, 93
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 276              
    mov x2, 93
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 287              
    mov x2, 87
    mov x3, 3                  
    mov x4, 3
    bl drawRectangle
    mov x1, 290              
    mov x2, 90
    mov x3, 3                  
    mov x4, 6
    bl drawRectangle
    /* [papel greencard] */
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 20              
    mov x2, 130
    mov x3, 100                  
    mov x4, 140
    bl drawRectangle
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 23              
    mov x2, 127
    mov x3, 100                  
    mov x4, 140
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 26              
    mov x2, 124
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6  
    mov x2, 124
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6  
    mov x2, 124
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6  
    mov x2, 124
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6  
    mov x2, 124
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6  
    mov x2, 124
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6  
    mov x2, 124
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6  
    mov x2, 124
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6  
    mov x2, 124
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6  
    mov x2, 124
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6  
    mov x2, 124
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6  
    mov x2, 124
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6  
    mov x2, 124
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6  
    mov x2, 124
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6  
    mov x2, 124
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6  
    mov x2, 124
    mov x3, 4                  
    mov x4, 7
    bl drawRectangle
    movz x10, AZUL_GORRO1, lsl 16
    movk x10, AZUL_GORRO2, lsl 00
    mov x1, 38
    mov x2, 132
    mov x3, 2                  
    mov x4, 5
    bl drawRectangle
    mov x1, 38
    add x2, x2, 1
    mov x3, 2                  
    mov x4, 5
    bl drawRectangle
    mov x1, 38
    add x2, x2, 1
    mov x3, 2                  
    mov x4, 5
    bl drawRectangle
    mov x1, 38
    add x2, x2, 1
    mov x3, 2                  
    mov x4, 5
    bl drawRectangle
    mov x1, 38
    add x2, x2, 1
    mov x3, 2                  
    mov x4, 5
    bl drawRectangle
    mov x1, 38
    add x2, x2, 1
    mov x3, 2                  
    mov x4, 5
    bl drawRectangle
    mov x1, 38
    add x2, x2, 1
    mov x3, 2                  
    mov x4, 5
    bl drawRectangle
    mov x1, 38
    add x2, x2, 1
    mov x3, 2                  
    mov x4, 5
    bl drawRectangle
    mov x1, 38
    add x2, x2, 1
    mov x3, 2                  
    mov x4, 5
    bl drawRectangle
    mov x1, 38
    add x2, x2, 1
    mov x3, 2                  
    mov x4, 5
    bl drawRectangle
    mov x1, 38
    add x2, x2, 1
    mov x3, 2                  
    mov x4, 5
    bl drawRectangle
    mov x1, 38
    add x2, x2, 1
    mov x3, 2                  
    mov x4, 5
    bl drawRectangle
    mov x1, 38
    add x2, x2, 1
    mov x3, 2                  
    mov x4, 5
    bl drawRectangle
    mov x1, 38
    add x2, x2, 1
    mov x3, 2                  
    mov x4, 5
    bl drawRectangle
    mov x1, 38
    add x2, x2, 1
    mov x3, 2                  
    mov x4, 5
    bl drawRectangle
    mov x1, 38
    add x2, x2, 1
    mov x3, 2                  
    mov x4, 5
    bl drawRectangle
    mov x1, 38
    add x2, x2, 1
    mov x3, 2                  
    mov x4, 5
    bl drawRectangle
    mov x1, 38
    add x2, x2, 1
    mov x3, 2                  
    mov x4, 5
    bl drawRectangle
    mov x1, 38
    add x2, x2, 1
    mov x3, 2                  
    mov x4, 5
    bl drawRectangle
    mov x1, 38
    add x2, x2, 1
    mov x3, 2                  
    mov x4, 5
    bl drawRectangle
    mov x1, 38
    add x2, x2, 1
    mov x3, 2                  
    mov x4, 5
    bl drawRectangle
    mov x1, 38
    add x2, x2, 1
    mov x3, 2                  
    mov x4, 5
    bl drawRectangle
    mov x1, 40
    mov x2, 159
    mov x3, 45                  
    mov x4, 2
    bl drawRectangle
    // texto 
    // L //
    mov x1, 44
    mov x2, 145
    mov x3, 2                  
    mov x4, 10
    bl drawRectangle
    mov x1, 44
    mov x2, 155
    mov x3, 6                  
    mov x4, 2
    bl drawRectangle
    mov x1, 52
    mov x2, 145
    mov x3, 2                  
    mov x4, 10
    bl drawRectangle
    // E // 
    mov x1, 52
    mov x2, 145
    mov x3, 6                  
    mov x4, 2
    bl drawRectangle
    mov x1, 52
    mov x2, 155
    mov x3, 6                  
    mov x4, 2
    bl drawRectangle
    mov x1, 52
    mov x2, 149
    mov x3, 4                  
    mov x4, 2
    bl drawRectangle
    // G //
    mov x1, 60
    mov x2, 147
    mov x3, 2                  
    mov x4, 8
    bl drawRectangle
    mov x1, 62
    mov x2, 145
    mov x3, 6                  
    mov x4, 2
    bl drawRectangle
    mov x1, 62
    mov x2, 155
    mov x3, 6                  
    mov x4, 2
    bl drawRectangle
    mov x1, 66
    mov x2, 151
    mov x3, 2                  
    mov x4, 6
    bl drawRectangle
    mov x1, 64
    mov x2, 151
    mov x3, 4                  
    mov x4, 2
    bl drawRectangle
    // v //
    mov x1, 70
    mov x2, 149
    mov x3, 2                  
    mov x4, 6
    bl drawRectangle
    mov x1, 74
    mov x2, 149
    mov x3, 2                  
    mov x4, 6
    bl drawRectangle
    mov x1, 72
    mov x2, 155
    mov x3, 2                  
    mov x4, 2
    bl drawRectangle
    // 8 //
    mov x1, 78
    mov x2, 149
    mov x3, 2                  
    mov x4, 2
    bl drawRectangle
    mov x1, 80
    mov x2, 147
    mov x3, 4                  
    mov x4, 2
    bl drawRectangle
    mov x1, 84
    mov x2, 149
    mov x3, 2                  
    mov x4, 2
    bl drawRectangle
    mov x1, 80
    mov x2, 151
    mov x3, 4                  
    mov x4, 2
    bl drawRectangle
    mov x1, 78
    mov x2, 153
    mov x3, 2                  
    mov x4, 2
    bl drawRectangle
    mov x1, 84
    mov x2, 153
    mov x3, 2                  
    mov x4, 2
    bl drawRectangle
    mov x1, 80
    mov x2, 155
    mov x3, 4                  
    mov x4, 2
    bl drawRectangle
    // lineas de texto //
    mov x1, 32
    mov x2, 165
    mov x3, 1                  
    mov x4, 30
    bl drawRectangle
    mov x1, 32
    mov x2, 204
    mov x3, 1                  
    mov x4, 30
    bl drawRectangle
    mov x1, 44
    mov x2, 165
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle
    mov x1, 44
    add x2, x2, 3
    mov x3, 70                  
    mov x4, 1
    bl drawRectangle

    ldr x30, [sp]   
    add sp, sp, 8   
br x30
