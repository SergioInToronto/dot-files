export BASH_SILENCE_DEPRECATION_WARNING=1 # I'm perfectly happy with bash thank you macOS for being annoying about it
export PS1='\u \w\$ '
alias vash='vim ~/.bashrc && source ~/.bashrc'
export HISTCONTROL=ignoreboth # ignore commands with leading whitespce, ignore duplicate commands
export CLICOLOR=1 # barely works on anything CLI tools. Keeping it optimistically?
export EDITOR=vim

# Are these needed?
setopt interactivecomments # allow using comments in interactive shells too, like bash has by default
setopt HIST_IGNORE_DUPS # ignore duplicate commands in history (when pressing up)
setopt HIST_IGNORE_SPACE # commands with leading whitespace as not saved into history
setopt no_auto_remove_slash # when tab-completing a directory, keep the trailing slash. Why would I never not?

# Why do these not get added to PATH in macOS? Or at least a sym link. Seems wrong...
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias firefox='/Applications/Firefox.app/Contents/MacOS/firefox'
alias code='/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron'

# My preferences
alias o='open'
alias c='code'
alias c.='code .'
alias vs='code'
alias g='ggrep -i --color=auto'
alias ls='gls --color=auto'
alias ll='gls -lA --color=auto'



# In iterm2 preferences, hotkeys:
# alt+backspace -> HEX "0x17"
# cmd+left -> hex "0x01"
# cmd+right -> hex "0x05"

# preferences, profile, keys, key mappings
# alt+left -> escape "b"
# alt+right -> escape "f"
