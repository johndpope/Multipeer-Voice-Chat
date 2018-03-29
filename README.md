# Multipeer Voice Chat

This app uses Apple's `MultipeerConnectivity` and `AVFoundation` frameworks to facilitate area-local peer-to-peer voice calls with up to eight users.

This app is not yet finished, but its core functionality is present. There is only one major known issue -- hitting the `End Call` button in the `InCallViewController`.

I plan to change the layout of the app significantly to improve usability.

## Testing the App

This app requires multiple devices to show off its networking capabilities. To test, I reccomend running the app in a simulator and on a physical device at the same time. It's much less impressive if you have two simulator instances communicating with each other, as you'll only hear your computer's microphone input played back with a slight delay.

The unit tests and UI tests currently don't do anything.

## State of the App

### Things that work
* You can operate the app in a basic way
* You can choose a name for others to see you as
* You can browse for peers
* You can invite peers
* You can accept invites from peers
* You can speak to peers
* You can tap the "Ongoing Call" button to advance to the in-call screen

### Bugs / Things I want to change
* The `AVAudioSession` doesn't resume correctly if the app is interrupted
* The user has no option to change where the audio is played through
* The call doesn't end properly when the `End Call` button is pressed in the InCallViewController
