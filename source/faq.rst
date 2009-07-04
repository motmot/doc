.. _FAQ:

**************************
Frequently Asked Questions
**************************

What cameras are supported?
===========================

See :ref:`libcamiface-supported-cameras`.

What frame rates, image sizes, bit depths are possible?
=======================================================

See :ref:`libcamiface-supported-rates`.

Which way is up? (Why are my images flipped or rotated?)
========================================================

Motmot always keeps the camera pixel data in the same order and layout
as provided from the source. This source is often live, uncompressed
images direct from the camera sensor (rather than .avi files of any
sort). With that in mind, some manufacturers read out their chips from
top to bottom, and others from bottom to top. Thus, raw pixel
coordinates are defined by the camera manufacturers -- 0,0 is the
first pixel to arrive, but it can be at any of the four camera
corners. (Additionally, for some cameras, it is hard to discern a
"correct" mounting orientation, with the top and bottom of camera
enclosures being close to perfectly mirror symmetric.)

Therefore, the image processing components of Motmot operate in raw
pixel coordinates. However, the *view* of the images in
:class:`motmot.wxvideo.wxvideo.DynamicImageCanvas` and
:class:`motmot.wxglvideo.simple_overlay.DynamicImageCanvas` may be
changed by calling those classes'
:meth:`~motmot.wxvideo.wxvideo.DynamicImageCanvas.set_rotate_180` and
:meth:`~motmot.wxvideo.wxvideo.DynamicImageCanvas.set_flip_LR`. The
:command:`fview` application calls these methods as appropriate based
on the user's selection in the View menu.
