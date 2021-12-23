#/*
#|--------------------------------------------------------------------------
#| Git functions 
#|--------------------------------------------------------------------------
#*/

add () { git add $1 }
status () { git status }
fetch () { git fetch -p }
pull () { git pull origin $1 }
append () { git add . ; git commit --amend --no-edit }
amend() { git commit --amend -m $1 }
branch () { git branch }
squash () { git rebase -i HEAD~$1 }
create() { git checkout -b $1 }
checkout() { git checkout $1 }
delete() { git branch -D $1 }
commit() { git commit -m $1 }
clone () { git clone git@github.com:crisrojas/"$1".git }
pick() { git cherry-pick $1 }
stash() { git stash save }
pop() { git stash pop }
restore() { git restore $1 }
replace () { delete $1; rename $1 }
tag() { git tag $1 }
lastdiff() { git diff HEAD^1 }

##### Choose a better name
# for this functions
function force { 
	# @todo: Is this really needed?
	branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
  git push -f origin $branch
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
		git add .;
		git commit -m "updated at $timestamp";
		git push origin master
	elif [[ "$*" == *bear* ]]; then
		goto bear;
		git add .
		git commit -m "updated at $timestamp";
		git push origin master
	else
		 branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p');
 		 git push origin $branch
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
  branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
  git branch -M $branch $1
}