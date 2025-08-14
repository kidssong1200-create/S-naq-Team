@ECHO OFF
SETLOCAL
set DIR=%~dp0
IF EXIST "%DIR%\gradle\wrapper\gradle-wrapper.jar" (
  java -jar "%DIR%\gradle\wrapper\gradle-wrapper.jar" %*
) ELSE (
  REM Fallback: download wrapper JAR dynamically
  echo Downloading gradle-wrapper.jar...
  powershell -Command "[Net.ServicePointManager]::SecurityProtocol = 'tls12'; (New-Object Net.WebClient).DownloadFile('https://services.gradle.org/distributions/gradle-8.7-bin.zip','%TEMP%\gradle-8.7-bin.zip')"
  echo Please unzip manually if needed.
)
