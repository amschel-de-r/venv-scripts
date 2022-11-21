@echo off

:: Go to relevant directory
FOR %%A IN ("%~dp0.") DO SET folder=%%~dpA
cd %folder%

:: Update pip
python -m pip install --upgrade pip

:: Install virtualenv
python -m pip install --user virtualenv

:: Create virtual environment
python -m venv env

:: Activate virtual environment
call .\env\Scripts\activate
:: call .\env\Scripts\activate.bat

:: Install requirements
python -m pip install -r requirements.txt

:: Uncomment for debugging
:: pause
