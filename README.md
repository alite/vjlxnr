# VJlxnr

… (one more) simple VJing tool made with Max/Jitter/Max4Live …

## What it does …

It moves and zooms an image according to the audio level which is grabbed at periodic intervals or by a given threshold. Optional a second image layer can be switched on, which moves independently from the other image. The resulting image is calculated by multiplicating the pixel values.
The resulting image also can be faded in and out or be modified by a color filter.
The design of this VJing tool is focussed on being mostly programmable/automatable. This way a musician can integrate video effects into performance without the need of taking hands off his music intrument.

## What it contains …

The project contains a Max4Live audio device for use in Ableton Live and a folder with a set of images for free use.

## How it works …

* Drop the M4L audio device onto a track in Ableton Live.
* Select a resolution for the target window containing the video FX.
* Drop a folder containing (up to 32) images (currently only PNGs are supported) on the dropfile zone.
* Stream in sound.
* Play with the knobs.
* Enjoy that psychedelic shit …
* … or read the user manual below …

# Details / Manual

After dropping the device onto a track …

1. Choose a resolution (for fullscreen mode) in the menu at the right bottom.
2. Drop a folder containing up to 32 PNG images onto the drop file zone.
3. Choose an image in the menu on the left top and enable the FX with the toggle left to it.
4. Fade in the image by increasing the value of the black number box on the right of the image previews; play with the filter functionality be changing the RGB-numbers.
5. Stream in music. Play with the various knobs, menus and faders; change zoom depth, intensity, tempo and smoothness of movement.
6. Choose a second image in the right image menu, enable it by the toggle left to it and fade in the layer with the number box on the top right. Try various combinations. Hint: b/w images work good for masking!
7. Change the snyc rate in the menus below the faders - the images will move in sync with the metronome.
8. Increase the threshold values, so the image movement will be influenced by beats, too. A value of '0' disables triggering by beats.
9. Press 'ESC' to toggle fullscreen mode.
10. Have fun! You can find more information [here](https://knotiz.columba.uberspace.de/redmine/projects/vjlxnr-public/wiki) - mostly in German language …

## Caveats / known issues

* Before changing the image resolution or loading a new set of images it is recommende to stop the Live transport, since these actions need a lot of ressources and performance could hang.
* Currently only PNG images are supported.
* Due to limitations of the [live.menu] objects, there is a fixed number of 32 menu entries. If less than 32 images are loaded and a higher indexed menu entry is choosen, the resulting image will be black. This will be fixed in a futer release.

# Changelog

## Release 0.2.0

* Rewrite of movement algorithm
* 'Smooth' values are now in sync with metronome
* Max/Jitter version ist no longer supported, focussed on m4l device
* Fade-in, fade-out, color filter implemented
* Fading of FG layer implemented
* Independent settings of sync rate, threshold, etc. for each layer
* Improved set of media data
* Automatic reloading of images after resolution change
* Automapping for use with Ableton Push
* Settings now are saved with live set
* Minor bugfixes

## Release 0.1.1

* BugFix: Fixed freezing of image movement

## Release 0.1.0

Initial Version - Prototype

* Added FG an BG image layer with independent movement
* Added buffering of media data
* Corrected ratio for different resolutions
* Built Max/Jitter and Max4Live versions of the device

