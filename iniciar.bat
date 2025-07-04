@echo off
chcp 65001 > nul
echo ===================================
echo  INICIADOR DE PROYECTO UNPADELCITO 
echo ===================================
echo.

echo [1/3] Verificando si Node.js esta instalado...
node -v >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo ERROR: No se encontro Node.js.
    echo Por favor, instala Node.js (version 20 o superior) desde https://nodejs.org/ y asegurate de que este en el PATH del sistema.
    echo.
    pause
    exit /b
)
echo Node.js encontrado.

echo.
echo [2/3] Instalando dependencias del proyecto (npm install)...
echo Esto puede tardar varios minutos la primera vez.
call npm install
if %errorlevel% neq 0 (
    echo.
    echo ERROR: La instalacion de dependencias fallo. Revisa los errores de NPM.
    echo.
    pause
    exit /b
)
echo Dependencias instaladas correctamente.

echo.
echo [3/3] Iniciando el servidor de desarrollo...
echo Se abrira una nueva ventana para el servidor. NO LA CIERRES.
echo La aplicacion se abrira en tu navegador en unos segundos.
echo.

REM Inicia el servidor en una nueva ventana de terminal.
start "unpadelcito - Servidor" cmd /c "npm run dev"

REM Espera unos segundos para que el servidor tenga tiempo de compilar.
echo Esperando 10 segundos...
ping 127.0.0.1 -n 11 > nul

REM Abre la URL en el navegador por defecto.
start http://localhost:3000

echo.
echo Listo! El servidor esta corriendo en la otra ventana.
echo Puedes cerrar esta ventana ahora.
