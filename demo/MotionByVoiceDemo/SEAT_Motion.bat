REM ''' Usage of this file
REM %1 usb drive to be used
REM '''

set usbdrive=%1
%usbdrive%
cd demo\MotionByVoiceDemo
echo Moved to DIR=%cd%

tasklist |findstr "SEAT.exe" > nul

if %ERRORLEVEL% == 0  goto endproc

start ..\SEATSAT\SEAT.exe ..\MotionByVoiceDemo\motion_cnoid.seatml

goto end

:endproc
echo "SEAT is already up"

:end
