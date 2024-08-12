@echo off
:MENU
color 09
title [SCRIPT G1K-TECNOLOGIA] 
echo:
echo:
echo                   %computername% - %username% - %date% - %time%
echo                   _______________________________________________________________
echo                  ^|      [MENU]                                                   ^| 
echo                  ^|                                                               ^|
echo                  ^|      [1] ATIVAR WINDOWS 10/11                                 ^|
echo                  ^|                                                               ^|
echo                  ^|      [2] DESINTALAR APPS NAO UTILIZADOS                       ^|
echo                  ^|                                                               ^|
echo                  ^|      [3] INSTALAR APPS MAIS UTILIZADOS                        ^|
echo                  ^|                                                               ^|
echo                  ^|      [4] INSTALAR MICROSOT OFFICE LTSC                        ^|
echo                  ^|                                                               ^|
echo                  ^|      [5] INSTALAR ONLY-OFFICE                                 ^|
echo                  ^|                                                               ^|
echo                  ^|      [6] vago                                                 ^|
echo                  ^|                                                               ^|
echo                  ^|      [7] vago                                                 ^|
echo                  ^|                                                               ^|
echo                  ^|      [8] ATIVAR ADMINISTRADOR  [DIGITAR SENHA]                ^|
echo                  ^|                                                               ^|
echo                  ^|      [9] CREDITOS                                             ^|
echo                  ^|                                                               ^|
echo                  ^|      [0] SAIR                                                 ^|   
echo                  ^|_______________________________________________________________^|
echo:          
set /P opcao=DIGITE OPCAO DESEJADA E TECLE ENTER:
if "%OPCAO%" == "1" goto op1
if "%OPCAO%" == "2" goto op2
if "%OPCAO%" == "3" goto op3
if "%OPCAO%" == "4" goto op4
if "%OPCAO%" == "5" goto op5
if "%OPCAO%" == "6" goto op6
if "%OPCAO%" == "7" goto op7
if "%OPCAO%" == "8" goto op8
if "%OPCAO%" == "9" goto op9
if "%OPCAO%" == "0" goto op0

#==================================================================================================
:op1
slmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
slmgr /skms kms8.msguides.com
slmgr /ato
echo.
echo OPERACAO EXECUTADA COM SUCESSO! "PRESSIONE QUALQUER TECLA PARA VOLTAR AO MENU"
pause > nul
cls
goto MENU

#=====================================================================================
:op2
@echo #================ DESINSTALANDO SOFTWARES NAO NESCESSSARIOS ==================#
powercfg -h off
@echo #==================== AGUARDE!!!==============================================#
winget uninstall Microsoft.549981C3F5F10_8wekyb3d8bbwe
winget uninstall Microsoft.BingWeather_8wekyb3d8bbwe
winget uninstall Microsoft.GetHelp_8wekyb3d8bbwe
winget uninstall Microsoft.Getstarted_8wekyb3d8bbwe
winget uninstall Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe
winget uninstall Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe
winget uninstall Microsoft.MixedReality.Portal_8wekyb3d8bbwe
winget uninstall Microsoft.Office.OneNote_8wekyb3d8bbwe
winget uninstall Microsoft.People_8wekyb3d8bbwe
winget uninstall Microsoft.SkypeApp_kzf8qxf38zg5c
winget uninstall Microsoft.Wallet_8wekyb3d8bbwe
winget uninstall Microsoft.WindowsCamera_8wekyb3d8bbwe
winget uninstall Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe
winget uninstall Microsoft.WindowsMaps_8wekyb3d8bbwe
winget uninstall Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe
winget uninstall Microsoft.Xbox.TCUI_8wekyb3d8bbwe
winget uninstall Microsoft.XboxApp_8wekyb3d8bbwe
winget uninstall Microsoft.XboxGameOverlay_8wekyb3d8bbwe
winget uninstall Microsoft.XboxGamingOverlay_8wekyb3d8bbwe
winget uninstall Microsoft.XboxIdentityProvider_8wekyb3d8bbwe
winget uninstall Microsoft.XboxSpeechToTextOverlay_8wekyb3d8bbwe
winget uninstall Microsoft.YourPhone_8wekyb3d8bbwe
winget uninstall Microsoft.ZuneMusic_8wekyb3d8bbwe
winget uninstall Microsoft.ZuneVideo_8wekyb3d8bbwe
winget uninstall Microsoft.windowscommunicationsapps_8wekyb3d8bbwe
winget uninstall Microsoft.MicrosoftStickyNotes_8wekyb3d8bbwe
winget uninstall Microsoft.WebpImageExtension_8wekyb3d8bbwe
winget uninstall Microsoft.HEIFImageExtension_8wekyb3d8bbwe
winget uninstall Microsoft.Microsoft3DViewer_8wekyb3d8bbwe
winget uninstall Microsoft.WebMediaExtensions_8wekyb3d8bbwe
winget uninstall Microsoft.VP9VideoExtensions_8wekyb3d8bbwe
winget uninstall Microsoft.WindowsAlarms_8wekyb3d8bbwe
winget uninstall Microsoft.MSPaint_8wekyb3d8bbwe
winget uninstall Microsoft.ScreenSketch_8wekyb3d8bbwe
winget uninstall Microsoft.OneConnect_8wekyb3d8bbwe
winget uninstall Microsoft.Todos_8wekyb3d8bbwe
winget uninstall Microsoft.OneDrive
winget uninstall Disney.37853FC22B2CE_6rarf9sa4v8jt
winget uninstall {2403B2D2-1FDC-497D-B181-F53D079FEAAA} 
winget uninstall {89581302-705F-42C5-99B0-E368A845DAD5}
winget uninstall Microsoft.StorePurchaseApp_8wekyb3d8bbwe
winget uninstall SpotifyAB.SpotifyMusic_zpdnekdrzrea0
winget uninstall Microsoft.BingNews_8wekyb3d8bbwe
winget uninstall MSIX\Microsoft.PowerAutomateDesktop_1.0.1234.0_x64__8wekyb3d8bbwe
winget uninstall MSIX\Microsoft.GamingApp_2407.1001.1.0_x64__8wekyb3d8bbwe
winget uninstall MSIX\Microsoft.OutlookForWindows_1.2024.717.400_x64__8wekyb3d8bbwe
echo.
echo OPERACAO EXECUTADA COM SUCESSO! "PRESSIONE QUALQUER TECLA PARA VOLTAR AO MENU"
pause > nul
cls
goto MENU

