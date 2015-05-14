# formatting:
# %B (%b)   Start (stop) boldface mode
# %U (%u)   Start (stop) underline mode.
# %S (%s)   Start (stop) standout mode.
# %F (%f)   Start (stop) using a different foreground colour
# %K (%k)   Start (stop) using a different bacKground colour

# login information:
# %m        Hostname up to the first .
# %n        Username
# see http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html

local ret_status="%B%(?:%F{118}➜:%F{196}➜) %b%f"
ZSH_THEME_GIT_PROMPT_PREFIX=" %F{247}(%B%K{131}%F{7}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY="%k%b%F{247}) %B%F{220}✗%f%b"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%k%b%F{212}) %B%F{220?%f%b"
ZSH_THEME_GIT_PROMPT_CLEAN="%k%b%F{50})"

PROMPT='${ret_status}'                  # show last result
PROMPT+='%F{252}%5(c:%-2~/…/%2~:%~)%f'  # show 5 levels, first two, dots, last two
PROMPT+='$(git_prompt_info) '           # git status
PROMPT+='%#%f '

RPROMPT="%(!.%B%F{1}%n.%F{250}%n)%F{243}@"
#RPROMPT="%F{8}${SSH_TTY:+%n@%m}%f"     # Display username if connected via SSH
RPROMPT+="%F{250}%m%f%b"
