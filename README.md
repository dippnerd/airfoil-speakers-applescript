# airfoil-speakers-applescript
These are the AppleScripts I use with the [Airfoil](https://www.rogueamoeba.com/airfoil/) app for macOS to toggle my AirPlay speakers. I use [Airfoil Satellite](https://www.rogueamoeba.com/airfoil/#satellite) as well, turning my Mac Mini into an AirPlay receiver, then set Airfoil's source to "System Audio" so that any system audio can be broadcast over the house speakers via AirPlay. This is also useful when combined with the "say" command on macOS, as you can have it broadcast text as spoken word over the house speakers. 

Rogue Amoeba has a [pretty well documented interface](https://www.rogueamoeba.com/support/knowledgebase/?showArticle=AirfoilAppleScript) to Airfoil using AppleScript, letting you take control of both AirPlay speakers as well as Apple TVs. 

Initially I just wanted a way to toggle the speakers on and off. Thanks to [Ben Dodson's Homebridge plugin](https://github.com/bendodson/homebridge-applescript) I can assign scripts to the on/off of a fake HomeKit switch and have it toggle the speakers accordingly. After more searching, however, I found he extended this concept further with his [AppleScript Lightbulb plugin](https://github.com/bendodson/homebridge-applescript-file-lightbulb), which not only lets you set scripts for on/off, but it uses the "brightness" value of a fake lightbulb to allow you to control volume. This same idea can be applied to Airfoil since they use the same AppleScript interface. Just configure the scripts in Homebridge as such, updating your file paths accordingly:
```
{
	"accessory": "ApplescriptFileLightbulb",
	"name": "Airfoil Speakers",
	"on": "~/airfoilSpeakersOn.applescript",
	"off": "~/airfoilSpeakersOff.applescript",
	"brightness": "~/airfoilVolume.applescript"
}
```
Depending on how you wish to name things, it may help to use both plugins for separate purposes, naming the lightbulb "volume" and the others "speakers", for example, but use what works best for you.

Overall, this combination of Airfoil, AirPlay speakers all over my house (in my case it's just Airport Express's attached to amps/speakers and tucked out of sight) and AppleScripts/Homebridge has given me full control over my audio, both from the Home widget in Control Center, as well as via Siri for commands like "turn on Airfoil Speakers" or "set Airfoil Speakers to 50%". 

To go a step further, I've also implemented a "[Flash Briefing](https://github.com/dippnerd/applescript-flash-briefing)" (similar to the Amazon Echo one) that uses a similar method to turn on house speakers and announce things over them, feel free to check it out.