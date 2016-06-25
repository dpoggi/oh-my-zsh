if [[ "${UID}" -eq "0" ]]; then
  NCOLOR="red"
else
  NCOLOR="green"
fi

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='%{$fg[$NCOLOR]%}%n%{$fg[white]%}@%{$fg[cyan]%}%m\
%{$fg[white]%}:%{$fg[magenta]%}%~\
$(git_prompt_info) \
%{$fg[red]%}'

if [[ "${DPOGGI_TWOLINE}" = "true" || "${DPOGGI_TWOLINE}" -eq "1" ]]; then
  PROMPT+=$'\n'
fi

PROMPT+='%(!.#.»)%{$reset_color%} '

PROMPT2='%{$fg[red]%}\ %{$reset_color%}'

RPS1='${return_code}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}λ%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}ಠ_ಠ%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%})%{$reset_color%}"
