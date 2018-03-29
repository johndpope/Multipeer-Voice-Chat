#  Milestone 4

## General

This app lets you speak over a connection managed by the `MultipeerConnectivity` framework to nearby peers running the app. It captures and plays back audio through an  `AVAudioEngine`.

## Testing the App

This app requires multiple devices to show off its networking capabilities. To test, I reccomend running the app in a simulator and on a physical device at the same time. It's much less impressive if you have two simulator instances communicating with each other, as you'll only hear your computer's microphone input played back with a slight delay.

## State of the App

### Things that work
* You can operate the app in a basic way
* You can choose a name for others to see you as
* You can browse for peers
* You can invite peers
* You can accept invites from peers
* You can speak to peers
* You can tap the "Ongoing Call" button to advance to the in-call screen

### Bugs / things I'd like to have done
* The `AVAudioSession` doesn't resume correctly if the app is interrupted
* The user has no option to change where the audio is played through
* The call doesn't end properly when the `End Call` button is pressed in the InCallViewController
