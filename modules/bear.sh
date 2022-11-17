bear() {
	if [[ "$*" == *publish* ]]; then
		cd ~/dev/sites/bearkit/static;
		rm -rf images;
		cp -R "/Volumes/Macintosh HD/Users/crisrojas/Library/Group Containers/9K33E3U3T4.net.shinyfrog.bear/Application Data/Local Files/Note Images" "/Volumes/Macintosh HD/Users/crisrojas/dev/sites/bearkit/static";
		mv 'Note Images' 'images';
		cp -R "/Volumes/Macintosh HD/Users/crisrojas/Library/Group Containers/9K33E3U3T4.net.shinyfrog.bear/Application Data/database.sqlite" "/Volumes/Macintosh HD/Users/crisrojas/dev/sites/bearkit/database.sqlite";
		cd ~/dev/sites/bearkit;
		addcommit $updateMessage;
		push
	else
		echo "Command not found"
	fi
}

bearPublish() {
	
}