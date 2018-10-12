# Install

1. Clone this repo at the right place

```
cd
mkdir .config
git clone git@github.com:paulroseau/nvim-conf.git .config/nvim
```

2. Install python3 (cf. https://realpython.com/installing-python)

3. Set up the plugins

Launch neovim with `nvim` and then type :

```
:PlugUpgrade
:PlugInstall
:UpdateRemotePlugins
```

The first step is optional.

## For Solarized

### For iTerm2 - Mac OS X only
Go to Profile / Colors 
Select Solarized (dark) for Color Presets

## For vim-airline

Install powerline fonts :
```
cd
mkdir temp
cd temp
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ../../
rm -rf temp
```

In iTerm2 choose font `Source code Pro for powerline` and set font size to `14`

## Misc issues

### In iTerm2

`C-h` is caught by iTerm2 and translated to `backspace` (check this in insert mode pressing `C-h` after typing some keys). 

Run the following in your $HOME directory :
```
infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti
tic $TERM.ti
rm $TERM.ti
```
cf. https://github.com/neovim/neovim/issues/2048 (Tarruda's answer)
