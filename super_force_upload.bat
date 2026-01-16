@echo off
echo ==========================================
echo   UPLOAD FINAL - CAMINHO ABSOLUTO
echo ==========================================

REM Definindo o caminho do Git manualmente
set GIT_CMD="C:\Program Files\Git\cmd\git.exe"

echo Usando Git em: %GIT_CMD%

echo.
echo 1. Resetando (Deletando .git)...
rmdir /s /q .git

echo.
echo 2. Iniciando...
%GIT_CMD% init

echo.
echo 3. Configurando Usuario...
%GIT_CMD% config user.email "admin@drogaria.com"
%GIT_CMD% config user.name "Drogaria Admin"

echo.
echo 4. Adicionando arquivos...
%GIT_CMD% add .

echo.
echo 5. Commit...
%GIT_CMD% commit -m "Upload via Script Absoluto"

echo.
echo 6. Configurando Remoto...
%GIT_CMD% branch -M main
%GIT_CMD% remote add origin https://github.com/Luizob32/Check-Famra.git

echo.
echo 7. ENVIANDO (Force)...
%GIT_CMD% push -u origin main --force

echo.
echo ==========================================
echo SE CHEGOU AQUI SEM FECHAR, LEIA AS MENSAGENS ACIMA.
echo ==========================================
pause
