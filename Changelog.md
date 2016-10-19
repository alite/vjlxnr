# Changelog

_(Versions tagged 'vX.Y.Z+freeze' are not mentioned here, they relate to the respective versions but are the 'frozen' versions of the device, as recommended for distribution)_

## Caveats / known issues

* Before changing the image resolution or loading a new set of images it is recommended to stop the Live transport, since these actions need a lot of ressources so performance could lag.
* Currently only PNG images are supported.
* When using Ableton Push switching between note- and session-mode causes a short lag of video movement.
* Some PNG files happen to show not correctly in preview window and won't render in [jit.window] - this seems possibly to happen due to color profile issues - maybe ...

## Release v1.0.1

Web Site Launch

* Launched web site on GitHub Pages (on separate branch 'gh-pages'
* Renamed 'doc' folder to '\_docs' for easier syncing with gh-pages

## Release v1.0.0

First - hopefully - stable release

* Testing; minor fixes
* Removes annoying mouse-over tool-tips

## Release v1.0.0-rc1

Testing release

* Some minor fixes

## Release v1.0.0-beta

* Some performance improvements
* Some minor bugfixes
* Some testing

## Release v0.3.2

* Added install instructions to README
* Added system requirements to README
* Fixed some Typos

## Release v0.3.1

* Bugfix: added missing media files to docs

## Release v0.3.0

* Further efforts in fixing an issue where movement of a layer got frozen - it seems chances are good this is fixed now
* Changing the syncrate or starting DAW transport now triggers movement immediately
* Fixed an issue where fast parameter changes caused loss of values
* Fixed an issue where changing both images simultaneously (via automation) failed
* Minor bugfixes
* Some [jit.matrix] are replaced by [jit.gl.texture]
* Parameter steps are now limited to 127
* GUI got some polish
* Added some docs (partially German)
* New feature: random damping of deflection in x- and y-direction
* New feature: saturation filter for mask layer
* New feature: image resolution now can be set automatically according to window size

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

