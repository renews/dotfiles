if status is-login
    and status is-interactive
#only ask pw 1 time for ssh key git
    keychain --eval --quiet ~/.ssh/id_ed25519 | source
end
if status is-interactive
  mise activate fish | source
  atuin init fish | source
  eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
  set -gx HOMEBREW_PREFIX (brew --prefix)

  zoxide init fish | source
  fzf --fish | source
  starship init fish | source
else
  mise activate fish --shims | source
end


# GLOBALS
set -gx EDITOR nvim
set -gx SHELL fish
set -gx HOMEBREW_NO_ENV_HINTS true

set -Ux PAGER less
set -Ux EDITOR nvim
set -Ux VISUAL nvim

set -gx GPG_TTY (tty)
