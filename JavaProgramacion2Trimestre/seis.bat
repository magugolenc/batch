@echo off
mkdir backup 2>nul /*Hara que no muestre errores en la consola pero los meta en el archivo 2*/
if errorlevel 1 (
    echo No se pudo crear el directorio backup.
) else (
    copy *.* backup
    if errorlevel 1 (
        echo Error al copiar archivos al directorio backup.
    ) else (
        echo Copia de archivos al directorio backup completada.
    )
)
