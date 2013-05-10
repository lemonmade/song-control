# Song Control
## An Alfred Workflow by Chris Sauve of [pxldot][PXLDOT]

## Description
This is a workflow for Alfred 2 that allows you to do most common actions on the currently playing iTunes track. You can rate it, add/ remove it from your (non-smart) playlists, play, pause, play another random song or go to the next/ last song.


## Installation
This workflow requires [Alfred 2][ALFRED] and the [Alfred Powerpack][POWERPACK]. To be clear, that means that it *doesn't* work with Alfred 1 and it *doesn't* work without the Powerpack. If that is upsetting to you I recommend that you quiet down, support these awesome folks by buying their software, and *then* using this tool.

Once you've got the requisite pieces, you can easily install the workflow by [downloading the latest version][DOWNLOAD] and double clicking on the `.alfredworkflow` file. This should open Alfred 2 and prompt you to install the workflow automatically.


## Using the Workflow
The workflow responds to a number of different commands, each of which is detailed below:

- `list <arg>`: this will offer to add the current track to playlists in your iTunes library matching a search for the argument (`<arg>`). If the song is already in that playlist, it will offer to remove it. Typing `list *` will show you every (non-smart and non-special) playlist. Note that if you are removing a song from a playlist that is currently playing, it will automatically move to the next song to prevent the music from suddenly stopping.

- `rate <arg>`: this will rate the current track based on the argument you provide (`<arg>`). Stars are set out of 5 (i.e., you would enter `rate 3`, `rate 4.5`, etc). This function supports half-star ratings, but remember to enable them in iTunes first by typing the following into the terminal: `defaults write com.apple.iTunes allow-half-stars -bool TRUE`

- `sinfo`: Shows you the current track name, rating, artist, and album in Alfred.

- `play`, `pause`, `next`, `previous`, and `random`: exactly what you'd expect.


## Version History
- 1.0.0 (May 10, 2013): Initial release.


[PXLDOT]:http://pxldot.com
[ALFRED]:http://www.alfredapp.com/
[POWERPACK]:http://www.alfredapp.com/powerpack/
[DOWNLOAD]: