@echo off

:calculadora
set /p "num1=Introduce el primer número (0 para salir): "
if %num1% equ 0 (
    echo Saliendo de la calculadora...
    goto :eof /* :eof sirve para que el programa acabe, sin este no acabara nunca*/
)
set /p "num2=Introduce el segundo número: " /* Lo que escriba el usuario se volcara aqui dentro y num2 ahora sera igual a lo escrito por consola*/

REM Operaciones
set /a resultado=0 
set /a error=0
if %num2% equ 0 (
    echo No se puede dividir entre cero.
    set error=1
) else (
    set /a suma=%num1%+%num2%
    set /a resta=%num1%-%num2%
    set /a producto=%num1%*%num2%
    set /a division=%num1%/%num2%
)

REM Mostrar resultados
if %error% equ 0 (
    echo Suma: %suma%
    echo Resta: %resta%
    echo Producto: %producto%
    echo División: %division%
)

goto calculadora
