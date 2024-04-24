show() { 
	if [ "$*" == "dotfiles" ]; then
		showDotfiles
	else
		echo "Unhandled command"
	fi
}

hide() {
	if [ "$*" == "dotfiles" ]; then
		hideDotfiles
	else
		echo "Unhandled command"
	fi
}

showDotfiles() {
	defaults write com.apple.Finder AppleShowAllFiles true;
	killall Finder	
}

hideDotfiles() {
	defaults write com.apple.Finder AppleShowAllFiles false;
	killall Finder	
}

decodeProvision() { security cms -D -i  $1 }
