@echo off
title Lanzador de unpadelcito

echo ========================================
echo      Lanzador de 'unpadelcito'
echo ========================================
echo.
echo Este script instalara las dependencias (si es necesario),
echo iniciara el servidor de desarrollo y abrira la
echo aplicacion en tu navegador.
echo.

echo Verificando e instalando dependencias...
call npm install

echo.
echo Iniciando el servidor de desarrollo...
echo Se abrira una nueva ventana para el servidor.
echo Espera un momento mientras compila.
echo.

:: Inicia el servidor de desarrollo en una nueva ventana
start "Servidor de Desarrollo - unpadelcito" npm run dev

:: Espera 10 segundos para dar tiempo al servidor a iniciarse
echo Esperando 10 segundos para que el servidor este listo...
timeout /t 10 /nobreak > nul

:: Abre la pagina en el navegador
echo Abriendo http://localhost:3000 en tu navegador...
start http://localhost:3000

echo.
echo ¡Listo! El servidor se esta ejecutando en la otra ventana.
echo Para detenerlo, simplemente cierra esa ventana.
echo.

exit
