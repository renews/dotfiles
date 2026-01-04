# use abbr to show the related command or alias when you dont want to show

# Fly.io
alias flyr 'fly ssh console --pty --select -C "/app/bin/collava remote"'
alias flydb 'fly proxy 5555:5432 -a collava-db'

################
# Elixir
alias mdg "mix deps.get"
alias mdc "mix deps.compile"
alias mdua "mix deps.update --all"

alias meg "mix ecto.generate"
alias mer "mix ecto.rollback"
alias mes "mix ecto.setup"
alias mem "mix ecto.migrate"

alias phxi "source .env ; iex -S mix"
alias phxs "source .env ; iex -S mix phx.server"
alias deps_ai "mix usage_rules.sync AGENTS.md --all \
        --inline usage_rules:all \
        --link-to-folder deps"
alias mini "NVIM_APPNAME=nvim-minimax nvim"

alias push_release "mix git_ops.release && git push --follow-tags"
################
# BOTSQUAD STUFF
alias gc-ssh-vm-0 "gcloud compute ssh bsqd-es-1-elastic-vm-0 --zone=europe-west4-a"
alias gc-ssh-vm-1 "gcloud compute ssh bsqd-es-1-elastic-vm-1 --zone=europe-west4-a"
alias gc-ssh-vm-2 "gcloud compute ssh bsqd-es-1-elastic-vm-2 --zone=europe-west4-a"
alias gc-ssh-vm-4 "gcloud compute ssh bsqd-es-1-elastic-vm-4 --zone=europe-west4-a"
alias gc-ssh-vm-lb "gcloud compute ssh bsqd-es-1-elastic-vm-lb --zone=europe-west4-a"

################
# movements
alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."
alias ..... "cd ../../../.."
alias ...... "cd ../../../../.."
alias cd. "cd .."
alias cd.. "cd .."

################
# replace default commands
alias find fd
alias bc better-commits
alias bb better-branch
alias cat bat
alias dig doggo # command-line DNS client
alias l "eza -la"
alias ld lazydocker
alias lg lazygit
alias lssh lazyssh
alias pipx "uv tool"
alias ls eza
alias ping gping
alias rm rip
alias speedtest "mac speedtest"
alias top bpytop
alias cal calcure
alias pomo "isw \
  --intervals 1500,300 --colours 2,1 \
  --shell 'terminal-notifier isw -ignoreDND -sound 1 -title \"Cycle Done\" -message \"Pomodoro interval complete (cycle %c)\"' \
  --pause \
  --descending \
  --show-cycle
"
alias csv "csvlens --colorful"
alias db lazysql
alias find_jobs "hnjobs fetch && hnjobs"
alias disk_usage duf # https://github.com/muesli/duf
alias du duf # https://github.com/muesli/duf
alias apis posting # https://github.com/darrenburns/posting
alias prs "gh dash" # https://www.gh-dash.dev/
alias trace trip # https://trippy.rs/guides/usage/
alias grep ug # https://github.com/Genivia/ugrep
alias "ps\ aux" procs
alias docker podman
alias myip "curl checkip.dyndns.org && curl ifconfig.me"

################
# Fianances
alias money bagels
alias fin bagels
alias stocks ticker # https://github.com/achannarasappa/ticker
alias stock ticker

################
# editing files
alias bashrc "nvim ~/.bashrc"
alias fishrc "nvim ~/.config/fish/"
alias nvimrc "nvim ~/.config/nvim/"
alias sbc "nvim ~/.config/shallow-backup.conf"
alias jobrc "nvim /Users/rene/Library/Application\ Support/hnjobs/config.json"

################
# updates
alias backup "shallow-backup --backup-all --no-new-backup-path-prompt  --no-splash"
alias sb backup
alias backup_restore "shallow-backup --reinstall-all"
alias update_copilot "bun install --global @githubnext/github-copilot-cli"
alias update_phoenix "mix archive.install hex phx_new; mix local.hex; mix local.rebar; mix archive.install hex igniter_new"

################
# dev
alias cppcompile "c++ -std=c++11 -stdlib=libc++"
alias dc docker-compose
alias dh "df -h"
alias rc "source .env ; bundle exec rails c"
alias rs "source .env ; bin/dev"
alias cop "gh copilot"
alias kd "source .env ; kamal deploy"
alias ks "source .env ; kamal setup"
# https://github.com/allinurl/goaccess
alias logparse goaccess

################
# NVIM configs
alias vi nvim
alias vim nvim

################
# findding stuff, we use Ugrep (ug)
alias uq 'ug -Q' # interactive TUI search (uses .ugrep config)
alias uz 'ug -z' # compressed files and archives search (uses .ugrep config)
alias ux 'ug -U --hexdump' # binary pattern search (uses .ugrep config)

alias ugit 'ug -R --ignore-files' # works like git-grep & define your preferences in .ugrep config

alias grep 'ug -G' # search with basic regular expressions (BRE) like grep
alias egrep 'ug -E' # search with extended regular expressions (ERE) like egrep
alias fgrep 'ug -F' # find string(s) like fgrep
alias zgrep 'ug -zG' # search compressed files and archives with BRE
alias zegrep 'ug -zE' # search compressed files and archives with ERE
alias zfgrep 'ug -zF' # find string(s) in compressed files and/or archives

alias xdump 'ugrep -X ""' # hexdump files without searching (don't use .ugrep config)
alias zmore 'ugrep+ -z -I -+ --pager ""' # view compressed, archived and regular files (don't use .ugrep config)

# git
alias gcempty "git commit --allow-empty -m 'empty -- forcing deploy' && ggpush"
alias ggpnp "git pull origin (current_branch) && git push origin (current_branch)"
alias ggpull "git pull origin (current_branch)"
alias ggpum "git pull upstream main"
alias ggpur "git pull --rebase origin (current_branch)"
alias ggpush "git push origin (current_branch)"
alias ggsup "git branch --set-upstream-to=origin/(current_branch)"
alias gitpristine "git reset --hard && git clean -dfx"
alias gst "git status"
alias gcm "git checkout main"
alias gpom "git pull origin main"

# mac stuff
alias hideFiles "defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"
alias showFiles "defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"

# utilities
alias h "cd $HOME"
alias kill "kill -9 %%"
alias lusers "dscl . list /Users | grep -v '^_'"
alias md mkdir
alias reload "exec fish"
alias shell "echo $SHELL"
alias speed400 "wget http://cachefly.cachefly.net/400mb.test > /dev/null"
alias today "date +'%A, %d of %B %Y'"

alias spd-conf "env -i /usr/bin/python3 /usr/bin/spd-conf"

# common typos
alias sl ls
