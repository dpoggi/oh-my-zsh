if [[ "${UID}" = "0" ]]; then ARROW_COLOR="red"; else ARROW_COLOR="yellow"; fi
PROMPT='[%{$fg[blue]%}%m%{$reset_color%}] %{$fg[yellow]%}λ %{$fg[green]%}%c %{$fg[$ARROW_COLOR]%}→ $(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="λ %{$fg[blue]%}git %{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%} → %{$reset_color%}"
