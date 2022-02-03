@echo off
title Python Extension Installer 1.1 - %Name%
color 0a

:Check
title Python Extension Installer 1.1 - Unregistered
set /p Color=<savecolor.cmd
set /p Name=<savefile.cmd
color %Color%
cls
echo Are you %Name%? (If nothing appeared after "Are you", enter N or n)
set /p "Y/N=[Y/N]:"
if %Y/N%==Y goto installMenu
if %Y/N%==y goto installMenu
if %Y/N%==N goto registry
if %Y/N%==n goto registry

:registry
cls
title Python Extension Installer 1.1 - Unregistered
echo Please enter your name:
set /p "Name=>>"
echo Alright %Name%!
(
    echo %Name%
)>savefile.cmd
ping localhost-n 1 >nul
echo Do you want to change the color of text?
set /p "Y/N=[Y/N]:"
if %Y/N%==Y goto colorChange
if %Y/N%==y goto colorChange
if %Y/N%==N goto installMenu
if %Y/N%==n goto installMenu

:installMenu
title Python Extension Installer 1.1 - %Name%
cls
echo #################################################################
echo ##### %Name%, welcome to the Python Extension Installer v1.0 ####
echo #################################################################
echo.
echo.
echo Please Select a package to install:
echo 1. PyGame - PyGame is used to create simple games with Python
echo 2. NumPy - NumPy is used to perform a wide variety of mathematical operations on arrays.
echo 3. Freegames - Freegames is an alternative for PyGame, which contains different modules and functions.
echo 4. PyAutoGUI - PyAutoGUI is a Python automation library used to click, drag, scroll, move, etc.
echo 5. Pyinstaller - PyInstaller reads a Python script written by you. It analyzes your code to discover every other module and library your script needs in order to execute.
echo 6. Custom Package...
echo If you want to know more, enter 7.
set /p ChosenPack=Enter a number:
if %ChosenPack%==1 goto PyGameInstall
if %ChosenPack%==2 goto NumPyInstall
if %ChosenPack%==3 goto FreegamesInstall
if %ChosenPack%==4 goto PyAutoGuiInstall
if %ChosenPack%==5 goto PyinstallerInstall
if %ChosenPack%==6 goto CustomPack
if %ChosenPack%==7 goto info
echo entering an invalid input will kick you out of the program.

:PyGameInstall
cls
echo WARNING: Don't enter any key until another message appears.
pip install pygame
echo Pygame has been installed or you already have it on your computer.
echo press any key to go back to the main menu.
pause>nul
goto installMenu

:NumPyInstall
cls
echo WARNING: Don't enter any key until another message appears.
pip install numpy
echo NumPy has been installed or you already have it on your computer.
echo press any key to go back to the main menu.
pause>nul
goto installMenu

:FreegamesInstall
cls
echo WARNING: Don't enter any key until another message appears.
pip install freegames
echo Freegames has been installed or you already have it on your computer.
echo press any key to go back to the main menu.
pause>nul
goto installMenu

:PyAutoGuiInstall
cls
echo WARNING: Don't enter any key until another message appears.
pip install pyautogui
echo Pyautogui has been installed or you already have it on your computer.
echo press any key to go back to the main menu.
pause>nul
goto installMenu

:PyinstallerInstall
cls
echo WARNING: Don't enter any key until another message appears.
pip install pyinstaller
echo Pyinstaller has been installed or you already have it on your computer.
echo press any key to go back to the main menu.
pause>nul
goto installMenu

:CustomPack
cls
echo Please enter the name of package that you want to install.
set /p "PackName=>>"
echo Starting the installing process...
pip install %PackName%
echo %PackName% was successfully installed!
echo Press any key to go back to the main menu.
pause>nul
goto installMenu

:info
cls
echo Enter a number in the main menu, to install a chosen package.
echo If none of these apply, you can enter 6 to install a custom package.
echo You'll need to Enter the name of a package that you want to install.
echo That's all for now.
echo Press any key to go back to the main menu.
pause>nul
goto installMenu

:colorChange
cls
echo %Name%, please enter the codename of the color that you want to use: 
echo 0 = black	8 = gray
echo 1 = navy	9 = blue
echo 2 = green	A = lime
echo 3 = teal	B = aqua
echo 4 = maroon	C = red
echo 5 = purple	D = fuchsia
echo 6 = olive	E = yellow
echo 7 = silver	F = white
set /p "Color=>>"
color %Color%
(
    echo %Color%
)>savecolor.cmd
echo press any key to go back to the main menu.
pause>nul
goto installMenu
