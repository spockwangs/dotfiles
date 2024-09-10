rem Install scripts for Windows. It must be run as administrater.

set DOTFILES_DIR=%~dp0

echo "DOTFILES_DIR=%DOTFILES_DIR%"
mkdir "%HOME%\bin"
for %%G in (bin\*) DO (
    del /Q %HOME%\%%G
    mklink %HOME%\%%G %DOTFILES_DIR%%%G
)

rem Link directories.
for %%G in (emacs.d) DO (
    rmdir /S /Q %HOME%\.%%G
    mklink /D %HOME%\.%%G %DOTFILES_DIR%%%G
)

rem Link files.
for %%G in (bash_profile, bashrc, dir_colors, fonts.conf, gitignore, indent.pro, vimrc,
            gitconfig, screenrc, inputrc) DO (
    del /Q %HOME%\.%%G
    mklink %HOME%\.%%G %DOTFILES_DIR%%%G
)
