function nvims
    set items (find $HOME/.config -maxdepth 2 -name "init.lua" -type f -execdir sh -c 'pwd | xargs basename' \;)
    set selected (printf "%s\n" $items | fzf --preview-window 'right:border-left:50%:<40(right:border-left:50%:hidden)' --preview 'ls --color=always ~/.config/{} | head -200')
    if test -z $selected
        return 0
    else if test $selected = nvim
        set selected ""
    end
    set -x NVIM_APPNAME $selected
    nvim $argv
end
