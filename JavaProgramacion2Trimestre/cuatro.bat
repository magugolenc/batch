@echo off
echo 1>numeros.txt
echo 2>>numeros.txt
echo 3>>numeros.txt
echo 4>>numeros.txt
echo 5>>numeros.txt

set /a suma=0
for /f "tokens=*" %%a in (numeros.txt) do (
    set /a suma+=%%a
)
set /a media=suma/5
echo La media de los números en numeros.txt es: %media%
