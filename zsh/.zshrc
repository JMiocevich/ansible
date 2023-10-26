export PATH="$HOME/bin:$PATH"
#stop aws dodgey stuff
export SAM_CLI_TELEMETRY=0
#Add DEfault AWS Region
export AWS_REGION=ap-southeast-2


function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

setopt PROMPT_SUBST
export PROMPT='%F{grey}%n%f %F{cyan}%~%f %F{green}$(parse_git_branch)%f %F{normal}$%f '


#ALIAS
alias gcob="git checkout -b"
alias gco="git checkout"
alias gcom="git checkout main"
alias gsave="git add -A && git commit -m"
alias gpull="git pull"
alias gs="git status"
alias gdone="git push --set-upstream origin HEAD && gh pr create"
alias gdonew="git push --set-upstream origin HEAD && gh pr create --web"
alias gdoner="git push --set-upstream origin HEAD && gh pr create -r 'edn01'"
alias gref="git checkout main && git pull"
alias greset="git fetch origin && git reset --hard origin/main"
alias gpush="git push"
alias ghlist="gh pr list"
alias ghlistall="gh pr list -s all"
alias ghco="gh pr checkout"
alias tt="npm run test"
alias ti="npm run test:integration"
alias ta="npm run test:accept"
alias tw="npm run test:watch"
alias sd="./ci/scripts/sandbox-deploy.sh"
alias setenv=". ./ci/scripts/set-verify-env.sh"
alias update="brew update && brew upgrade"
alias ghp="git add -A && git commit -m "commit"  && git push"


export GPG_TTY=$(tty)
eval "$(github-copilot-cli alias -- "$0")"
