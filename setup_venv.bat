@echo off
REM Virtual Environment Setup Script for Windows

echo 🚀 Setting up Youth Times Project Virtual Environment...

REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Python is not installed or not in PATH. Please install Python 3.8+ first.
    pause
    exit /b 1
)

REM Create virtual environment
echo 📦 Creating virtual environment...
python -m venv venv

REM Activate virtual environment
echo ⚡ Activating virtual environment...
call venv\Scripts\activate.bat

REM Upgrade pip
echo 🔧 Upgrading pip...
python -m pip install --upgrade pip

REM Install requirements
echo 📚 Installing dependencies...
pip install -r requirements.txt

REM Create .env file if it doesn't exist
if not exist .env (
    echo 📝 Creating .env file...
    (
        echo SECRET_KEY=dev-secret-key-change-in-production
        echo SUPABASE_URL=your-supabase-url-here
        echo SUPABASE_KEY=your-supabase-key-here
        echo DATABASE_URL=sqlite:///instance/local.db
        echo GOOGLE_CLIENT_ID=your-google-client-id
        echo GOOGLE_CLIENT_SECRET=your-google-client-secret
        echo FLASK_ENV=development
        echo FLASK_DEBUG=True
    ) > .env
    echo ⚠️  Please update the .env file with your actual credentials
)

REM Create instance directory
if not exist instance mkdir instance

echo ✅ Virtual environment setup complete!
echo.
echo To activate the environment in the future, run:
echo venv\Scripts\activate
echo.
echo To run the application:
echo python run.py
echo.
echo To deactivate the environment:
echo deactivate

pause
