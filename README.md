# Firebase Studio

This is a NextJS starter in Firebase Studio.

To get started, take a look at src/app/page.tsx.

## Cómo ejecutar este proyecto localmente

Sigue estos pasos para configurar y ejecutar el proyecto en tu propio computador después de descargarlo desde GitHub.

### Prerrequisitos

Asegúrate de tener instalado [Node.js](https://nodejs.org/) en tu sistema. Se recomienda la versión 20 o superior. Puedes verificar tu versión abriendo una terminal y ejecutando:
```bash
node -v
```

### Opción 1: Ejecución Automática (Windows)

Si estás en Windows, he creado un script para simplificar el proceso.

1.  Busca el archivo `iniciar.bat` en la carpeta principal del proyecto.
2.  Haz doble clic en él.

Este script hará lo siguiente:
*   Verificará si tienes Node.js.
*   Instalará las dependencias necesarias (`npm install`).
*   **Abrirá una nueva ventana de terminal** para ejecutar el servidor de desarrollo. **No cierres esta nueva ventana**, ya que es la que mantiene la aplicación funcionando.
*   Esperará unos segundos y abrirá la aplicación en tu navegador.

**Nota:** Si el navegador se abre pero muestra un error, espera unos segundos más a que termine de compilar en la ventana del servidor y luego actualiza la página.

### Opción 2: Ejecución Manual

1.  **Abre una terminal** en la carpeta donde descargaste el proyecto.

2.  **Instala las dependencias** del proyecto. Este comando descargará todos los paquetes necesarios definidos en `package.json`.
    ```bash
    npm install
    ```

3.  **Inicia el servidor de desarrollo**. Este comando iniciará la aplicación en modo de desarrollo.
    ```bash
    npm run dev
    ```

4.  **Abre tu navegador**. Una vez que el servidor se inicie, verás un mensaje en la terminal indicando que la aplicación está lista. Generalmente, podrás acceder a ella abriendo tu navegador web en la siguiente dirección:
    ```
    http://localhost:3000
    ```

¡Y eso es todo! Ahora deberías poder ver y interactuar con la aplicación en tu máquina local.
