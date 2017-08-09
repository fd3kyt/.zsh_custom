# Prerequisite
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
  * install: `sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"`

# Usage
1. Clone this repository: `cd ~ && git clone https://github.com/fd3kyt/.zsh_custom.git`
2. Backup your old .zshrc: `mv ~/.zshrc ~/.zshrc.backup`
3. Use the new .zshrc: `cp ~/.zsh_custom/.zshrc.template ~/.zshrc`

# Local customization
All files match `*.local.*` and `*.local` are ignored by git.

# About plugin list
Plugin list is in `plugins.sh`. If `plugins.local.sh` exists, use it
instead and **ignore** `plugins.sh`

# Note: what is loaded by oh-my-zsh, what is not
* Only .zsh that are directly under this directory are loaded.
  * .zsh in subfolders are not loaded. (Except for `plugins` and
    `themes`, of course.)
  * .sh are not loaded.

