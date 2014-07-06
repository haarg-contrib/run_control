# https://github.com/zsh-users/zsh-syntax-highlighting
ZSH_HIGHLIGHT_FILE=$HOME/run_control/zsh/ext/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH_HIGHLIGHT_FILE || return

ZSH_HIGHLIGHT_HIGHLIGHTERS=(
  brackets
  cursor
  main
  pattern
  root
)

# http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Character-Highlighting

# brackets
# ZSH_HIGHLIGHT_STYLES[bracket-error]='fg=red,bold'
# ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=blue,bold'
# ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=green,bold'
# ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=magenta,bold'
# ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=yellow,bold'
# ZSH_HIGHLIGHT_STYLES[bracket-level-5]='fg=cyan,bold'
# ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]='standout'

# cursor
# ZSH_HIGHLIGHT_STYLES[cursor]='standout'

# main
# ZSH_HIGHLIGHT_STYLES[default]='none'
# ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red,bold'
# ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=yellow'
  ZSH_HIGHLIGHT_STYLES[alias]='fg=154'
  ZSH_HIGHLIGHT_STYLES[builtin]='fg=046'
  ZSH_HIGHLIGHT_STYLES[function]='fg=112'
  ZSH_HIGHLIGHT_STYLES[command]='fg=046'
  ZSH_HIGHLIGHT_STYLES[precommand]='fg=046,underline'
# ZSH_HIGHLIGHT_STYLES[commandseparator]='none'
  ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=046'
  ZSH_HIGHLIGHT_STYLES[path]='fg=083'
# ZSH_HIGHLIGHT_STYLES[path_prefix]='underline'
# ZSH_HIGHLIGHT_STYLES[path_approx]='fg=yellow,underline'
# ZSH_HIGHLIGHT_STYLES[globbing]='fg=blue'
# ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=blue'
# ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='none'
# ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='none'
# ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='none'
  ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=216'
  ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=213'
# ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=cyan'
# ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=cyan'
# ZSH_HIGHLIGHT_STYLES[assign]='none'

# pattern
ZSH_HIGHLIGHT_PATTERNS+=('rm *' 'fg=white,bold,bg=red')
ZSH_HIGHLIGHT_PATTERNS+=('sudo *'   'standout')

# root
# ZSH_HIGHLIGHT_STYLES[root]='standout'
