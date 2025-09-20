eval "$(starship init zsh)"

# enable the plugins 

source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath+=~/.zsh/plugins/zsh-completions/src

# Show fastfetch on startup
(clear && fastfetch)

