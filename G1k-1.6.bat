@echo off
chcp 65001 >nul
color 0F
title 🛠SCRIPT 1.6🛠
mode con: cols=65 lines=20
cls 
:main_menu
cls
echo Data=%date%  Hora=%time%                   
echo Computador=%computername% 
echo Usuario=%username%
echo ╔═══════════════════════════════════════════╗
echo ║      MENU PRINCIPAL                       ║
echo ╠═══════════════════════════════════════════╣
echo ║  [1] Ativar Windows                       ║
echo ║  [2] Pacote Office                        ║
echo ║  [3] Winget Aplicativos                   ║
echo ║  [4] Pos Formatacao                       ║
echo ║  [5] Performance                          ║
echo ║  [6] Verificador de  Erros                ║
echo ║  [7] Winboot                              ║
echo ║  [8] Loja Ltsc                            ║
echo ║  [9] Sobre Windows                        ║
echo ║  [0] Sair                                 ║
echo ╚═══════════════════════════════════════════╝
choice /c 1234567890 /n /m "Escolha uma opcao 👉"

if errorlevel 10 exit
if errorlevel 9 goto menu9
if errorlevel 8 goto menu8
if errorlevel 7 goto menu7
if errorlevel 6 goto menu6
if errorlevel 5 goto menu5
if errorlevel 4 goto menu4
if errorlevel 3 goto menu3
if errorlevel 2 goto menu2 
if errorlevel 1 goto menu1
goto main_menu

:menu1
cls
echo ╔══════════════════════════════════════════╗
echo ║       Ativação Windows                   ║
echo ╠══════════════════════════════════════════╣
echo ║ 1. ➡️ Ativar Windows 10 Enterprise-IOT   ║
echo ║ 2. ➡️ Ativar Windows 11 Enterprise-IOT   ║
echo ║ 3. ➡️ Ativar Windows 11 Enterprise-LTSC  ║
echo ║ 4. ➡️ Ativar Windows Server STD 2019     ║
echo ║ 5. ➡️ Ativar Windows Server STD 2022     ║
echo ║ 6. ➡️ Ativar Windows Server STD 2025     ║
echo ║ 7. ➡️ Ativador Windows HWID              ║
echo ║ 8. 🔙 Voltar                             ║
echo ║ 0. ❌ Sair                               ║
echo ╚══════════════════════════════════════════╝
choice /c 1234567890 /n /m "👉 Escolha uma opcao:"

if errorlevel 9 exit
if errorlevel 8 GOTO main_menu
if errorlevel 7 goto 7
if errorlevel 6 goto 6
if errorlevel 5 GOTO 5
if errorlevel 4 GOTO 4
if errorlevel 3 goto 3
if errorlevel 2 goto 2
if errorlevel 1 goto 1

:1
@echo 🔓 ATIVANDO WINDOWS-10-LTSC-IOT, AGUARDE!!!
slmgr /ipk QPM6N-7J2WJ-P88HH-P3YRH-YY74H
@echo 🔓 Microsoft Windows Ativado com sucesso!!!
timeout /t 3 > null
cls
goto menu1
:2
@echo 🔓 ATIVANDO WINDOWS-11-LTSC-IOT, AGUARDE!!!
slmgr /ipk XQQYW-NFFMW-XJPBH-K8732-CKFFD
@echo 🔓 Microsoft Windows Ativado com sucesso!!!
timeout /t 3 > null
cls
goto menu1
:3
@echo 🔓 ATIVANDO WINDOWS-11-LTSC, AGUARDE!!!
slmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
slmgr /skms kms8.msguides.com
slmgr /ato
@echo 🔓 Microsoft Windows Ativado com sucesso!!!
timeout /t 3 > null
cls
goto menu1
:4
@echo 🔓 ATIVANDO WINDOWS SERVER STD 2019, AGUARDE!!!
DISM /online /Set-Edition:ServerStandard /ProductKey:4QNJJ-WWVJT-FVXP4-FYYXR-R3PHQ /AcceptEula
@echo 🔓 Microsoft Windows Ativado com sucesso!!!
timeout /t 3 > null
cls
goto menu1
:5
@echo 🔓 ATIVANDO WINDOWS SERVER STD 2022, AGUARDE!!!
DISM /online /Set-Edition:ServerStandard /ProductKey:VDYBN-27WPP-V4HQT-9VMD4-VMK7H /AcceptEula
@echo 🔓 Microsoft Windows Ativado com sucesso!!!
timeout /t 3 > null
cls
goto menu1
:6
@echo 🔓 ATIVANDO WINDOWS SERVER STD 2025, AGUARDE!!!
DISM /online /Set-Edition:ServerStandard /ProductKey:TVRH6-WHNXV-R9WG3-9XRFY-MY832 /AcceptEula
@echo 🔓 Microsoft Windows Ativado com sucesso!!!
timeout /t 3 > null
cls
goto menu1
:7
bitsadmin /transfer Office /priority foreground https://github.com/g1ktecnol/Ativador/releases/download/HWID/HWID.cmd C:\Windows\Temp\HWID.cmd
cd C:\Windows\Temp\
HWID.cmd
goto menu1

