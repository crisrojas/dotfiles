#/*
#|--------------------------------------------------------------------------
#| Git functions 
#|--------------------------------------------------------------------------
#*/

add () { git add $1 }
status () { git status }
fetch () { git fetch -p }
pull () { git pull $1 }
append () { git add . ; git commit --amend --no-edit }
branch () { git branch }
squash () { git rebase -i HEAD~$1 }
create() { git checkout -b $1 }
checkout() { git checkout $1 }
delete() { git branch -D $1 }
commit() { git commit -m $1 }
clone () { git clone git@github.com:crisrojas/"$1".git }
rename() { git branch -M $1 }

# Choose a better name
# for this functions
force() { git push -f }
aforce() { append ; force }

# todo:
push() {
	if [[ "$*" == *dotfiles* ]]
	then
		cd ~/dotfiles;
		git add .;
		git commit -m "updated";
		git push origin master
	else
		echo "NO"
	fi
}
