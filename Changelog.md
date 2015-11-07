# Changelog

## Release v0.2.1

BugFix release

* Fixed an issue where automation of changing both image layers at the same time causes undefined behaviour.
* If a image number higher than the number of loaded images it is mapped to lower numbers by modulo calculation. This fixes the issue of black screen.
* Fixed an issue (at least tried to …) where sometimes one of the image layers freezes in movement
* Some minor bugfixes and improvements

## Release v0.2.0

* Rewrite of movement algorithm
* 'Smoothness' is now in sync with metronome
* Max/Jitter version ist no longer supported, focussed on m4l device
* Fade-in, fade-out, color filter implemented
* Fading of FG layer implemented
* Independent settings of sync rate, threshold, etc. for each layer
* Improved set of media data
* Automatic reloading of images after changing resolution
* Automapping for use with Ableton Push
* Settings now are saved with live set
* Minor bugfixes

## Release v0.1.1

* BugFix: Fixed freezing of image movement

## Release v0.1.0

Initial Version - Prototype

* Added FG an BG image layer with independent movement
* Added buffering of media data
* Corrected ratio for different resolutions
* Built Max/Jitter and Max4Live versions of the device

