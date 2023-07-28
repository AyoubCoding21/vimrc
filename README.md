# NVix
NVix is a lightweight awesome vim configuration for devs and hackers, It got LSP, Coc, Airline and other cool plugins. And it has an user-friendly script that configures everything.
# Details
NVix is lightweight, which makes it really cool for heavy lifted dev.

The *leader* key there is space, and has so good keybindings and even uses LSP for Svelte and SvelteKit developement, JS/TS, C/C++ , GLSL, React and it's brothers, Python and SQL.

It has also pre-built keybindings for C++, Node, Python and Svelte-check compilation and also has other keybindings alongside the normal vim keybindings.

For plugins, it uses fzf, fzf.vim and ctrlp.vim for file searching, ALE, vim-lsp and coc.nvim for LSP and intellisense, Airline and OneDark to make the UI better, JSX, Svelte and GLSL plugins for other programming langs and many others.

# Installation

*Linux users :*

```sh
apt install git curl yarn -y --no-install-recommends npm
mkdir -p .vim/{plugged, autoload}
curl -o ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/AyoubCoding21/NVix
cd NVix/
chmod u+x ./exec.sh && ./exec.sh
vim
```

*Termux users :*

```sh
apt install git curl yarn -y --no-install-recommends nodejs
mkdir -p .vim/{plugged, autoload}
curl -o ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/AyoubCoding21/NVix
cd NVix/
chmod u+x ./exec.sh && ./exec.sh
vim
```

Then sit down and wait for the instalation, it took me 16 minutes on my Samsung Galaxy A2 Core, I hope it isn't that long for you guys but it could a good time to have a coffee-break.

And then run these commands to initialise coc.nvim:

*All users :*

```sh
cd ~/.vim/plugged/coc.nvim
yarn install
vim
```

Boom, Well for me It took me around 9 minutes to finish, I hope it didn't take that long for you, But here you have it, You setted up NVix on Vim.

# Some keybindings

Here are some keybindings that are used, I didn't want you to know everything so  you check the code for other keybindings :

**<leader> :** SPACE

**Ctrl+g :** Compiles the C++ file.

**Ctrl+y :** Runs python3 on the file.

**Ctrl+o :** Runs node on the file.

**Ctrl+N :** Autocomplete.

**Ctrl+s :** Runs svelte-check.

**Ctrl+P :** Runs the ctrlp file explorer.

**<leader>e :** Runs NERDTree.

**Ctrl+b :** Runs a sh script.

**F2 :** Save the file.

**F3 :** Split the screen horisontally.

**F4 :**   =    =     =   vertically.

**F5 :** Quit.

**F9 :** set invnumber

**F10 :** set invrelativenumbber

**<leader>d :** Shows definition (using vim-lsp).

**<leader>h :** Hovers on a variable (using vim-lsp).

**<leader>f :** Format (using vim-lsp).

**<leader>r :** Rename a variable globally (using vim-lsp).

**<leader>t :** Toggle ALE.

# Commits, issues and infos

Unfortunately, This script (exec.sh) has only Termux and Debian linux support, but you can copy .vimrc for other OSes.

I will be happy for commits and issues and pull requests so we can make our software better.

Donation:

Payeer : ```P1098557175```
