fish_add_path "/opt/homebrew/bin/"

set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases

if type -q eza
  alias ll "eza --group-directories-first --icons"
  alias lla "ll -a"
end

alias g git
alias t tmux
alias p pnpm

alias c clear
alias e exit

command -qv nvim && alias vim nvim

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# Fzf

set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --colors=always --line-range :500"
set -g FZF_LEGACY_KEYBINDINGS 0

if status is-interactive
end
