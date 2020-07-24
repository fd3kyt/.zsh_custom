# Prerequisite
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

# Usage
Run this:
``` shell
bash -c "$(wget https://raw.githubusercontent.com/fd3kyt/.zsh_custom/master/setup.sh -O -)"
```

# Local customization
All files match `*.local.*` and `*.local` are ignored by git.

# About plugin list
Plugin list is in `plugins.sh`. If `plugins.local.sh` exists, use it
instead and **ignore** `plugins.sh`

# Note: what is loaded by oh-my-zsh, what is not
* Only *.zsh that are directly under this directory are loaded.
  * .zsh in subfolders are not loaded. (Except for `plugins` and
    `themes`, of course.)
  * .sh are not loaded.

