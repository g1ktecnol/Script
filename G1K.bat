@echo off
:menu
cls
color 09
title [SCRIPT G1K-TECNOLOGIA]
echo Data=%date%  Hora=%time%                   
echo Computador=%computername% 
echo Usuario=%username%                  
echo                   _______________________________________________________________
echo                  ^|      [MENU]                                                   ^| 
echo                  ^|                                                               ^|
echo                  ^|      [1] ATIVAR WINDOWS 10/11 ENTERPRISE                      ^|
echo                  ^|                                                               ^|
echo                  ^|      [2] ATIVAR ADMINISTRADOR  [DIGITAR SENHA]                ^|
echo                  ^|                                                               ^|
echo                  ^|      [3] INSTALAR MICROSOFT OFFICE LTSC (LOGIN)               ^|
echo                  ^|                                                               ^|
echo                  ^|      [4] INSTALAR MICROSOFT OFFICE 2013                       ^|
echo                  ^|                                                               ^|
echo                  ^|      [5] ALTERAR NOME DO COMPUTADOR                           ^|
echo                  ^|                                                               ^|
echo                  ^|      [6] INSTALAR WINGET                                      ^|
echo                  ^|                                                               ^|
echo                  ^|      [7] INSTALAR APPS MAIS UTILIZADOS                        ^|
echo                  ^|                                                               ^|
echo                  ^|      [8] REMOVER APPS NAO UTILIZADOS                          ^|
echo                  ^|                                                               ^|
echo                  ^|      [9] corra                                                ^|
echo                  ^|                                                               ^|
echo                  ^|      [0] SAIR                                                 ^|   
echo                  ^|_______________________________________________________________^|
echo.          
choice /c "1234567890" /n /m "DIGITE>"
goto %errorlevel%
::===========================================================
:1
@echo #========== ATIVANDO WINDOWS, AGUARDE!!! =============#
slmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
slmgr /skms kms8.msguides.com
slmgr /ato
msg */ Microsoft Windows Ativado com sucesso!!!
cls
goto menu

:2
net user Administrador /active:yes >nul
echo Usuario Administrador Ativado! defina uma "SENHA"
net user Administrador *
msg */ # Usuario Administrador ativado com sucesso!!! #
goto menu 

:3
@echo #============== BAIXANDO OFFICE, AGUARDE!!! =================#
bitsadmin /transfer Office /priority foreground https://github.com/g1ktecnol/office/releases/download/VS1.0/setup.exe C:\setup.exe
bitsadmin /transfer Office /priority foreground https://github.com/g1ktecnol/office/releases/download/VS1.0/basic.xml C:\basic.xml
cd /
setup /configure basic.xml
@echo #============= INSTALANDO OFFICE LTSC, AGUARDE!!! ================#
pause
mklink "C:\Users\%username%\Desktop\Word" "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE" 
mklink "C:\Users\%username%\Desktop\Excel" "C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE"
del C:\setup.exe
del C:\basic.xml
cls
echo.
msg */ # OFFICE LTSC INSTALADO COM SUCESSO!!! #
goto menu

:4
@echo #============== BAIXANDO OFFICE 2013, AGUARDE!!! =================#
bitsadmin /transfer Office /priority foreground https://github.com/g1ktecnol/office2013/blob/main/Office2013.exe C:\office2013.exe
cd /
setup office2013.exe
@echo #============= INSTALANDO OFFICE 2013, AGUARDE!!! ================#
pause
mklink "C:\Users\%username%\Desktop\Word" "C:\Program Files\Microsoft Office 15\root\office15\WINWORD.EXE" 
mklink "C:\Users\%username%\Desktop\Excel" "C:\Program Files\Microsoft Office 15\root\Office15\EXCEL.EXE"
del C:\setup.exe
cls
echo.
msg */ # OFFICE 2013 INSTALADO COM SUCESSO!!! #
msg */ # Executar link no powershell= irm https://massgrave.dev/get | iex #
cls
goto menu

:5 
set /p NewName="Digite o novo nome para o computador: "
echo Renomeando o computador para %NewName%...
wmic computersystem where name="%computername%" call rename name="%NewName%"
cls
msg */ Nome do computador alterado com sucesso para "%NewName%" Reinicie o computador para concluir.
goto menu

:6
@echo #============== BAIXANDO WINGET, AGUARDE!!! =================#
bitsadmin /transfer Winget /priority foreground https://github.com/microsoft/winget-cli/releases/download/v1.8.1911/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle C:\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
cd/
start Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
@echo #============= INSTALANDO WINGET, AGUARDE!!! ================# 
goto menu  

:7
@echo #========== INSTALANDO APPS, AGUARDE!!! =============#
winget install rarlab.winrar --silent
winget install Google.Chrome --silent
msg */ INSTALACAO EXECUTADA COM SUCESSO!!! 
goto menu  

:8
powercfg -h off
@echo #========== REMOVENDO APPS NAO UTILIZADOS, AGUARDE!!! =============#
winget uninstall Microsoft.549981C3F5F10_8wekyb3d8bbwe
winget uninstall Microsoft.BingWeather_8wekyb3d8bbwe
winget uninstall Microsoft.GetHelp_8wekyb3d8bbwe
winget uninstall Microsoft.Getstarted_8wekyb3d8bbwe
winget uninstall Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe
winget uninstall Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe
winget uninstall Microsoft.MixedReality.Portal_8wekyb3d8bbwe
winget uninstall Microsoft.People_8wekyb3d8bbwe
winget uninstall Microsoft.SkypeApp_kzf8qxf38zg5c
winget uninstall Microsoft.Wallet_8wekyb3d8bbwe
winget uninstall Microsoft.WindowsCamera_8wekyb3d8bbwe
winget uninstall Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe
winget uninstall Microsoft.WindowsMaps_8wekyb3d8bbwe
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
winget uninstall Microsoft.WindowsAlarms_8wekyb3d8bbwe
winget uninstall Microsoft.MSPaint_8wekyb3d8bbwe
winget uninstall Microsoft.ScreenSketch_8wekyb3d8bbwe
winget uninstall Microsoft.OneConnect_8wekyb3d8bbwe
winget uninstall Microsoft.Todos_8wekyb3d8bbwe
winget uninstall Disney.37853FC22B2CE_6rarf9sa4v8jt
winget uninstall {2403B2D2-1FDC-497D-B181-F53D079FEAAA} 
winget uninstall {89581302-705F-42C5-99B0-E368A845DAD5}
winget uninstall Microsoft.StorePurchaseApp_8wekyb3d8bbwe
winget uninstall SpotifyAB.SpotifyMusic_zpdnekdrzrea0
winget uninstall Microsoft.BingNews_8wekyb3d8bbwe
winget uninstall MSIX\Microsoft.BingSearch_1.0.79.0_x64__8wekyb3d8bbwe
winget uninstall MSIX\Microsoft.GamingApp_2408.1001.14.0_x64__8wekyb3d8bbwe
winget uninstall MSIX\Microsoft.PowerAutomateDesktop_1.0.1234.0_x64__8wekyb3d8bbwe
winget uninstall MSIX\Microsoft.GamingApp_2407.1001.1.0_x64__8wekyb3d8bbwe
winget uninstall MSIX\Microsoft.OutlookForWindows_1.2024.717.400_x64__8wekyb3d8bbwe
winget uninstall Microsoft.DevHome
msg */ # OPERACAO EXECUTADA COM SUCESSO!!!! #
goto menu

:9
start curl ascii.live/forrest
goto menu

:0
exit
