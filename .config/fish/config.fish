starship init fish | source
set fish_greeting ""

alias l "ls -lah"
alias vi "vim"
alias nvim "vim"

set -gx EDITOR vim
set -gx VISUAL vim

if test -d $HOME/go
  set GOPATH $HOME/go
  set PATH $PATH $GOPATH/bin
end

if test gdirccolors
  eval (gdircolors ~/.dir_colors/dircolors | head -n 1 | sed 's/^LS_COLORS=/set -x LS_COLORS /;s/;$//')
else
  eval (dircolors ~/.dir_colors/dircolors | head -n 1 | sed 's/^LS_COLORS=/set -x LS_COLORS /;s/;$//')
end

# fzf
if test -d $HOME/.fzf/shell
  source $HOME/.fzf/shell/key-bindings.fish
  set -x FZF_DEFAULT_COMMAND 'rg --files --no-ignore --hidden --follow --glob "!.git/*"'
end

# syntax highlighting variables
# https://fishshell.com/docs/current/interactive.html#syntax-highlighting-variables
set fish_color_normal 575279
set fish_color_command 907aa9
set fish_color_keyword 56949f
set fish_color_quote ea9d34
set fish_color_redirection 286983
set fish_color_end 797593
set fish_color_error b4637a
set fish_color_param d7827e
set fish_color_comment 797593
# fish_color_match --background=brblue
set fish_color_selection --reverse
# fish_color_history_current --bold
set fish_color_operator 575279
set fish_color_escape 286983
set fish_color_autosuggestion 797593
set fish_color_cwd d7827e
# fish_color_cwd_root red
set fish_color_user ea9d34
set fish_color_host 56949f
set fish_color_host_remote 907aa9
set fish_color_cancel 575279
set fish_color_search_match --background=faf4ed
set fish_color_valid_path

# pager color variables
# https://fishshell.com/docs/current/interactive.html#pager-color-variables
set fish_pager_color_progress d7827e
set fish_pager_color_background --background=fffaf3
set fish_pager_color_prefix 56949f
set fish_pager_color_completion 797593
set fish_pager_color_description 797593
set fish_pager_color_secondary_background
set fish_pager_color_secondary_prefix
set fish_pager_color_secondary_completion
set fish_pager_color_secondary_description
set fish_pager_color_selected_background --background=f1e9e1
set fish_pager_color_selected_prefix 56949f
set fish_pager_color_selected_completion 575279
set fish_pager_color_selected_description 575279

set -g FZF_DEFAULT_COMMAND 'ag --nocolor --ignore node_modules -g ""'
set -g FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"

source $HOME/.config/fish/abbreviations.fish > /dev/null 2>&1
set -gx PATH /usr/local/bin /usr/bin /bin /usr/sbin /sbin $PATH
