source /opt/homebrew/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle docker
antigen bundle docker-compose

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
#antigen theme robbyrussell
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship
# theme config
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  package       # Package version
  line_sep      # Line break
  char          # Prompt character
)
SPACESHIP_RPROMPT_ORDER=(
  exec_time     # Execution time
  exit_code     # Exit code section
  jobs          # Background jobs indicator
)


# Tell Antigen that you're done.
antigen apply