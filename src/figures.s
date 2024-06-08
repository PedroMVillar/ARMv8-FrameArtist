.include "data.s"

/*----------------------------ARCHIVO FIGURES.S--------------------------------*/
	/* En este archivo se ubican las formulas que permiten dibujar diversas
    formas geometricas.
    */

.global drawRectangle
drawRectangle:
    /* 
    Dibuja un rectángulo en las coordenadas X,Y ingresadas,
    el mismo tendrá (x3) de Ancho y (x4) de Alto.
    La fórmula requiere los valores de los registros X1, X2, X3 y X4.
    Usa como registros temporales X11 y X12 (sobreescribe sus datos)
    */
    sub sp, sp, 8   // mueve en 8 el puntero 'sp'
	str x30, [sp]   // guarda la dirección de 'ret' en 'sp-8'

    rows: //x5 = x20 +  4*[X + (Y*640)]
        mov x11, SCREEN_WIDTH   	 // x11 -> 640
        mul x11, x2, x11   		     // x11 -> Y * 640
        add x11, x11, x1   		     // x11 -> X + ( Y * 640 )
        lsl x11, x11, 2   			 // x11 -> 4 + ( X + ( Y * 640 ) )
        add x11, x11, x20   		 // posición del pixel
        mov x12, x3   				 // x12 -> largo del rectángulo
    columns:
        stur w10, [x11]   				 // pinta el pixel inicial
        add x11, x11, 4   			     // se mueve al pixel siguiente
        sub x12, x12, 1   			     // resta 1 al largo temporal del rectangulo
        cbnz x12, columns                // verifica cuando el largo temporal llegue a 0 
        add x2, x2, 1   			     // suma 1 al dato de las filas
        sub x4, x4, 1   				 // resta 1 al alto del rectangulo
        cbnz x4, rows              		 // verifica cuando el alto llegue a 0 (termina la fila)

	ldr x30, [sp]   // carga la dirección de 'ret' desde 'sp-8
	add sp, sp, 8   // regresa en 8 el puntero 'sp'
    br x30

.global drawCircle
drawCircle:
    /* 
    Dibuja un círculo con centro en las coordenadas X,Y ingresadas,
    el mismo tendrá (x3) de radio y pintará todos los puntos internos.
    La fórmula requiere los valores de los registros X1, X2 y X3.
    Usa como registros temporales X11, X12, X13, X14 y X15 (sobreescribe sus datos)
    */
    sub sp, sp, 8   // mueve en 8 el puntero 'sp'
	str x30, [sp]   // guarda la dirección de 'ret' en 'sp-8'

    // Calcula la posicion de la esquina superior izquierda
    sub x11, x2, x3                 // x11 = Y-r
    sub x12, x1, x3                 // x12 = X-r
    // Calcula la posicion de la esquina inferior derecha
    add x13, x2, x3                 // x13 = Y+r
    add x14, x1, x3                 // x14 = X+r
    c_rows:   	                // x0 = x20 +  4*[X + (Y*640)]
        sub x12, x1, x3
        mov x6, SCREEN_WIDTH
        mul x6, x6, x11
        add x6, x6, x12
        lsl x6, x6, 2
        add x0, x20, x6   	        // posicion inicial del puntero
    c_draw_row:   	            // IF (i-y)^2 + (j-x)^2 <= R^2     THEN    c_pixel(j,i)
        sub x7, x11, x2   	        // x7 = i - Y
        mul x7, x7, x7   	        // x7 = (i - Y) ^ 2
        sub x15, x12, x1            // x15 = j - X
        mul x15, x15, x15           // x15 = (j-x) ^ 2
        add x7, x7, x15   	        // x7 = (i - Y) ^ 2 + (j - X) ^ 2
        mul x9, x3, x3   	        // x9 = R ^ 2
        cmp x12, x14
        b.gt c_next_row
        cmp x7, x9
        b.gt c_pixel
        stur w10, [x0]   	        // pinta el pixel
    c_pixel:
        add x12, x12, 1   	        // x12 = j + 1   	 
        add x0, x0, 4   	        // pasa al siguiente pixel
        b c_draw_row
    c_next_row:
        add x11, x11, 1
        cmp x11, x13
        b.le c_rows

	ldr x30, [sp]   // carga la dirección de 'ret' desde 'sp-8
	add sp, sp, 8   // regresa en 8 el puntero 'sp'
