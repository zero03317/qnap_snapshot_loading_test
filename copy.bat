@echo on
setLocal EnableDelayedExpansion 
set source="C:\Qnap_snapshot\test_folder\"
set target="W:\"
for /f "tokens=*" %%a in ('dir %source%\*.* /b /s') do (
set B=%%a
set C=!B:\=%random%!
set D=!C:~3,88!
copy "%%a" %target%\"!D!"
)