:menu2
cls
echo ╔═════════════════════════════╗
echo ║       INSTALAR OFFICE       ║
echo ╠═════════════════════════════╣
echo ║ 1. ➡️ Instalar Office 2013  ║
echo ║ 2. ➡️ Instalar Office Ltsc  ║
echo ║ 3. ➡️ Instalar Office 365   ║
echo ║ 4. ➡️ Ativador Office       ║
echo ║ 5. 🔙 Voltar                ║
echo ║ 0. ❌ Sair                  ║
echo ╚═════════════════════════════╝
choice /c 123450 /n /m "👉 Escolha uma opcao:"
if errorlevel 6 exit
if errorlevel 5 goto main_menu
if errorlevel 4 goto 4
if errorlevel 3 goto 3
if errorlevel 2 goto 2
if errorlevel 1 goto 1 
goto main_menu
:1
@echo ⏰ BAIXANDO OFFICE 2013, AGUARDE!!!
bitsadmin /transfer Office /priority foreground https://github.com/g1ktecnol/office/releases/download/Office-2013/Setup.exe C:\setup.exe
cd /
start setup.exe
@echo ⌛ INSTALANDO OFFICE 2013, AGUARDE!!!
pause
mklink "C:\Users\%username%\Desktop\Word" "C:\Program Files\Microsoft Office 15\root\office15\WINWORD.EXE" 
mklink "C:\Users\%username%\Desktop\Excel" "C:\Program Files\Microsoft Office 15\root\Office15\EXCEL.EXE"
del C:\setup.exe
cls
echo.
@echo  OFFICE 2013 INSTALADO COM SUCESSO!!! 
timeout /t 3 > null
cls
goto menu2
:2
@echo ⏰ BAIXANDO OFFICE LTSC, AGUARDE!!! 
bitsadmin /transfer Office /priority foreground https://github.com/g1ktecnol/office/releases/download/Office-LTSC/setup.exe C:\setup.exe
bitsadmin /transfer Office /priority foreground https://github.com/g1ktecnol/office/releases/download/Office-LTSC/basic.xml C:\basic.xml
cd /
setup /configure basic.xml
@echo ⌛ INSTALANDO OFFICE LTSC, AGUARDE!!! 
pause
mklink "C:\Users\%username%\Desktop\Word" "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE" 
mklink "C:\Users\%username%\Desktop\Excel" "C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE"
del C:\setup.exe
del C:\basic.xml
cls
echo.
@echo  OFFICE LTSC INSTALADO COM SUCESSO !!! #
timeout /t 3 > null
goto menu2
:3
@echo ⏰ BAIXANDO OFFICE 365, AGUARDE!!!
bitsadmin /transfer Office /priority foreground https://github.com/g1ktecnol/office/releases/download/Office-365/Setup365.exe C:\setup365.exe
cd /
start setup365.exe
@echo ⌛ INSTALANDO OFFICE 365, AGUARDE!!!
pause
mklink "C:\Users\%username%\Desktop\Word" "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE" 
mklink "C:\Users\%username%\Desktop\Excel" "C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE"
del C:\setup365.exe
cls
echo.
@echo OFFICE-365 INSTALADO COM SUCESSO!!! 
timeout /t 3 > null
cls
goto menu2
:4
bitsadmin /transfer Office /priority foreground https://github.com/g1ktecnol/Ativador/releases/download/Ohook/Ohook.cmd C:\Windows\Temp\ohook.cmd
cd C:\Windows\Temp\
ohook.cmd
goto menu2

