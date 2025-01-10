@echo off
rem Install scripts for Windows. It must be run as administrater.

set DOTFILES_DIR="%~dp0"

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo "�㲻�ǹ���Ա��ֻ�й���Ա����ִ�С�"
    exit /b 1
)

mkdir "%HOME%\bin" 2>nul
for %%G in (bin\*) DO (
    del /Q "%HOME%\%%G" 2>nul
    mklink "%HOME%\%%G" "%DOTFILES_DIR%%%G"
)

rem Link directories.
for %%G in (emacs.d) DO (
    rmdir /S /Q "%HOME%\.%%G" 2>nul
    mklink /D "%HOME%\.%%G" "%DOTFILES_DIR%%%G"
    if %errorlevel% neq 0 (
       echo "ִ��ʧ���˳�"
       exit /b %errorlevel%
    )
)

rem Link files.
for %%G in (bash_profile, bashrc, dir_colors, fonts.conf, gitignore, indent.pro, vimrc,
            gitconfig, screenrc, inputrc) DO (
    del /Q "%HOME%\.%%G" 2> nul
    mklink "%HOME%\.%%G" "%DOTFILES_DIR%%%G"
    if %errorlevel% neq 0 (
       echo "ִ��ʧ���˳�"
       exit /b %errorlevel%
    )
)
