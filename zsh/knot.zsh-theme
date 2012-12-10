function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function hsenv_info {
    [ $HSENV ] && echo '('`basename $HSENV`') '
}

RPROMPT='%{$fg[green]%}$(virtualenv_info)$(hsenv_info)%{$reset_color%}%'

PROMPT='
%n@%m:%{$fg[yellow]%}%~ %{$fg_bold[cyan]%}$(git_prompt_info)%{$reset_color%}
→ '

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
