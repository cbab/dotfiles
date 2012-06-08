# Aliases
if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

# Functions
if [ -f ~/.functions ]; then
  source ~/.functions
fi

# Prompt
if [ -f ~/.prompt ]; then
  source ~/.prompt
fi

# Editors
export EDITOR='emacs'
export SVN_EDITOR=$EDITOR

# Adjust path
if [ -d ~/bin ]; then
  export PATH=$HOME/bin:$PATH
fi
