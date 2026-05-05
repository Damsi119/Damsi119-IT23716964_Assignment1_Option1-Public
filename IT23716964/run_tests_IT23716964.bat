@echo off
cd /d "%~dp0"

echo Installing requirements...
python -m pip install -U pip
python -m pip install -r requirements.txt
python -m playwright install chromium

echo Searching Excel file...
set "EXCEL_FILE="

for %%f in ("test_automation\*.xlsx") do (
    set "EXCEL_FILE=%%f"
)

if "%EXCEL_FILE%"=="" (
    echo Error: No Excel .xlsx file found inside test_automation folder.
    echo Please check test_automation folder.
    pause
    exit /b
)

echo Found Excel file: %EXCEL_FILE%

python "test_automation\IT23716964_test_automation.py" --excel "%EXCEL_FILE%" --url "https://www.pixelssuite.com/chat-translator" --wait-ms 5000 --type-delay-ms 80 --slow-mo-ms 200 --save-every 1 --keep-open

pause