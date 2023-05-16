chcp 65001
echo off
:menu
cls
echo --------------------------
echo          Меню поиска файлов
echo --------------------------
echo 1 - Отобразить файлы из system32
echo 2 - Отобразить файлы из текущей директории
echo 3 - Отобразить файлы из указанной директории
echo --------------------------
set /p choice=Выберите пункт меню: 

if "%choice%"=="1" goto system32
if "%choice%"=="2" goto current
if "%choice%"=="3" goto custom
echo Неверный выбор. 
pause
goto if






:system32
dir %systemroot%\system32
pause
goto menu

:current
dir
pause
goto menu


:custom
set /p directory=Введите путь к директории:
if exist %directory% (
    dir %directory%
    pause
) else (
    echo Указанная директория не найдена.
    pause
)
exit