#====================================================================================
:op3
winget install rarlab.winrar
winget install Google.Chrome --silent
echo.
echo OPERACAO EXECUTADA COM SUCESSO!
echo.
echo "PRESSIONE QUALQUER TECLA PARA VOLTAR AO MENU"
pause > nul
cls
goto MENU
#====================================================================================
:op4
@echo #============== AGUARDE BAIXANDO OFFICE ==================================#
bitsadmin /transfer Office /priority foreground https://github.com/g1ktecnol/office/releases/download/VS1.0/setup.exe C:\setup.exe
bitsadmin /transfer Office /priority foreground https://github.com/g1ktecnol/office/releases/download/VS1.0/basic.xml C:\basic.xml
cd /
setup /configure basic.xml
@echo #============= NAO FECHE ESTA TELA!, INSTALANDO OFFICE ... ================#
pause
mklink "C:\Users\%username%\Desktop\Word" "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE" 
mklink "C:\Users\%username%\Desktop\Excel" "C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE"
del C:\setup.exe
del C:\basic.xml
echo.
echo "PRESSIONE QUALQUER TECLA PARA VOLTAR AO MENU"
pause > nul
cls
goto MENU
#=================== INSTALR ONLYOFFICE ===================================================================
:op5
winget install ONLYOFFICE.DesktopEditors
echo.
echo OPERACAO EXECUTADA COM SUCESSO!
echo.
echo "PRESSIONE QUALQUER TECLA PARA VOLTAR AO MENU"
pause > nul
cls
goto MENU

#=================== ATIVAR ADMINISTRADOR =================================================================
:op8
net user Administrador /active:yes >nul
echo.
echo "ADMINISTRADOR ATIVADO"
net user Administrador *
echo.
echo OPERACAO EXECUTADA COM SUCESSO!!! 
echo.
echo "PRESSIONE QUALQUER TECLA PARA VOLTAR AO MENU"
pause > nul
cls
goto MENU

#==================== CREDITOS =============================================
:op9
cls
echo:
@echo #####################################################################
@echo #====================== AIRTON ROMEU VEIGA ROSA JUNIOR =============#
@echo #====================== G1K-TECNOLOGIA 65-4141-4044  ===============#
@echo #####################################################################
echo.
echo "PRESSIONE QUALQUER TECLA PARA VOLTAR AO MENU"
pause > nul
cls
goto MENU

#======= FIM ==================================================================

:op0
exit
:fim
