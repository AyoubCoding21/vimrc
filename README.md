# NVix
NVix is a lightweight awesome vim configuration for devs and hackers, It got LSP, Airline and other cool plugins. And it has an user-friendly script that configures everything.
# Details
NVix is lightweight, which makes it really cool for heavy lifted dev.

The *leader* key there is space, and has so good keybindings and even uses LSP for Svelte and SvelteKit developement, JS/TS, C/C++ , GLSL, React and it's brothers, Python and SQL.

It has also pre-built keybindings for C++, Node, Python and Svelte-check compilation and also has other keybindings alongside the normal vim keybindings.

For plugins, it uses fzf, fzf.vim and ctrlp.vim for file searching, ALE and vim-lsp for LSP and intellisense, Airline and OneDark to make the UI better, JSX, Svelte and GLSL plugins for other programming langs and many others.

# Installation
```sh
# This is assuming you have git and curl installed
mkdir -p .vim/{plugged, autoload}
curl -o ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/AyoubCoding21/NVix
cd NVix/
chmod u+x ./exec.sh && ./exec.sh
vim
```

Then sit down and wait for the instalation, it took me 16 minutes on my Samsung Galaxy A2 Core, I hope it isn't that long or you guys but it could a good time to have a coffee-break.

# Commits, issues and infos

Unfortunately, This script (exec.sh) has only Termux and Debian linux support, but you can copy .vimrc for other OSes.

I will be happy for commits and issues and pull requests so we can our software better.

Donation:

Payeer : ```P1098557175```
