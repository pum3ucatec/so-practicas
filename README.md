# Examen Parcial Roberto Moreno
# Instalación de Sistema Operativo Linux

## Pasos para instalar Linux

### Requisitos Mínimos
- **RAM**: 2 GB
- **Procesador**: Doble núcleo (2 GHz)
- **Espacio en Disco**: 25 GB libres
- **Medio de Instalación**: DVD o USB
- **Conexión a Internet**: Recomendada para descargar software de terceros y actualizaciones.

> **Nota**: Para equipos con menos recursos, considera usar distribuciones ligeras como Lubuntu o Xubuntu.

### 1. Descargar la Imagen de Ubuntu
- Visita [ubuntu.com](https://ubuntu.com/) y selecciona la versión compatible para el equipo.
- Descarga la versión de escritorio de 64 bits.

### 2. Preparar el Medio de Instalación
- **USB**: Crea una unidad USB booteable usando herramientas como [Rufus](https://rufus.ie/) o [Etcher](https://etcher.balena.io/).

### 3. Configurar el Arranque del Equipo
- Ingresamos a la **BIOS** y configuramos el arranque desde el medio de instalación (USB).

### 4. Pasos Durante la Instalación
1. Selecciona el idioma y el tipo de instalación:
   - **Normal**: Incluye software por defecto.
   - **Mínima**: Incluye solo los programas esenciales.
2. Configura las particiones:
   - **Raíz (/)**: Mínimo 20 GB recomendados.
   - **Swap**: Igual al tamaño de la RAM si es ≥ 2 GB; el doble si es menor.
   - **Home (/home)**: Espacio restante del disco.

### 5. Finalizar la Instalación
- Define tu ubicación, nombre de usuario, equipo y contraseña.
- Inicia la instalación y espera a que se complete.

## Notas Adicionales
- Es posible instalar Ubuntu junto con otro sistema operativo, como Windows, configurando las particiones adecuadamente.
- Para instalar junto a Windows, hay que asegurar el reservar espacio durante o después de la instalación de Windows.
