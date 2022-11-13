::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJkZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsAAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIHIRVQQxORfFu/FLgV+/vy4OSU4n8YWe0pfZ27
::eg0/rx1wNQPfEVWB+kM9LVsJDDOLMm+1EaZc2O3p4uOUsUQSWvF/SorW1aKLMq4W8kCE
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATE100gMQldSwyWfGS8RudMurq7vb/J8x1TFLNtItqOug==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDpQQQ2MAE+/Fb4I5/jH2OOJpkIKR6IvfZ3W06edKe8dqkbsdJgq02hszIUJFB44
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
:check
net session > nul & cls
if %errorlevel% == 0 goto :A
cd C:\users\public
echo x=msgbox("Administrator authorization is required for this action.", 0+16, "Admin Error") > Error.vbs
timeout /t 1 > nul
start error.vbs
timeout /t 1 > nul
del error.vbs
exit
:A
title Windows permission changer
cls
echo Select an operation. (remove permissions=rp add permissions=ap)
set /p op=
if %op% == rp goto :rp
if %op% == ap goto :ap
:ap
cls
echo Select the file or folder from which you want to add permissions. (Systems/Trustedinstaller)
set /p file=
takeown /f "%file%" /r
icacls "%file%" /t /deny Everyone:F
attrib +h +r +s "%file%"
cd C:\
echo x=msgbox("Permissions have been added." ,64+0, "Windows permission changer") >>x.vbs
timeout /t 0 >nul
start x.vbs
timeout /t 0 >nul
del x.vbs
exit
:rp
cls
echo Select the file or folder from which you want to remove permissions. (Systems/Trustedinstaller)
set /p file=
takeown /f "%file%" /r
icacls "%file%" /t /grant Everyone:F
attrib -h -r -s "%file%"
cd C:\
echo x=msgbox("Permissions have been removed." ,64+0, "Windows permission changer") >>x.vbs
timeout /t 0 >nul
start x.vbs
timeout /t 0 >nul
del x.vbs
exit
::# Windows-Permissions-Remover
::1. **This remove system permissions.**
::2. **If you destroy any system file, I am not responsible for any ***damage***.**