:menu3
cls
echo ╔═════════════════════════════╗
echo ║        Winget  APPS         ║
echo ╠═════════════════════════════╣
echo ║ 1. ➡️ Winget Habilitar      ║
echo ║ 2. ➡️ Winget APPS Instalar  ║
echo ║ 3. ➡️ Winget APPS Remover   ║
echo ║ 4. ➡️ Winget APPS Atualizar ║
echo ║ 5. 🔙 Voltar                ║
echo ║ 0. ❌ Sair                  ║
echo ╚═════════════════════════════╝
choice /c 1234560 /n /m "👉 Escolha uma opcao:"
if errorlevel 6 exit
if errorlevel 5 goto main_menu
if errorlevel 4 goto 4
if errorlevel 3 goto 3
if errorlevel 2 goto 2
if errorlevel 1 goto 1
goto main_menu
:1
@echo ⌛ Winget, AGUARDE!!!
start "" "https://apps.microsoft.com/detail/9NBLGGH4NNS1?hl=pt-br&gl=BR&ocid=pdpshare"
timeout /t 3 > null
goto menu3
:2
@echo ⌛ INSTALANDO APPS, AGUARDE!!!
winget install rarlab.winrar --silent
winget install Google.Chrome --silent
winget install 9MZ95KL8MR0L --accept-package-agreements
winget install 9WZDNCRFJBH4 --accept-package-agreements
WINGET install 9WZDNCRFHVN5 --accept-package-agreements
@echo ✔️ INSTALACAO APPS EXECUTADA COM SUCESSO!!! 
timeout /t 5 > null
goto menu3
:3
@echo ⌛ REMOVENDO APPS NAO UTILIZADOS, AGUARDE!!!
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
@echo ✔️ OPERACAO EXECUTADA COM SUCESSO!!!
timeout /t 5 > null
goto menu3
:4
@echo ⌛ ATUALIZANDO APPS, AGUARDE!!!
winget upgrade --all
@echo ✔️ ATUALIZACAO APPS EXECUTADA COM SUCESSO!!! 
timeout /t 4 > null
goto menu3

:menu4
cls
echo ╔═══════════════════════════╗
echo ║       POS formatacao      ║
echo ╠═══════════════════════════╣
echo ║ 1. ➡️ Ativar Administrador║
echo ║ 2. ➡️ Alterar Nome PC     ║
echo ║ 3. ➡️ Usuarios do PC      ║
echo ║ 4. 🔙 Voltar              ║
echo ║ 0. ❌ Sair                ║
echo ╚═══════════════════════════╝
choice /c 12340 /n /m "👉 Escolha uma opcao:"
if errorlevel 5 exit
if errorlevel 4 goto main_menu
if errorlevel 3 goto 3
if errorlevel 2 goto 2
if errorlevel 1 goto 1
goto main_menu
:1
net user Administrador /active:yes >nul
echo Usuario Administrador Ativado!✔️ defina uma 🔐"SENHA"🔐
net user Administrador *
@echo ✔️ Usuario Administrador ativado com sucesso!!! ✔️
timeout /t 5 > null
goto menu4
:2 
set /p NewName="Digite o novo nome para o computador: "
echo Renomeando o computador para %NewName%...
wmic computersystem where name="%computername%" call rename name="%NewName%"
cls
echo.
@echo Alterado com sucesso✔️ para "%NewName%"👉🏽Reinicie o computador!
timeout /t 5 > null
goto menu4
:3
start lusrmgr.msc
cls
goto menu4
:menu5
cls
echo ╔═══════════════════════════╗
echo ║       Performance         ║
echo ╠═══════════════════════════╣
echo ║ 1. ➡️ Desativar Hibernacao║
echo ║ 2. ➡️ Ativar Performance  ║
echo ║ 3. 🔙 Voltar              ║
echo ║ 0. ❌ Sair                ║
echo ╚═══════════════════════════╝
choice /c 1230 /n /m "👉 Escolha uma opcao:"
if errorlevel 4 exit
if errorlevel 3 goto main_menu
if errorlevel 2 goto 2
if errorlevel 1 goto 1
goto main_menu

:1
Powercfg -h off
powercfg /x -monitor-timeout-ac 0
powercfg /x -standby-timeout-ac 0
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
@echo ✔ sucesso!!!
timeout /t 3 > null
goto menu5
:2
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
echo.
@echo 🔓 Performance Ativado!!!
timeout /t 4 > null
goto menu5

:menu6
cls
echo ╔═══════════════════════════╗
echo ║       Verificar por Erros ║
echo ╠═══════════════════════════╣
echo ║ 1. ➡️ Erros de Disco      ║
echo ║ 2. ➡️ Erros de Update     ║
echo ║ 3. ➡️ Reparar Disco       ║
echo ║ 4. 🔙 Voltar              ║
echo ║ 0. ❌ Sair                ║
echo ╚═══════════════════════════╝
choice /c 12340 /n /m "👉 Escolha uma opcao:"
if errorlevel 5 exit
if errorlevel 4 goto main_menu
if errorlevel 3 goto 3
if errorlevel 2 goto 2
if errorlevel 1 goto 1
goto main_menu