br x30

.global drawCuatroPuntos
drawCuatroPuntos:
    /*
    Dibuja cuatro puntos de X3 de ancho y alto para reducir la repetición del código.
    Las coordenadas X,Y ingresadas deben corresponder a la esquina superior izquierda.
    La fórmula requiere los valores de los registros X1, X2, X3
    Usa los valores de X3 para llamar a drawRectangle.
    Usa como registros temporales X13, X14, X15, X16, X17, X18 y X19 (sobreescribe sus datos).
                    X X
                      
                    X X
    */
    sub sp, sp, 8   
    str x30, [sp]  

    /* Guarda los valores iniciales */
    mov x13, x1
    mov x14, x2
    mov x15, x3
    /* Replica x3 en x4 para hacer un cuadrado */
    mov x4, x3
    /* Dibuja el punto SupIzq */
    bl drawRectangle

    /* Restaura los valores modificado en drawRectangle */
    mov x2, x14
    mov x4, x15
    add x16, x1, x15
    add x18, x16, x15
    mov x1, x18
    /* Dibuja el punto SupDer */
    bl drawRectangle

    mov x1, x13              
    mov x2, x14
    mov x4, x15
    add x17, x2, x15
    add x19, x17, x15
    mov x2, x19
    /* Dibuja el punto InfIzq */
    bl drawRectangle

    mov x1, x18              
    mov x2, x19
    mov x4, x15
    /* Dibuja el punto InfDer */
    bl drawRectangle

    ldr x30, [sp]
    add sp, sp, 8   
br x30

.global drawCincoPuntos
drawCincoPuntos:
    /*
    Dibuja cinco puntos de X3 de ancho y alto para reducir la repetición del código.
    Las coordenadas X,Y ingresadas deben corresponder a la esquina superior izquierda.
    La fórmula requiere los valores de los registros X1, X2, X3
    Usa los valores de X3 para llamar a drawRectangle.
    Usa como registros temporales X13, X14, X15, X16, X17, X18 y X19 (sobreescribe sus datos).
                    X X
                     X 
                    X X
    */
    sub sp, sp, 8   
    str x30, [sp]  

    /* Guarda los valores iniciales */
    mov x13, x1
    mov x14, x2
    mov x15, x3
    /* Replica x3 en x4 para hacer un cuadrado */
    mov x4, x3
    /* Dibuja el punto SupIzq */
    bl drawRectangle

    /* Restaura los valores modificado en drawRectangle */
    mov x2, x14
    mov x4, x15
    add x16, x1, x15
    add x18, x16, x15
    mov x1, x18
    /* Dibuja el punto SupDer */
    bl drawRectangle

    mov x1, x13              
    mov x2, x14
    mov x4, x15
    add x17, x2, x15
    add x19, x17, x15
    mov x2, x19
    /* Dibuja el punto InfIzq */
    bl drawRectangle

    mov x1, x18              
    mov x2, x19
    mov x4, x15
    /* Dibuja el punto InfDer */
    bl drawRectangle

    mov x1, x16              
    mov x2, x17
    mov x4, x15
    /* Dibuja el punto Central */    
    bl drawRectangle

    ldr x30, [sp]
    add sp, sp, 8   
br x30

