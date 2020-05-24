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

# fzf
if test -d $HOME/.fzf/shell
  source $HOME/.fzf/shell/key-bindings.fish
  set -x FZF_DEFAULT_COMMAND 'rg --files --no-ignore --hidden --follow --glob "!.git/*"'
end

set -l foreground f8f8f2
set -l selection  44475a
set -l comment    6272a4

set -l red    ff5555
set -l orange ffb86c
set -l yellow f4f99d
set -l green  50fa7b
set -l cyan   8be9fd
set -l pink   ff79c6
set -l purple bd93f9

set -g fish_color_autosuggestion $selection
set -g fish_color_command        $cyan
set -g fish_color_comment        $comment
set -g fish_color_end            $orange
set -g fish_color_error          $red
set -g fish_color_escape         $pink
set -g fish_color_normal         $foreground
set -g fish_color_operator       $green
set -g fish_color_param          $purple
set -g fish_color_quote          $yellow
set -g fish_color_redirection    $foreground
set -g fish_color_search_match   --background=$selection
set -g fish_color_selection      --background=$selection

set -g FZF_DEFAULT_COMMAND 'ag --nocolor --ignore node_modules -g ""'
set -g FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"

source $HOME/.config/fish/abbreviations.fish > /dev/null 2>&1
set -gx PATH /usr/local/bin /usr/bin /bin /usr/sbin /sbin $PATH
