# NVix
NVix is a lightweight awesome vim configuration for devs and hackers, It got Coc, Airline and other cool plugins. And it has an user-friendly script that configures everything.

# Details
NVix is lightweight, which makes it really cool for heavy lifted dev.

The *leader* key there is space, and has so good keybindings and even uses LSP for Svelte and SvelteKit developement, JS/TS, C/C++ , GLSL, React and it's brothers, Python, SQL and VimScript.

It has also pre-built keybindings for C++, Node, Python and Svelte-check compilation and also has other keybindings alongside the normal vim keybindings.

For plugins, it uses fzf, fzf.vim and ctrlp.vim for file searching, ALE and coc.nvim for LSP and intellisense, Airline and OneDark to make the UI better, JSX, Svelte and GLSL plugins for other programming langs and many others.

# Installation

*Linux users :*

```sh
sudo apt install git curl yarnpkg -y --no-install-recommends npm clangd
mkdir -p ~/.vim/autoload
curl -o ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/AyoubCoding21/NVix
cd NVix/
chmod u+x ./exec.sh && ./exec.sh
vim
```

*Termux users :*

```sh
apt install git curl yarn -y --no-install-recommends nodejs clang
mkdir -p ~/.vim/autoload
curl -o ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/AyoubCoding21/NVix
cd NVix/
bash ./exec.sh
vim
```

Then sit down and wait for the instalation, it took me less than 2 minutes on my Samsung Galaxy A2 Core with a Wi-Fi network on the country-side (because It's slow).

And then run these commands to initialise coc.nvim:

*Termux users :*

```sh
cd ~/.vim/plugged/coc.nvim/
rm yarn.lock
yarn install --frozen-lockfile
vim
```

*Linux users :*

```sh
cd ~/.vim/plugged/coc.nvim/
rm yarn.lock
yarnpkg install --frozen-lockfile
vim
```

Boom, Well for me It took me around 9 minutes to finish, I hope it didn't take that long for you, But here you have it, You setted up NVix on Vim.

***Attention !!!!*** : If the coc.nvim installation when you open vim does errors, just close and reopen vim, And do like that, until everything is installed.

# Keybindings

Here are some keybindings that are used :

**leader :** SPACE

**Ctrl+g :** Compiles the C++ file.

**Ctrl+y :** Runs python3 on the file.

**Ctrl+o :** Runs node on the file.

**Ctrl+N :** Autocomplete.

**Ctrl+s :** Runs svelte-check.

**Ctrl+P :** Runs the ctrlp file explorer.

**leader + e :** Runs NERDTree.

**Ctrl+b :** Runs a sh script.

**F2 :** Save the file.

**F3 :** Split the screen horisontally.

**F4 :** Split the screen vertically.

**F5 :** Quit.

**F9 :** set invnumber

**F10 :** set invrelativenumbber

**leader + d :** Defintion (using coc.nvim)

**leader + c :** Type (using coc.nvim)

**leader + x :** Fix error (using coc.nvim)

**leader + h :** Hover (using coc.nvim)

**leader + r :** Rename (using coc.nvim)

**leader + f :** Format (using coc.nvim)

**leader + t :** Toggle ALE.

**:W :** Switch between multiple tabs.

**Ctrl + f :** Open FZF.

**Ctrl + z :** Open Files that show dirs and files with their content.

**Ctrl + TAB :** Moves down in the selection completion tab in coc.nvim

**TAB :** Triggers HTML Emmet Expand Abreviation (When filetype is html) or autocomplete and scroll up in the selection completion tab (coc.nvim)

# Commits, issues and infos

Unfortunately, This script (exec.sh) has only Termux and Debian linux support, but you can copy .vimrc for other OSes.

I will be happy for commits and issues and pull requests so we can make our software better.

Donation:

Payeer : ```P1098557175```
