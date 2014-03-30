REM ''' Usage of this file
REM %1 usb drive to be used
REM '''

set usbdrive=%1
%usbdrive%
cd demo\BatchFiles
echo Moved to DIR=%cd%

tasklist |findstr "SEAT.exe" > nul

if %ERRORLEVEL% == 0  goto endproc

cd ..\SEATSAT
start .\SEAT.exe ..\kinect_demo2.seatml -s 0.4 -t
cd ..\BatchFiles

goto end

:endproc
echo "seat is already up"

:end
