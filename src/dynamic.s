	.include "data.s"
	.include "utils.s"

.global dynamic
dynamic:
    sub sp, sp, 8   
    str x30, [sp] 

    mov x21, 384    // x21 guardará información sobre la posicion X del bichito de luz
    mov x22, 363    // x22 guardará información sobre la posicion Y del bichito de luz

    mov x23, -1     // registro resta a X
    mov x24, 1      // registro resta a Y
    mov x25, 23     // registro contador para cada fase (se mueve 23 pixeles)
    mov x26, 0      // registro de fase del bichito
    mov x27, 1      // registro resultado (se puede liberar y reemplazar si hace falta)
    mov x28, 11     // diametro inicial del circulo externo (luz) del bichito (oscila entre 7 y 11)
    mov x29, -1     // el bichito empieza reduciendo en 1 su radio de luz (cambia entre -1 y 1)

    mov x8, 0      // registro contador para encendido/apagado rápido de las luces


    // cada vez que se reinicie 'dynamic', hay un pestañeo de la chica
    bl taparOjos
    bl parpadeo
	ldr x9, delay_normal
    bl delay
    // ------------------- //
    bl pintarOjoCompleto
    bl makeLupa
    // ------------------- //
    bl makeRayitasVerde
loopbichito:
    // el bichito empieza moviendose en diagonal, a la izquierda y abajo (por frame: X-1, Y+1)
    bl drawFondoFrasco
    bl drawBichitoDinamico

    add x21, x21, x23
    add x22, x22, x24
    sub x25, x25, 1

	ldr x9, delay_normal
    bl delay

    // cuando x8 (con x27 como auxiliar) llegue a 1, apaga las luces
    sub x27, x8, 2
    cbz x27, lucesOn
    // cuando x8 (con x27 como auxiliar) llegue a 3, apaga las luces
    sub x27, x8, 5
    cbz x27, lucesOff

sumar:
    // en cada loop suma 1 al contador de las luces parpadeantes
    add x8, x8, 1

    // repite 'loopbichito' hasta que x25 llegue a 0 (empieza cada fase en +23)
    cbnz x25, loopbichito

    // cuando x26 llegue a 2, pasa a la última fase (fase 2) del movimiento del bichito
    sub x27, x26, 2
    cbz x27, fase2

    // cuando x26 llegue a 1, pasa a la siguiente fase (fase 1) del movimiento del bichito
    sub x27, x26, 1
    cbz x27, fase1

    // la primera vez por loop, x26==0 por lo que ingresa a la fase 0 del movimiento del bichito
    cbz x26, fase0

    // repite el loop completo si terminaron todas las fases
    b dynamic

    ldr x30, [sp]   
    add sp, sp, 8   
br x30

fase0:
    // reinicia el contador x25, y el bichito se mueve en diagonal, a la izquierda y arriba (por frame: X-1, Y-1)
    mov x25, 23
    mov x24, -1
    // suma 1 a x26 para que entre en la siguiente fase
    add x26, x26, 1

    // en esta fase la chica mueve los ojos a la izquierda
	bl pintarOjoBlanco
    mov x1, 181
    mov x2, 226
	bl drawOjoIzquierdo

    mov x1, 119
    mov x2, 237
	bl drawOjoDerecho   

    bl makeRayita2

    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    
    bl drawDestelloON1

    movz x10, BRILLO_HOJA1, lsl 16
    movk x10, BRILLO_HOJA2, lsl 00
    
    bl drawDestelloON2

    

    b loopbichito

fase1:
    // reinicia el contador x25, y el bichito se mueve en diagonal, a la derecha y arriba (por frame: X+1, Y-1)
    mov x25, 23
    mov x23, 1
    // suma 1 a x26 para que entre en la siguiente fase
    add x26, x26, 1

    // en esta fase el gatito parpadea los ojos
    bl drawParpadeoGatito
	ldr x9, delay_normal
    bl delay
    bl drawOjosGatito

    bl makeRayita3

    b loopbichito

fase2:
    // reinicia el contador x25, y el bichito se mueve en diagonal, a la derecha y abajo (por frame: X+1, Y+1)
    mov x25, 23
    mov x24, 1
    // suma 1 a x26 para que entre en la siguiente fase
    add x26, x26, 1

    // en esta fase la chica mueve los ojos a la derecha
	bl pintarOjoBlanco
    mov x1, 186
    mov x2, 226
	bl drawOjoIzquierdo

    mov x1, 122
    mov x2, 237
	bl drawOjoDerecho 

    bl makeRayita4

    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    
    bl drawDestelloON2

    movz x10, BRILLO_HOJA1, lsl 16
    movk x10, BRILLO_HOJA2, lsl 00
    
    bl drawDestelloON1

    b loopbichito

lucesOff:
    // pinta de verde oscuro las luces para aparentar que estan apagadas
    cbz x8, lucesOn

    movz x10, VERDE_OSC1, lsl 16
    movk x10, VERDE_OSC2, lsl 00

    bl makeLucesAmarillasTablero

    movz x10, ROJO_OSC1, lsl 16
    movk x10, ROJO_OSC2, lsl 00

    bl makeLucesCuadradasTablero

    movz x10, ROJO_OSC1, lsl 16
    movk x10, ROJO_OSC2, lsl 00

    bl makeLuzCruz

    // reinicia el contador
    mov x8, 0

    b sumar

lucesOn:
    // pinta de blanco brillante las luces para aparentar que estan encendidas
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00

    bl makeLucesAmarillasTablero

    movz x10, ROJO_CLA1, lsl 16
    movk x10, ROJO_CLA2, lsl 00

    bl makeLucesCuadradasTablero

    movz x10, ROJO_CLA1, lsl 16
    movk x10, ROJO_CLA1, lsl 00
    
    bl makeLuzCruz

    b sumar
