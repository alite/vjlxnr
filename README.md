# VJlxnr

… (one more) simple VJing tool made with Max/Jitter/Max4Live …

## What it does …

It moves and zooms an image according to the audio level which is grabbed at periodic intervals or by a given threshold. Optional a second image layer can be switched on, which moves independently from the other image. The resulting image is calculated by multiplicating the pixel values.

## What it contains …

The project contains a standalone Max/Jitter Version (in the _patchers_ folder the file called _vjlxnr.maxpat_) and a Max4Live Audio FX Device to plug into a track of Ableton Live (look for the file _m4l.vjlxnr.amxd_ in the _patchers_ folder).

## How it works …

* Select a resolution for the target window containing the video FX.
* Drop a folder containing (up to 32) images (currently only PNGs are supported) on the dropfile zone.
* Stream in sound.
* Play with the knobs.
* Enjoy that psychedelic shit …
* … or read the user manual below …

# Details / Manual

## Max/Jitter Standalone Device

_(Use 'vjlxnr.maxpat' in the patchers folder)_

1. In the menu on the top right choose the resolution the display window will use (when put to fullscreen mode). Attention! If you change this setting, alle images have to be reloaded!
2. Drop a folder containing up to 32 images onto the dropfile zone on the top right. The images will be loaded, scaled, cut and cached for further use (the images on your hard disk will not be touched!).
3. In the preview areas you now should see the first images loaded. Click the left toggle above the preview area to enable the video fx, choose another image via the menu.
Optionally click the right toggle to enable the second layer of image and use the menu to change.
4. Stream in Audio and play around with the knobs …
5. _scale_ is how far the image will be zoomed into, _sense_ is the amount of movement and _smooth_ sets how fast the image moves to the next position.
6. In the top left menu choose the refresh rate.
7. Use the _thrsh_ slider to set a threshold of audio level the signal is grabbed, signaled by the button below. This can be used alone (setting refresh rate to '0') or in combination.
8. Press 'ESC' to put the window to fullscreen mode.

## Max4Live Audio FX Plugin

_(Use 'm4l.vjlxnr.amxd' in the patchers folder)_

… works similar to the standalone device.

The _refresh rate_ and _resolution_ menus are at the right bottom.

Additionaly in the m4l device you can select synchronous refresh rates, like 4n (quarter note), 16n (sixteenth note), 4.0.0 (4 bars).

As a limitation of m4l objects the menus for choosing images doesn't contain the file names. Instead of they show names like 'img 01'. So the filename is shown below the preview area.

It is possible to control m4l.vjlxnr with Ableton Push and to use automation.

Maybe after closing the device or live you will be asked to save a file called _vjlxnr.folderpath.json_ - please save it in your Live project folder. (I hope this issue will be fixed in a future release …).