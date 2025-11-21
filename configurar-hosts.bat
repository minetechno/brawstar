@echo off
echo ========================================
echo Configurando brawstar.test
echo ========================================
echo.

REM Adicionar entrada no arquivo hosts
echo 127.0.0.1 brawstar.test >> C:\Windows\System32\drivers\etc\hosts

echo.
echo [OK] Entrada adicionada ao arquivo hosts!
echo.
echo Agora reinicie o WAMP e acesse: http://brawstar.test
echo.
pause
