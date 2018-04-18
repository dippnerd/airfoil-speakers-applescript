on run argv
	set v to item 1 of argv/100
	activate application "Airfoil"
	tell application "Airfoil"
		set kitchenSpeaker to first speaker whose name is "Kitchen"
		set officeSpeaker to first speaker whose name is "Office"
		set lrSpeaker to first speaker whose name is "Living Room"
		set bedSpeaker to first speaker whose name is "Bedroom"
		set (volume of kitchenSpeaker) to v
		set (volume of officeSpeaker) to v
		set (volume of lrSpeaker) to v
		set (volume of bedSpeaker) to v
	end tell
end run