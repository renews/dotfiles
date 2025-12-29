function current_branch
    set branch (git rev-parse --abbrev-ref HEAD 2>/dev/null)
    if test $status -eq 0
        echo $branch
    else
        echo "not a git repo"
    end
end