.global drawCross
drawCross:
    /*
    Dibuja cinco puntos en cruz de X3 de ancho y alto para reducir la repetición del código.
    Las coordenadas X,Y ingresadas deben corresponder a la esquina superior izquierda (vacia).
    La fórmula requiere los valores de los registros X1, X2, X3
    Usa los valores de X3 para llamar a drawRectangle.
    Usa como registros temporales X13, X14, X15, X16 y X17 (sobreescribe sus datos).
                     X
                    XXX 
                     X
    */
    sub sp, sp, 8
    str x30, [sp]

    /* Guarda los valores iniciales */
    mov x13, x1
    mov x14, x2
    mov x15, x3
    /* Replica x3 en x4 para hacer un cuadrado */
    mov x4, x3
    /* Dibuja el punto Sup */
    add x16, x1, x15
    mov x1, x16
    bl drawRectangle

    /* Restaura los valores modificado en drawRectangle */
    mov x1, x13
    mov x2, x14
    mov x4, x15
    add x17, x2, x15
    mov x2, x17
    /* Dibuja el punto Izq */
    bl drawRectangle

    mov x1, x16              
    mov x2, x17
    mov x4, x15
    /* Dibuja el punto Central */
    bl drawRectangle

    add x1, x16, x15 
    mov x2, x17
    mov x4, x15    
    /* Dibuja el punto Der */
    bl drawRectangle

    mov x1, x16              
    add x2, x17, x15
    mov x4, x15
    /* Dibuja el punto Inf */    
    bl drawRectangle

    ldr x30, [sp]
    add sp, sp, 8   
br x30

.global drawDiagonalInfDer
drawDiagonalInfDer:
    /* 
    Dibuja una diagonal con extremo superior izquierdo en las coordenadas X,Y ingresadas,
    Cada eslabon tendrá X3 de ancho y X4 de alto.
    Se repetirá X5 veces.
    La fórmula requiere los valores de los registros X1, X2, X3, X4 y X5.
    Usa como registros temporales X13, X14, X15, X16 y X17 (sobreescribe sus datos)
    */
    sub sp, sp, 8
	str x30, [sp]

        /* Guarda los valores en registros temporales */
        mov x13, x1
        mov x14, x2
        mov x15, x3
        mov x16, x4
        mov x17, x5

    loopDiagInfDer:
        /* Cada ciclo resta 1 al numero de repeticiones */
        sub x17, x17, 1
        bl drawRectangle

        /* Sumo valores a X13 y X14 para ir avanzando la diagonal */
        add x13, x13, x15
        add x14, x14, x16
        /* Reestablece los valores para el proximo ciclo si lo hay */
        mov x1, x13
        mov x2, x14
        mov x3, x15
        mov x4, x16
        /* Verifica cuando se realicen las repeticiones deseadas */
        cbnz x17, loopDiagInfDer

	ldr x30, [sp]
	add sp, sp, 8
br x30

.global drawDiagonalSupDer
drawDiagonalSupDer:
    /* 
    Dibuja una diagonal con extremo inferior izquierdo en las coordenadas X,Y ingresadas,
    Cada eslabon tendrá X3 de ancho y X4 de alto.
    Se repetirá X5 veces.
    La fórmula requiere los valores de los registros X1, X2, X3, X4 y X5.
    Usa como registros temporales X13, X14, X15, X16 y X17 (sobreescribe sus datos)
    */
    sub sp, sp, 8
	str x30, [sp]

        /* Guarda los valores en registros temporales */
        mov x13, x1
        mov x14, x2
        mov x15, x3
        mov x16, x4
        mov x17, x5

    loopDiagSupDer:
        /* Cada ciclo resta 1 al numero de repeticiones */
        sub x17, x17, 1
        bl drawRectangle

        /* Sumo valores a X13 y X14 para ir avanzando la diagonal */
        add x13, x13, x15
        sub x14, x14, x16
        /* Reestablece los valores para el proximo ciclo si lo hay */
        mov x1, x13
        mov x2, x14
        mov x3, x15
        mov x4, x16
        /* Verifica cuando se realicen las repeticiones deseadas */
        cbnz x17, loopDiagSupDer

	ldr x30, [sp]
	add sp, sp, 8
br x30
