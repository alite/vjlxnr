# VJlxnr

… (one more) simple VJing tool made with Max/Jitter/Max4Live …

## What it does …

It moves and zooms an image (_image layer_) according to the audio level which is sampled at periodic intervals or when exceeding a given threshold. Optional a second layer (_mask layer_) can be switched on, which moves independently of the other image layer. The resulting image is calculated by multiplicating the pixel values.
The resulting image also can be faded in and out or be modified by color filters.
The design of this VJing tool is focussed on being mostly programmable/automatable. This way a musicians can integrate video effects in their performance without the need of taking hands off their musical intruments.

## What it contains …

The project contains a Max4Live audio device for use in Ableton Live and a folder containing a set of images for free use. (See [License](LICENSE.txt))

## How it works …

* Drop the M4L audio device onto a track in Ableton Live.
* Select a resolution for the target window containing the video FX.
* Drop a folder containing (up to 32) images (currently only PNGs are supported) on the dropfile zone.
* Stream in sound.
* Play with the knobs, buttons and sliders.
* Enjoy that psychedelic shit …
* … or read the user manual below …

## Caveats / known issues

* Before changing the image resolution or loading a new set of images it is recommended to stop the Live transport, since these actions need a lot of ressources so performance could lag.
* Currently only PNG images are supported.
* When using Ableton Push switching between note- and session-mode causes a short lag of video movement.
* Some PNG files happen to show not correctly in preview window and won't render in [jit.window] - this seems possibly to happen due to color profile issues - maybe ...

# Details / Manual

## Quickstart

After dropping the device onto a track …

1. Choose a resolution (for fullscreen mode) in the menu at the right bottom.
2. Drop a folder containing up to 32 PNG images onto the drop file zone.
3. Choose an image in the menu on the left top and enable the FX with the toggle left to it (1.).
4. Fade in the image by increasing the value of the number box on the right top of the image previews (4.); play with the filter functionality by changing the RGB-numbers (10. to 12.).
5. Stream in music. Play with the various knobs, menus and faders; change zoom depth, intensity, tempo and smoothness of movement.
6. Choose a second image in the right image menu, enable it by the toggle left to it and fade in the layer using the number box on the top right. Try various combinations. Hint: b/w images work good for masking!
7. Change the snyc rate in the menus (3. and 6.) - the images will move in sync with the metronome.
8. Increase the threshold values, so the image movement will be influenced by beats, too. A value of '0' disables triggering by beats.
9. Press 'ESC' to toggle fullscreen mode.

## Overview

Control elements of the vjlxnr user interface:

<img src="doc/img/vjlxnr-gui.png" width="640px" alt="vjlxnr GUI" />

## Detailed description of GUI elements

1. Turn on/off the device
2. Select image for image layer
3. Sync rate of image layer; the audio level is read in this interval and triggers a movement impulse
4. Global fade in/out
5. Turn on/off mask layer
6. Select image for mask layer
7. Sync rate mask layer; see 2.
8. Fade in/out of mask layer
9. Threshold mask layer; if the audio level exceeds the threshold, an additional impulse is triggered independent of the sync rate
10. Red filter; decreasing fades out the red channel of the resulting image; changing this parameter has global effect
11. Green filter; decreasing fades out the green channel of the resulting image; changing this parameter has global effect
12. Blue filter; decreasing fades out the blue channel of the resulting image; changing this parameter has global effect
13. Drop zone; move and drop a folder containing up to 32 PNG files onto this area; the media data gets compiled (according the resolution parameter, see 15.) and buffered for effective use during performance (this process can take some time); keep in mind that the video gets stuck during this operation, so it should be avoided while the transport of your DAW is running; once the media data is prepared, ist is saved within the Live Set
14. Saturation (color) of the mask layer
15. Video resolution; this parameter changes the size of the buffered media data (it does NOT set the size of the video window!); should be choosen according to the device playing the video (i.e. for use with a full HD beamer, set it to 1920x1080), but keep in mind the higher the resolution, the more memory and CPU is used (every change of an image causes copying image data from RAM memory to the graphics card memory); lsetting this value to 'auto' scales the image to fit in the actual size of the video window, 'auto 2x' sets it to 4 times the actual size
16. Indicator of a threshold impulse - mask layer
17. Random damping of the movement in x- and y-direction of the mask layer; a value of '0' means no damping occurs, a value of '100' means deflection depends to 100% on accident
18. Influences the amount of movement in z-direction of the mask layer
19. Influences the smoothness of movement of the mask layer; a value of '1' means, moving the layer to the new/next position takes exactly as long as set by the parameter sync rate; higher values lead to slower, 'smoother' and shorter movement (the layer will never reach it's next position), smaller values speed up movement so the layer will remain at the target position until the next position is requested (leads to a more chopped movement)
20. Sensitivity of the movement of the mask layer; sets the amount the audio level influences the layer movement
21. Random damping - image layer; see 17.
22. Indicator of a threshold impulse - image layer
23. Zoom - image layer; see 18.
24. Smooth - image layer; see 19.
25. Sensitivity - image layer; see 20.
26. Title/file name of the selected image
27. Preview of the selected image
28. Threshold - image layer; see 9.

All parameters - except 13, 15, 16, 22, 26 and 27 - can be used by automation and are saved within the Live Set in Ableton Live.

For release notes refer to [Changelog.md](Changelog.md).
