# My vimrc
This is a lightweight awesome vim configuration for devs and hackers, It got cool plugins for developers.
# Details
It is lightweight, which makes it really cool for heavy lifted dev. But also has cool tricks, plugins and functions for developers and hackers to provide them with the best experience.

The *leader* key there is space, and has cool keybindings and even uses LSP for Svelte and SvelteKit developement, JS/TS, C/C++ , GLSL, React and it's brothers, Python, SQL and VimScript.

It has also pre-built keybindings for C++, Node, Python and Svelte-check compilation and also has other keybindings alongside the normal vim keybindings.

For plugins, it uses fzf, fzf.vim and ctrlp.vim for file searching, ALE and coc.nvim for LSP and intellisense and error-catching, Airline and OneDark to make the UI of vim better, JSX, Svelte and GLSL plugins for other programming langs and YATS and DevIcons and many others.

# Images preview

Windows 10 (MSYS):

<img width="1280" height="1024" alt="Screenshot (9)" src="https://github.com/user-attachments/assets/9e233d45-d138-4564-b934-f4d20443ffb8" />

# Preperation for installation

**Note :** For Linux users only, install Hack Nerd Regular Font and use it, Do not use Hack Nerd Mono-* fonts.

To install Hack Nerd fonts :

```sh
sudo apt install git -y --no-install-recommends
git clone https://github.com/AyoubCoding21/vimrc && cd vimrc
bash installfonts.sh
```

Restart your terminal, then change the font to Hack Nerd Font Regular in Preferences -> Appeareance.

# Installation

**Attention : Clone the repo before you do any of this !! But before, if you did the previous step you have nothing to worry, but Termux users must clone the repo !**

First go to the NVix directory after cloning and :

*Linux users :*

```sh
bash installlinux.sh && bash copy.sh
vim
```

*Termux users :*

```sh
bash installtermux.sh && bash copy.sh
vim
```

Then sit down and wait for the instalation, it took me less than 2 minutes on my Samsung Galaxy A2 Core with a Wi-Fi network on the country-side (because It's slow).

Then run these commands (Linux only):

```sh
sudo npm i -g n
sudo n latest
```

And then run these commands to initialise coc.nvim:

*Linux users :*

```sh
bash cocinstall.sh
```

Boom, Well for me It took me around 9 minutes to finish depending on your Internet connection, I hope it didn't take that long for you, But here you have it, You setted up the config on Vim.

***Attention !!!!*** : If the coc.nvim installation when you open vim does errors, just close and reopen vim, And do like that, until everything is installed.


# Commits, issues and infos

Unfortunately, This script (exec.sh) has only Termux and Debian linux support, but you can still copy .vimrc for other OSes and install packages using your system's package manager.

I will be happy for commits and issues and pull requests so we can make our software better.

Donation:

Payeer : ```P1098557175```
