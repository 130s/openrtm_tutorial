for /f "usebackq" %%h in (`hostname`) do set HOSTNAME=%%h

call ..\MotionByVoiceDemo\"5 DemoExit.bat"

call ..\Apps\rtshell\rtexit 127.0.0.1/%HOSTNAME%.host_cxt/SampleWordLogger0.rtc

taskkill /F /IM SampleWordLogger.exe
