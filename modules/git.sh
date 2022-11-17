#/*
#|--------------------------------------------------------------------------
#| Git functions 
#|--------------------------------------------------------------------------
#*/

# @todo: this doesn't return the correct current branch
branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p');
# branch=$(git branch  --no-color  | grep -E '^\*' | sed 's/\*[^a-z]*//g')
lastcommit=$(git rev-parse $branch);
updateMessage="updated from $environment at $timestamp";

# This is needed because $branch variable is set once
# So we must either updating before use or calling a function that returns currente
getCurrentBranch() { branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p') }
currentBranch() {
	local  currentBranch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
	echo "$currentBranch"
}

add () { git add $1 }
status () { git status }
fetch () { git fetch -p }
pull () { git pull origin $1 }
append () { git add . ; git commit --amend --no-edit }
amend() { git commit --amend -m $1 }
# branch () { git branch $1 }
branch() { git for-each-ref --sort=-committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))' }
squash () { git rebase -i HEAD~$1 }

# Pass target commit hash as a parameter
squashFrom() { git rebase -i $1 }
create() { git checkout -b $1 }
checkout() { git checkout $1 }
delete() { git branch -D $1 }
deleteRem() { git push origin --delete $1 }
commit() { git commit -m $1 }
clone () { git clone git@github.com:crisrojas/"$1".git }
pick() { git cherry-pick $1 }
stash() { git stash save }
pop() { git stash pop }
restore() { git restore $1 }
replace () { delete $1; rename $1 }
tag() { git tag $1 }
diffs() { git diff HEAD^1 }
rebase() { git rebase --$1   }

##### Choose a better name
# for this functions
function force { 
	# @todo: Is this really needed?
  git push -f origin $(currentBranch)
}

function addcommit {
 git add .
 git commit -m $1
}



aforce() { append ; force }

# todo:
push() {
	if [[ "$*" == *dotfiles* ]]; then
		cd ~/dotfiles;
		addcommit $updateMessage
		git push origin $(currentBranch)
	elif [[ "$*" == *bear* ]]; then
		goto bear;
		addcommit $updateMessage
		git push origin master
	elif [[ "$*" == *new* ]]; then
		addcommit $updateMessage
		git push origin $(currentBranch)
	elif [[ "$*" == *criscontent* ]]; then
		goto cristian.lat
		addcommit $updateMessage
		git push origin $(currentBranch)
		curl -X POST -d {} https://api.netlify.com/build_hooks/63531117ba64fa04d1d632a3
	else
 		 git push origin $(currentBranch)
	fi
}

log() {
	if [[ "$*" == *dotfiles* ]]
	then
		cd ~/dotfiles;
		git log
	else
		git log $1
	fi
}

function rename {
	# @todo: is this really needed?
	# wouldn't this be enough?:
	# rename() { git branch -M $1 }
  git branch -M $(currentBranch) $1
}