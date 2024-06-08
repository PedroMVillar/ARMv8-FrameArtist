# Lab Org. y Arq. de Computadoras

---
![Image](./def.png)

---

* Configuración de pantalla: `640x480` pixels, formato `ARGB` 32 bits.
* El registro `X0` contiene la dirección base del FrameBuffer (Pixel 1).
* El código de cada consigna debe ser escrito en el archivo _app.s_.
* El archivo _start.s_ contiene la inicialización del FrameBuffer **(NO EDITAR)**, al finalizar llama a _app.s_.
* El código de ejemplo pinta toda la pantalla un solo color.

## Estructura

* **[app.s](app.s)** Este archivo contiene a apliación. Todo el hardware ya está inicializado anteriormente.
* **[start.s](start.s)** Este archivo realiza la inicialización del hardware.
* **[Makefile](Makefile)** Archivo que describe como construir el software _(que ensamblador utilizar, que salida generar, etc)_.
* **[memmap](memmap)** Este archivo contiene la descripción de la distribución de la memoria del programa y donde colocar cada sección.
* **[background.s](background.s)** Este archivo contiene principalmente llamadas a funciones para formar el fondo de la imagen. Realiza llamadas de los siguientes archivos:
    * **[planta.s](planta.s)** Este archivo contiene la función para dibujar tanto la planta con sus efectos y reflejos.
    * **[tablero.s](tablero.s)** Este archivo contiene la función para dibujar el tablero con sus pantallas y efectos.
    * **[estantes.s](estantes.s)** Este archivo contiene la función para dibujar los estantes con todo lo que contienen.
    * **[cajacable.s](cajacable.s)** Este archivo contiene la funcion para dibujar el recorrido entero del cable junto con sus cajas de registro chiquitas y la principal con sus luces y efectos.
    * **[papeles.s](papeles.s)** Este archivo contiene la función para dibujar los 4 papeles completos.
    * **[ventilacion.s](ventilacion.s)** Este archivo contiene la función para dibujar la caja de ventilación.
* **[chica.s](chica.s)** Este archivo contiene la implementación entera de la figura de la chica con la lupa.
* **[figures.s](figures.s)** Este archivo contiene la función para dibujar las figuras cuadrados, circulos, cruces, etc.

* **README.md** este archivo.

## Funciones 

```assembly
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
```

```assembly
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
```

```assembly
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
```

```assembly
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
```

```assembly
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
```

```assembly
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
```

```assembly
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
```

## Uso

El archivo _Makefile_ contiene lo necesario para construir el proyecto.
Se pueden utilizar otros archivos **.s** si les resulta práctico para emprolijar el código y el Makefile los ensamblará.

**Para correr el proyecto ejecutar**

```bash
$ make runQEMU
```
Esto construirá el código y ejecutará qemu para su emulación.

Si qemu se queja con un error parecido a `qemu-system-aarch64: unsupported machine type`, prueben cambiar `raspi3` por `raspi3b` en la receta `runQEMU` del **Makefile** (línea 23 si no lo cambiaron).

**Para correr el gpio manager**

```bash
$ make runGPIOM
```

Ejecutar *luego* de haber corrido qemu.

## Como correr qemu y gcc usando Docker containers

Los containers son maquinas virtuales livianas que permiten correr procesos individuales como el qemu y gcc.

Para seguir esta guia primero tienen que instala docker y asegurarse que el usuario que vayan a usar tenga permiso para correr docker (ie dockergrp) o ser root

### Linux
 * Para construir el container hacer
```bash
docker build -t famaf/rpi-qemu .
```
 * Para arrancarlo
```bash
xhost +
cd rpi-asm-framebuffer
docker run -dt --name rpi-qemu --rm -v $(pwd):/local --privileged -e "DISPLAY=${DISPLAY:-:0.0}" -v /tmp/.X11-unix:/tmp/.X11-unix -v "$HOME/.Xauthority:/root/.Xauthority:rw" famaf/rpi-qemu
```
 * Para correr el emulador y el simulador de I/O
```bash
docker exec -d rpi-qemu make runQEMU
docker exec -it rpi-qemu make runGPIOM
```
 * Para terminar el container
```bash
docker kill rpi-qemu
```

### MacOS
En MacOS primero tienen que [instalar un X server](https://medium.com/@mreichelt/how-to-show-x11-windows-within-docker-on-mac-50759f4b65cb) (i.e. XQuartz)
 * Para construir el container hacer
```bash
docker build -t famaf/rpi-qemu .
```
 * Para arrancarlo
```bash
xhost +
cd rpi-asm-framebuffer
docker run -dt --name rpi-qemu --rm -v $(pwd):/local --privileged -e "DISPLAY=host.docker.internal:0" -v /tmp/.X11-unix:/tmp/.X11-unix -v "$HOME/.Xauthority:/root/.Xauthority:rw" famaf/rpi-qemu
```
 * Para correr el emulador y el simulador de I/O
```bash
docker exec -d rpi-qemu make runQEMU
docker exec -it rpi-qemu make runGPIOM
```
 * Para terminar el container
```bash
docker kill rpi-qemu
```
----------------------------------
### Otros comandos utiles
```bash
# Correr el container en modo interactivo
docker run -it --rm -v $(pwd):/local --privileged -e "DISPLAY=${DISPLAY:-:0.0}" -v /tmp/.X11-unix:/tmp/.X11-unix -v "$HOME/.Xauthority:/root/.Xauthority:rw" famaf/rpi-qemu
# Correr un shell en el container
docker exec -it rpi-qemu /bin/bash
```