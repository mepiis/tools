@echo off
vssadmin delete shadows /all /quiet
powershell -Command "Disable-ComputerRestore -Drive 'C:\'"
powershell -Command "Get-ComputerRestorePoint"
echo Done.
pause
