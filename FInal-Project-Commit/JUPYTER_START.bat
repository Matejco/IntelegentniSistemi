@echo off
REM Quick Jupyter Launcher - bez setup
REM Direktно pokrenuvanje na Jupyter

cd /d c:\Users\matej\IntelegentniSistemi

set PYTHON_PATH=C:\Users\matej\AppData\Local\Programs\Python\Python313\python.exe

echo.
echo ========================================
echo  JUPYTER NOTEBOOK - Quick Start
echo ========================================
echo.

"%PYTHON_PATH%" -m jupyter notebook backtester_kaggle_sp500.ipynb

pause
