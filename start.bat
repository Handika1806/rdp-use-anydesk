@echo off

:START_ANYDESK
anydesk --start
powershell -Command "Start-Sleep -Seconds 5"
for /f "delims=" %%i in ('"C:\ProgramData\chocolatey\lib\anydesk.portable\tools\AnyDesk.exe" --get-id') do (
    set ID=%%i
)
if "%ID%"=="" (
    taskkill /f /im anydesk.exe > nul
    goto START_ANYDESK
)
if "%ID%"=="0" (
    taskkill /f /im anydesk.exe > nul
    goto START_ANYDESK
)

echo disalardp | anydesk.exe --set-password _full_access
start "" /MAX "C:\Users\Public\Desktop\VMQuickConfig"
python -c "import pyautogui as pag; pag.click(147, 489, duration=2)"
python -c "import pyautogui as pag; pag.click(156, 552, duration=2)"
python -c "import pyautogui as pag; pag.click(587, 14, duration=2)"
python -c "import pyautogui as pag; pag.click(916, 17, duration=2)"
python -c "import pyautogui as pag; pag.click(897, 64, duration=2)"

echo ..........................................................
echo . Anydesk Workflow file- https://bit.ly/anydeskworkflow ..
echo ..........................................................
echo ......#####...######...####....####...##.......####.......
echo ......##..##....##....##......##..##..##......##..##......
echo ......##..##....##.....####...######..##......######......
echo ......##..##....##........##..##..##..##......##..##......
echo ......#####...######...####...##..##..######..##..##......
echo ..........................................................
echo ..Youtube Video Tutorial - https://youtu.be/xHr0cPjSRFg ..
echo ..........................................................
echo AnyDesk ID is: %ID%
echo AnyDesk Password: disalardp
echo You can login now!
