@echo off
rem Install scripts for Windows. It must be run as administrater.

set DOTFILES_DIR="%~dp0"

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo "你不是管理员，只有管理员才能执行。"
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
       echo "执行失败退出"
       exit /b %errorlevel%
    )
)

rem Link files.
for %%G in (bash_profile, bashrc, dir_colors, fonts.conf, gitignore, indent.pro, vimrc,
            gitconfig, screenrc, inputrc) DO (
    del /Q "%HOME%\.%%G" 2> nul
    mklink "%HOME%\.%%G" "%DOTFILES_DIR%%%G"
    if %errorlevel% neq 0 (
       echo "执行失败退出"
       exit /b %errorlevel%
    )
)

rem Configure git hooks
git config core.hooksPath .githooks

rem Install Symbols Nerd Font (for nerd-icons in Emacs, etc.)
set "NERD_FONT_URL=https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/NerdFontsSymbolsOnly.zip"
set "NERD_FONT_ZIP=%TEMP%\NerdFontsSymbolsOnly.zip"
set "NERD_FONT_TMP=%TEMP%\NerdFontsSymbolsOnly"
set "NERD_FONT_DST=%WINDIR%\Fonts"

if exist "%NERD_FONT_DST%\SymbolsNerdFont-Regular.ttf" (
    echo "Symbols Nerd Font already installed, skipping."
) else (
    echo "Downloading Symbols Nerd Font ..."
    curl -fsSL -o "%NERD_FONT_ZIP%" "%NERD_FONT_URL%"
    if %errorlevel% neq 0 (
        echo "下载字体失败退出"
        exit /b %errorlevel%
    )

    rmdir /S /Q "%NERD_FONT_TMP%" 2>nul
    powershell -NoProfile -Command "Expand-Archive -LiteralPath '%NERD_FONT_ZIP%' -DestinationPath '%NERD_FONT_TMP%' -Force"
    if %errorlevel% neq 0 (
        echo "解压字体失败退出"
        exit /b %errorlevel%
    )

    for %%F in ("%NERD_FONT_TMP%\*.ttf") DO (
        echo "Installing %%~nxF ..."
        copy /Y "%%F" "%NERD_FONT_DST%\" >nul
        reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "%%~nF (TrueType)" /t REG_SZ /d "%%~nxF" /f >nul
    )

    del /Q "%NERD_FONT_ZIP%" 2>nul
    rmdir /S /Q "%NERD_FONT_TMP%" 2>nul
)
