@echo off
::Levanta un USB en el caso de que no pueda ser reconocido, corrupto u otros problemas de formateo.
echo.
echo.
echo fenixUSB v0.1
echo Autor: Jonathan Del Arco
echo Levanta un USB en el caso de que no pueda ser reconocido, corrupto u otros problemas de formateo.
echo.
echo list disk > temp.txt
diskpart /s ./temp.txt
echo.
echo.
echo /!\ CUIDADO de no escoger tu HDD/SSD principal, para ello fijate en su capacidad.
echo.
echo.
pause
echo.
SET /p USB="Escribe el digito de disco a reparar: "
cls
echo select disk %USB% >> temp.txt
diskpart /s ./temp.txt
echo.
pause
cls
echo clean >> temp.txt
diskpart /s ./temp.txt
echo.
pause
cls
echo create partition primary >> temp.txt
diskpart /s ./temp.txt
echo.
pause
cls
echo select partition 1 >> temp.txt
diskpart /s ./temp.txt
echo.
SET /p LABEL="Escribe un nuevo nombre al USB: "
SET /p FORMATO="¿Formato preferido?(NTFS/FAT32): "
cls
echo format fs=%FORMATO% label=%LABEL% quick >> temp.txt
diskpart /s ./temp.txt
echo.
pause
cls
echo active >> temp.txt
diskpart /s ./temp.txt
echo assign letter=X >> temp.txt
diskpart /s ./temp.txt
cls
echo.
echo.
echo TERMINADO
echo.
echo.
pause
exit