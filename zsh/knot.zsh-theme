function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function hsenv_info {
    [ $HSENV ] && echo '('`basename $HSENV`') '
}

RPROMPT='%{$fg[green]%}$(virtualenv_info)$(hsenv_info)%{$reset_color%}%'

export VCPROMPT_FORMAT="%n:(%b) $fg[red]%m%u$reset_color"

PROMPT='
%n@%{$fg[blue]%}%m%{$reset_color%}:%{$fg[yellow]%}%~ %{$reset_color%}$(vcprompt)%{$reset_color%}
→ '

