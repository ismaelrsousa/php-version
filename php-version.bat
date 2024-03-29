@echo off
setlocal enabledelayedexpansion

set "directory=C:\tools"

if "%1" == "-l" (
  for /f %%A in ('dir /ad /b "%directory%" ^| findstr /v /i /b /c:"_" ^| findstr /i /c:"php"') do (
    echo %%A [ACTIVE]
  )

  for /f %%A in ('dir /ad /b "%directory%" ^| findstr /i /b /c:"_" ^| findstr /i /c:"php"') do (
    echo %%A
  )
)


if "%1" == "active" (
  rem Para cada pasta que contém a palavra-chave "php"
  for /d %%A in ("%directory%\php*" "%directory%\_php*") do (
      rem Obter o nome da pasta (sem o caminho)
      set "pasta=%%~nxA"
      
      rem Remover o prefixo "_" se existir
      set "pasta=!pasta:_=!"
      
      rem Verificar se é a pasta da versão passada como argumento
      if "!pasta:~3!" == "%2" (
          rem Renomear para "php + versão"
          ren "%%A" "php%2"
      ) else (
          rem Adicionar prefixo "_" para as outras pastas
          ren "%%A" "_!pasta!"
      )
  )
  echo PHP version updated to %2
  php -v
)