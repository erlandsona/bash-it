cite 'about-alias'
about-alias 'common git abbreviations'

########################################
### My Git Aliases
########################################
alias ga="git add"
alias ga.="git add -A"
alias gap="git add -p"
alias gbr="git branch -av"
# alias gch="git checkout"
alias gcl="git clone"
# alias gco="git commit"
alias gf='git fetch --all --prune'
alias gfbr="git fetch && git branch -av"
alias gft='git fetch --all --prune --tags'
alias gfv='git fetch --all --prune --verbose'
alias gftv='git fetch --all --prune --tags --verbose'
alias ginit="git init"
alias glg="git log --graph --pretty=format:'%C(dim yellow)Commit: %Cred%h%C(dim yellow) Author: %C(ul cyan)%aN%Creset %C(auto)%d%Creset%n%s%n%b'"
alias glog="git log --graph --pretty=format:'%C(dim yellow)Commit: %Cred%h%C(dim yellow) Author: %C(ul cyan)%aN%Creset %C(auto)%d%Creset%n%s%n%b'"
# alias gmr="git merge"
alias gm="git merge"
alias gpl="git pull"
alias gps="git push"
alias grm="git rm"
alias grs="git reset"
alias gst="git status -sb"

alias gsu='git submodule update --init --recursive'

########################################
### Default Aliases
########################################

alias g='git'
# alias gl='git pull'
# alias gpr='git pull --rebase'
# alias gpp='git pull && git push'
# alias gup='git fetch && git rebase'
# alias gp='git push'
# alias gpo='git push origin'
alias gpu='git push --set-upstream'
alias gpom='git push origin master'
alias gdv='git diff -w "$@" | vim -R -'
alias gc='git commit -v'
# alias gca='git commit -v -a'
# alias gcm='git commit -v -m'
# alias gci='git commit --interactive'
# alias gb='git branch'
# alias gba='git branch -a'
# alias gbt='git branch --track'
# alias gcount='git shortlog -sn'
# alias gcp='git cherry-pick'
alias gco='git checkout'
alias gcb='git checkout -b'
# alias gct='git checkout --track'
# alias gexport='git archive --format zip --output'
# alias gdel='git branch -D'
# alias gmu='git fetch origin -v; git fetch upstream -v; git merge upstream/master'
# alias gll='git log --graph --pretty=oneline --abbrev-commit'
# alias gg="git log --graph --pretty=format:'%C(bold)%h%Creset%C(magenta)%d%Creset %s %C(yellow)<%an> %C(cyan)(%cr)%Creset' --abbrev-commit --date=relative"
# alias ggs="gg --stat"
# alias gsl="git shortlog -sn"
alias gw="git whatchanged"
# alias gt="git tag"
# alias gta="git tag -a"
# alias gtd="git tag -d"
# alias gtl="git tag -l"


# # From http://blogs.atlassian.com/2014/10/advanced-git-aliases/
# # Show commits since last pull
# alias gnew="git log HEAD@{1}..HEAD@{0}"
# # Add uncommitted and unstaged changes to the last commit
# alias gcaa="git commit -a --amend -C HEAD"

# case $OSTYPE in
#   darwin*)
#     alias gtls="git tag -l | gsort -V"
#     ;;
#   *)
#     alias gtls='git tag -l | sort -V'
#     ;;
# esac

if [ -z "$EDITOR" ]; then
    case $OSTYPE in
      linux*)
        alias gd='git diff | vim -R -'
        ;;
      darwin*)
        alias gd='git diff | mate'
        ;;
      *)
        alias gd='git diff'
        ;;
    esac
else
    alias gd="git diff | $EDITOR"
fi
