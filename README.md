# ARMv8-FrameArtist

![image](/test/def.png)

---

## Project Overview

The project began with the simple goal of creating a static image. As development progressed, animations were added. The major challenge was to implement these animations without making them sequential, allowing multiple things to happen simultaneously. This was achieved by combining timers with certain movements and changes, forming a looping animation. This logic enabled effects such as:
- Water rippling
- A creature moving
- A girl blinking
- Lights flickering

## Features

- Pure assembly code: The entire project is written in assembly language.
- QEMU Emulation: The project is designed to be emulated in QEMU.
- Makefile: A Makefile is provided for easy building and emulation.
- Test folder: Contains both the video and the image demonstrating the project's capabilities.

## Usage

The _Makefile_ contains everything needed to build the project.
You can use other **.s** files if it helps to clean up the code, and the Makefile will assemble them.

**To run the project, execute**

```bash
$ make runQEMU
```
This will build the code and run QEMU for emulation.

If QEMU throws an error like qemu-system-aarch64: unsupported machine type, try changing raspi3 to raspi3b in the runQEMU recipe in the Makefile (line 23 if unchanged).

**To run the GPIO manager**

```bash	
$ make runGPIOM
```
Run *after* running QEMU.

### How to run QEMU and GCC using Docker containers
Containers are lightweight virtual machines that allow you to run individual processes like QEMU and GCC.

To follow this guide, you first need to install Docker and ensure that the user you are going to use has permission to run Docker (i.e., dockergrp) or is root.

Linux
- To build the container, run
```bash	
docker build -t famaf/rpi-qemu .
```
- To start it, run
```bash
xhost +
cd rpi-asm-framebuffer
docker run -dt --name rpi-qemu --rm -v $(pwd):/local --privileged -e "DISPLAY=${DISPLAY:-:0.0}" -v /tmp/.X11-unix:/tmp/.X11-unix -v "$HOME/.Xauthority:/root/.Xauthority:rw" famaf/rpi-qemu
```
- To run the emulator and the I/O simulator, run
```bash	
docker exec -d rpi-qemu make runQEMU
docker exec -it rpi-qemu make runGPIOM
```
- To stop the container, run
```bash
docker kill rpi-qemu
```

### MacOS
On MacOS, you first need to install an X server (i.e., XQuartz).

- To build the container, run
```bash
docker build -t famaf/rpi-qemu .
```	
- To start it, run
```bash
xhost +
cd rpi-asm-framebuffer
docker run -dt --name rpi-qemu --rm -v $(pwd):/local --privileged -e "DISPLAY=host.docker.internal:0" -v /tmp/.X11-unix:/tmp/.X11-unix -v "$HOME/.Xauthority:/root/.Xauthority:rw" famaf/rpi-qemu
```
- To run the emulator and the I/O simulator, run
```bash
docker exec -d rpi-qemu make runQEMU
docker exec -it rpi-qemu make runGPIOM
```
- To stop the container, run
```bash
docker kill rpi-qemu
```

### Other useful commands
```bash
# Run the container in interactive mode
docker run -it --rm -v $(pwd):/local --privileged -e "DISPLAY=${DISPLAY:-:0.0}" -v /tmp/.X11-unix:/tmp/.X11-unix -v "$HOME/.Xauthority:/root/.Xauthority:rw" famaf/rpi-qemu
# Run a shell in the container
docker exec -it rpi-qemu /bin/bash
```
## Folder Structure
- **src/:** Contains the assembly source code.
- **test/:** Contains a video and an image demonstrating the project's output.
- **Makefile:** Script to build and run the project.

## Authors

- [**Villar Pedro**](https://github.com/PedroMVillar)
- [**Grisetti Gustavo**](https://github.com/GustavoGrisetti)
- [**Testa Victoria**](https://github.com/v1sto)
