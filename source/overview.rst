.. _overview:

********
Overview
********

The name motmot
===============

Where does the name motmot come from? In short, it grew out of a
previous project named "kookaburra", and motmot is a bird related to
the kookaburra (both are related to the kingfisher). See `wikipedia on
motmots`__ for more information.

__ http://en.wikipedia.org/wiki/Momotidae

Packages within motmot
=======================

**High level GUI app**

* :mod:`fview` - Application with plugin architecture to enable writing
  new realtime analyses by creating your own :func:`process_frame()`
  function.

**Core camera infrastructure**

* :ref:`libcamiface <libcamiface>` - camera interface C API
* :mod:`cam_iface` - Python wrapper of libcamiface
* :mod:`fview_ext_trig` - software and firmware for :ref:`precisely timed
  trigger generation with synchronized analog input <fview_ext_trig-overview>`

**Core display infrastructure**

* :mod:`motmot.wxglvideo` - wxPython OpenGL interface for video
* :mod:`pygarrayimage` - transfer Python objects supporting the array
  interface to OpenGL textures
* :mod:`motmot.wxvideo` - wxPython interface for video
* :mod:`motmot.imops` - manipulate image codings

**Analysis infrastructure**

* FastImage - Pyrex based wrapper of Intel's Integrated Performance
  Primitives (IPP) Library
* :mod:`motmot.FlyMovieFormat` - Code for manipulating .fmf movies. Includes Python
  (read/write) and MATLAB® (read-only) bindings.
* realtime_image_analysis - Implements background subtraction and 2D
  feature extraction using FastImage

**FView plugins**

* :mod:`fview_ext_trig` - software and firmware for :ref:`precisely timed
  trigger generation with synchronized analog input <fview_ext_trig-overview>`
* :mod:`flytrax` - fview plugin for tracking 2D points in realtime and saving
  data and small images
* :ref:`fview_periodic_trigger
  <fview-plugin-tutorial-periodic-trigger>` - example fview plugin to
  trigger an external device at a fixed interval
* :ref:`fview_change_trigger <fview-plugin-tutorial-change-trigger>` -
  example fview plugin to trigger an external device based on image
  change
* fview_c_callback - example fview plugin that calls pure C code
* fview_live_histogram - example fview plugin that calls pure Python
  code
* trackem - multiple point realtime tracker

**Miscellaneous**

* motmot_utils - Facilitate versioning and configuring of motmot
  packages
* posix_sched - Python extension module to boost priority in POSIX
  systems
* :mod:`pygxinput` - use XInput devices with pyglet

**Deprecated packages**

* wxvalidatedtext - validated integer/float text entry field for
  wxPython
* wxwrap - wrapper to allow use of multiple wxPython versions

Mailing list
============

To stay up to date, ask questions, and share information, `join the
motmot email list`__. The archives__ are also online.

__ http://code.astraw.com/cgi-bin/mailman/listinfo/motmot
__ http://code.astraw.com/pipermail/motmot/

Related Software
================

Similar open source libraries
-----------------------------

See the `Augmented Reality Toolkit`__, http://muonics.net/, unicap__,
OpenCV__, pyvision__, camunits__ (formerly libcam__), and `Micro
Manager`__ for lots of interesting and fun stuff.

__ http://artoolkit.sourceforge.net/
__ http://unicap-imaging.org/
__ http://opencvlibrary.sourceforge.net/
__ http://apps.sourceforge.net/mediawiki/pyvision/index.php
__ http://code.google.com/p/camunits/
__ http://code.google.com/p/libcam/
__ http://www.micro-manager.org/

GenICam™ and GigEVision™
------------------------

Another project with similar goals to motmot/camiface is GenICam™
http://www.genicam.com/ . Primary differences between camiface and
GenICam™ include the following: 1) camiface has been developed by a
single individual to support a limited number of camera features from
a limited number of cameras and is necessarily narrower in scope than
an API meant to encompass every available feature on every available
camera. 2) camiface operates using existing drivers rather than
creating a new implementation of the driver layer.

One implementation of GenICam™ appears to be Basler's
Pylon. http://www.baslerweb.com/beitraege/beitrag_en_53074.html

For a description of GigEVision™ see
http://www.machinevisiononline.org/public/articles/index.cfm?cat=167

For an discussion of these libraries from an open source perspective,
see `this thread on the libdc1394-devel mailing list`__.

__ http://sourceforge.net/mailarchive/forum.php?thread_name=1180629301.16081.147.camel%40mn65-eggplant.htc.honeywell.com&forum_name=libdc1394-devel

Similar closed source libraries/applications
--------------------------------------------

* `Streams 5`__ by IO Industries
* StreamPix__ and `the Hermes API`__ by Norpix
* The MATLAB `Image Acquisition Toolbox`__.

__ http://www.ioindustries.com/software.htm
__ http://www.norpix.com/
__ http://www.norpix.com/products/api.php
__ http://www.mathworks.com/products/imaq/

