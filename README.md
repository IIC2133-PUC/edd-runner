# EDD-Runner

## Descripción

`edd-runner` es un programa para reemplazar el antiguo `edd-docker` que permite ejecutar los programas dentro de docker sin necesidad de la tediosa consola separada. Además entrega un ejecutable capaz de simplificar la actualización y almacenamiento de los programas.

## Requisitos

La imagen esta construida para funcionar dentro de Mac con arquitectura ARM64. Aunque esta planificado para nuevos releases en AMD64 y ARMV7.

- make
- docker

## Quickstart

La instalación se realiza clonando el repositorio y ejecutando el comando `make install` dentro de la carpeta del repositorio.

```bash
git clone https://github.com/IIC2133-PUC/edd-runner.git
make install
```

## Instalación y Desinstalación

Para instalar el programa se debe ejecutar el siguiente comando:
```bash
make install
```

Para desinstalar el programa se debe ejecutar el siguiente comando:

```bash
make uninstall
```

Para actualizar el programa se debe ejecutar el siguiente comando:

```bash
make update
```

## Uso

Para ejecutar el programa se debe ejecutar el siguiente comando:

```bash
edd-runner <programa> <argumentos>
```

## Contribuir y Soporte

Para contribuir a este script se debe clonar el repositorio y crear un pull request con los cambios. Para soporte contactar a [Carlos Paredes (CarloGauss33)](https://github.com/CarloGauss33)