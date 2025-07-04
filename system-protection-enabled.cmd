@echo off
powershell -Command "Enable-ComputerRestore -Drive 'C:\'"
powershell -Command "vssadmin Resize ShadowStorage /For=C: /On=C: /MaxSize=10GB"
powershell -Command "Checkpoint-Computer -Description 'Manual Restore Point' -RestorePointType 'MODIFY_SETTINGS'"
echo Done.
pause
