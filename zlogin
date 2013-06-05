[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# DO NOT EDIT BELOW THIS LINE

# adds the current branch name in green
git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo "[%{$fg_bold[cyan]%}${ref#refs/heads/}%{$reset_color%}]"
  fi
}

# makes color constants available
autoload -U colors
colors

# enable colored output from ls, etc
export CLICOLOR=1

# expand functions in the prompt
setopt prompt_subst

# prompt
export PS1='🍔   👀  $(git_prompt_info)[${SSH_CONNECTION+"%{$fg_bold[orange]%}%n@%m:"}%{$fg_bold[green]%}%~%{$reset_color%}]  '

# load thoughtbot/dotfiles scripts
export PATH="$HOME/.bin:$PATH"
