rem Install scripts for Windows. It must be run as administrater.

set DOTFILES_DIR=%~dp0%

for %%G in (emacs.d, bin) DO (
    rmdir %HOME%\.%%G
    mklink /D %HOME%\.%%G %DOTFILES_DIR%\%%G
)

for %%G in (bash_profile, bashrc, dir_colors, fonts.conf, gitignore, indent.pro, vimrc,
            gitconfig, screenrc, inputrc) DO (
    del %HOME%\.%%G
    mklink %HOME%\.%%G %DOTFILES_DIR%\%%G
)