:1
@echo 💿 AGUARDE Vericando Arquivos no Disco 1°Fase!!!
Sfc /scannow
@echo 💿 Aguarde Vericando Arquivos no Disco 2°Fase!!!
echo.
Sfc /VERIFYONLY
echo.
@echo Terminamos tudo Pronto!!!
timeout /t 3 > null
goto menu6
:2
@echo ⏳ Reparando Windows Update!!!
DISM.exe /Online /Cleanup-image /Checkhealth
DISM.exe /Online /Cleanup-image /Restorehealth
@echo Reparado !!!
timeout /t 3 > null
goto menu6
:3
@echo 💿 Vericando Disco!!!
chkdsk  /r /f c:
@echo 💿 Vericando Disco!!!
timeout /t 3 > null
goto menu6

:menu7
cls
echo ╔═══════════════════════════╗
echo ║       Winboot             ║
echo ╠═══════════════════════════╣
echo ║ 1. ➡️ Winboot             ║
echo ║ 2. ➡️ Vago                ║
echo ║ 3. ➡️ Vago                ║
echo ║ 4. 🔙 Voltar              ║
echo ║ 0. ❌ Sair                ║
echo ╚═══════════════════════════╝
choice /c 12340 /n /m "👉 Escolha uma opcao:"
if errorlevel 5 exit
if errorlevel 4 goto main_menu
if errorlevel 3 echo Submenu 3-2 selecionado && pause && goto menu3
if errorlevel 2 echo Submenu 3-2 selecionado && pause && goto menu3
if errorlevel 1 goto 1
goto main_menu

:1
@echo ⏰ BAIXANDO WINBOOT, AGUARDE!!! 
bitsadmin /transfer Office /priority foreground https://github.com/g1ktecnol/Winboot/releases/download/Winboot/winboot.cmd C:\Windows\Temp\winboot.cmd
cd \Windows\Temp\ 
start winboot.cmd
goto menu7

:menu8
cls
echo ╔═══════════════════════════╗
echo ║       Loja W10 Ltsc       ║
echo ╠═══════════════════════════╣
echo ║ 1. ➡️ Loja Ltsc 1         ║
echo ║ 2. ➡️ Loja Ltsc 2         ║
echo ║ 3. ➡️ Loja WinGet         ║
echo ║ 4. 🔙 Voltar              ║
echo ║ 0. ❌ Sair                ║
echo ╚═══════════════════════════╝
choice /c 12340 /n /m "👉 Escolha uma opcao:"
if errorlevel 5 exit
if errorlevel 4 goto main_menu
if errorlevel 3 goto 3
if errorlevel 2 goto 2
if errorlevel 1 goto 1
goto main_menu

:1
@echo ⏰ BAIXANDO MICROSOFT STORE, AGUARDE!!!
wsreset -i
timeout /t 2 > null
goto menu8
:2
@echo ⏰ BAIXANDO MICROSOFT STORE, AGUARDE!!! 
bitsadmin /transfer Office /priority foreground https://github.com/g1ktecnol/Loja/releases/download/loja/Loja.exe C:\Windows\Temp\Loja.exe
cd \Windows\Temp\ 
start loja.exe
goto menu8
:3
@echo ⏰ Instalando Winget!
start "" "https://apps.microsoft.com/detail/9NBLGGH4NNS1?hl=pt-br&gl=BR&ocid=pdpshare"
goto menu8
:4
@echo ⌛ Ativando Requisitos 24H2, AGUARDE!!! 
timeout /t 5 > null
PowerShell iwr -useb “https://raw.githubusercontent.com/Win11Modder/Win11-Req-Bypass/main/Win11_Bypass.ps1” | iex
@echo ✔️ 24H2 ATIVADO!!!
timeout /t 5 > null
goto menu8

:menu9
cls
echo ╔═══════════════════════════╗
echo ║        Sobre Windows      ║
echo ╠═══════════════════════════╣
echo ║ 1. ➡️ Versao Windows      ║
echo ║ 2. ➡️ Informacoes         ║
echo ║ 3. ➡️ Github Script       ║
echo ║ 4. 🔙 Voltar              ║
echo ║ 0. ❌ Sair                ║
echo ╚═══════════════════════════╝
choice /c 12340 /n /m "👉 Escolha uma opcao:"
if errorlevel 5 exit
if errorlevel 4 goto main_menu
if errorlevel 3 goto 3
if errorlevel 2 goto 2
if errorlevel 1 goto 1

:1
winver.exe
cls
goto menu9
:2
systeminfo.exe
pause
cls
:3
start https://github.com/g1ktecnol/Script/releases
goto menu9

::################################################################################################################################################################################################# 

