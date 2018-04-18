tell application "Airfoil"
	set kitchenSpeaker to first speaker whose name is "Kitchen"
	set officeSpeaker to first speaker whose name is "Office"
	set lrSpeaker to first speaker whose name is "Living Room"
	set bedSpeaker to first speaker whose name is "Bedroom"
	set (volume of kitchenSpeaker) to 0.25
	set (volume of officeSpeaker) to 0.25
	set (volume of lrSpeaker) to 0.25
	set (volume of bedSpeaker) to 0.25
	disconnect from kitchenSpeaker
	disconnect from officeSpeaker
	disconnect from lrSpeaker
	disconnect from bedSpeaker
end tell
