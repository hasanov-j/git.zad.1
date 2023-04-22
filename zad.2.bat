if not exist "zad.2" (
	md zad.2
)
cd zad.2

for /L %%i in (1,1,10) do (

echo %%i > file%%i.txt
)
timeout /t 10 /nobreak

for /L %%i in (1,1,10) do (
del /Q .\file%%i.txt
)
pause