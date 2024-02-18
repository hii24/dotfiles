# zsh config — sourced from ~/.zshrc symlink

# ──── path ──────────────────────────────────────────────────────
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# ──── history ───────────────────────────────────────────────────
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=~/.zsh_history
setopt SHARE_HISTORY HIST_IGNORE_DUPS HIST_IGNORE_SPACE

# ──── aliases ───────────────────────────────────────────────────
alias ll='ls -lah'
alias gs='git status -sb'
alias gd='git diff'
alias gl='git lg'
alias gco='git checkout'
alias gcm='git commit -m'
alias gp='git push'
alias gpf='git push --force-with-lease'
alias k='kubectl'
alias dc='docker compose'
alias serve='python3 -m http.server'

# ──── editor / pager ────────────────────────────────────────────
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less
export LESS='-R -i -F -X'

# ──── prompt: minimal but informative ───────────────────────────
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' %F{cyan}%b%f'
setopt PROMPT_SUBST
PROMPT='%F{green}%~%f${vcs_info_msg_0_}\n%F{magenta}❯%f '

# ──── nvm (lazy-load to keep shell startup fast) ────────────────
export NVM_DIR="$HOME/.nvm"
nvm() {
  unset -f nvm
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  nvm "$@"
}

# ──── direnv if installed ───────────────────────────────────────
command -v direnv >/dev/null && eval "$(direnv hook zsh)"
