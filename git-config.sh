[alias]
        lg = log
        ls = log --pretty=format:"%ci\\ %C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate
        ll = log --pretty=format:"%ci\\ %C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat
        co = checkout
        st = status
        ci = commit
        x-release = !git checkout release && git pull && git merge master && git push && git checkout master
        prune-branches = !git remote prune origin && git branch -vv | grep ': gone]' | awk '{print $1}' | xargs -r git branch -D
