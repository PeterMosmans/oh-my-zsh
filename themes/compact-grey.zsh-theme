# %B (%b)   Start (stop) boldface mode
# %U (%u)   Start (stop) underline mode.
# %S (%s)   Start (stop) standout mode.
# %F (%f)   Start (stop) using a different foreground colour
# %K (%k)   Start (stop) using a different bacKground colour
# see http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html

local ret_status="%B%(?:%F{118}➜:%F{196}➜) %b%f"
PROMPT='${ret_status}'                  # show last result
PROMPT+='%F{252}%5(c:%-2~/…/%2~:%~)%f'  # show 5 levels, first two, dots, last two

PROMPT+='$(git_prompt_info) '           # git status
PROMPT+='%#%f '

ZSH_THEME_GIT_PROMPT_PREFIX=" %F{247}(%B%K{131}%F{7}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY="%k%b%F{247}) %B%F{220}✗%f%b"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%k%b%F{212}) %B%F{220?%f%b"
ZSH_THEME_GIT_PROMPT_CLEAN="%k%b%f{50})"

RPROMPT=''
[[ $UID -eq 0 ]] && RPROMPT+='%{%F{yellow}%}!'
RPROMPT="%F{$fg[8]%}${SSH_TTY:+%n@%m}%f"    # Display username if connected via SSH
#RPROMPT="%F{8}${SSH_TTY:+%n@%m}%f"         # Display username if connected via SSH
RPROMPT+="%F{243}%m%{$reset_color%}"
#RPROMPT="%{$fg_bold[blue]%}%n%{$reset_color%}"
# ???
#setopt promptsubst