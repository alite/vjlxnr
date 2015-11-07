# VJlxnr

… (one more) simple VJing tool made with Max/Jitter/Max4Live …

## What it does …

It moves and zooms an image according to the audio level which is grabbed at periodic intervals or by a given threshold. Optional a second image layer can be switched on, which moves independently of the other image layer. The resulting image is calculated by multiplicating the pixel values.
The resulting image also can be faded in and out or be modified by a color filter.
The design of this VJing tool is focussed on being mostly programmable/automatable. This way a musician can integrate video effects in his performance without the need of taking hands off his music intrument.

## What it contains …

The project contains a Max4Live audio device for use in Ableton Live and a folder containing a set of images for free use.

## How it works …

* Drop the M4L audio device onto a track in Ableton Live.
* Select a resolution for the target window containing the video FX.
* Drop a folder containing (up to 32) images (currently only PNGs are supported) on the dropfile zone.
* Stream in sound.
* Play with the knobs, buttons and sliders.
* Enjoy that psychedelic shit …
* … or read the user manual below …

## Caveats / known issues

* Before changing the image resolution or loading a new set of images it is recommende to stop the Live transport, since these actions need a lot of ressources and performance could hang.
* Currently only PNG images are supported.
* When using Ableton Push switching between note- and session-mode causes a short delay of video movement.
* Some PNG files happen to not show in preview window and not to be rendered in [jit.window] - seems happen due to color profile issues - maybe ...

# Details / Manual

After dropping the device onto a track …

1. Choose a resolution (for fullscreen mode) in the menu at the right bottom.
2. Drop a folder containing up to 32 PNG images onto the drop file zone.
3. Choose an image in the menu on the left top and enable the FX with the toggle left to it.
4. Fade in the image by increasing the value of the black number box on the right of the image previews; play with the filter functionality by changing the RGB-numbers.
5. Stream in music. Play with the various knobs, menus and faders; change zoom depth, intensity, tempo and smoothness of movement.
6. Choose a second image in the right image menu, enable it by the toggle left to it and fade in the layer using the number box on the top right. Try various combinations. Hint: b/w images work good for masking!
7. Change the snyc rate in the menus below the faders - the images will move in sync with the metronome.
8. Increase the threshold values, so the image movement will be influenced by beats, too. A value of '0' disables triggering by beats.
9. Press 'ESC' to toggle fullscreen mode.
10. Have fun! You can find more information [here](https://knotiz.columba.uberspace.de/redmine/projects/vjlxnr-public/wiki) - mostly in German language …

