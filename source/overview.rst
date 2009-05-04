.. _overview:

**********************************************************
Overview, including download and installation instructions
**********************************************************

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

* :mod:`wxglvideo` - wxPython OpenGL interface for video
* :mod:`pygarrayimage` - transfer Python objects supporting the array
  interface to OpenGL textures
* wxvideo - wxPython interface for video
* imops - Python extension module to manipulate image codings

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
* fview_PLUGIN_TEMPLATE - blank fview plugin to use as template for
  new plugins
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

.. _download:

Download
========

The releases are on PyPI__. Search for the motmot packages with `this
link`__.

__ http://pypi.python.org/pypi
__ http://pypi.python.org/pypi?%3Aaction=search&term=motmot&submit=search

.. Also keep motmot/libcamiface/README.rst in sync with download page.

:ref:`libcamiface <libcamiface>`, as a pure C package, is not hosted
on PyPI. Please download from its `release page`__.

__ http://github.com/motmot/libcamiface/downloads

.. _ubuntu_packages:

Ubuntu packages
---------------

I maintain an Ubuntu repository to enable myself and my collaborators
to use these packages on with minimal installation
difficulties. Following these instructions is, by far, the easiest way
to get started with motmot, especially if you're not experienced with
C and Python installation issues.

.. _Ubuntu: http://www.ubuntu.com/

**These instructions are for Ubuntu 8.04 (Hardy Heron).** Pre-built
binaries are not provided for other distributions.

1. Start the Terminal
(Applications->Accessories->Terminal).

2. In the terminal window, type the following. This will add the
repository to your list of repositories::

  sudo wget http://debs.astraw.com/sources.list.d/astraw-hardy.list --output-document=/etc/apt/sources.list.d/astraw-hardy.list
  sudo wget http://debs.astraw.com/sources.list.d/universe-hardy.list --output-document=/etc/apt/sources.list.d/universe-hardy.list

You will be prompted for your password -- this is normal.

3. Accept Andrew Straw's keyring. Still from in the terminal window,
type::

  sudo apt-get update && sudo apt-get install astraw-keyring && sudo apt-get update

After lots of downloading, you will eventually be asked to accept the
``astraw-keyring`` package even though it cannot be authenticated
("WARNING: The following packages cannot be authenticated!
astraw-keyring Install these packages without verification
[y/N]?"). This is normal; type "y" (for yes) to trust Andrew Straw to
install software on your computer.

4. Start Synaptic
(System->Administration->Synaptic Package Manager).

5. Install fview by clicking the "Search" button and typing
"python-motmot-fview" in the Search field. Then click the "Search"
button. After a couple seconds, this will bring up a list of packages
matching your search string.

6. In the small empty square next to "python-motmot-fview", click once
and select "Mark for installation". Click on the "Apply" button.

7. If you are using a firewire camera, add your user to the "disk"
group. In the terminal window again, type::

  sudo adduser $USER disk

Once you did this, you will need to log out and log in again for the
new group membership to take effect.

8. Start fview (Applications->Sound &
Video->fview).

Code repository
---------------

The source code repository is hosted at
http://github.com/motmot/. :ref:`The trigger device
<fview_ext_trig-overview>` firmware and Python host code is hosted in
a `slightly different location`__.

__ http://github.com/astraw/motmot-camtrig/tree/master

To check out the source code using git, use::

  git clone git://github.com/motmot/motmot.git
  cd motmot
  git submodule update --init

See the README.rst file in the cloned directory for more information.

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
OpenCV__, pyvision__, and libcam__ for lots of interesting and fun stuff.

__ http://artoolkit.sourceforge.net/
__ http://unicap-imaging.org/
__ http://opencvlibrary.sourceforge.net/
__ http://apps.sourceforge.net/mediawiki/pyvision/index.php
__ http://code.google.com/p/libcam/

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

