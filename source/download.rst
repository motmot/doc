.. _download:

**************************************
Download and installation instructions
**************************************

.. _win-fview:

Quick install: FView application on Windows
=============================================

Kristin Branson (Janelia Farm Resarch Campus, HHMI) has kindly
provided an `installer for a Windows version of FView`_. This installs
FView.exe, which can be used to record uncompressed .fmf movies. The
FlyTrax plugin is also included, allowing realtime tracking of
individual flies. This downloader was built with the latest
:ref:`libcamiface <libcamiface>` installer, and we recommend Pt. Grey
cameras for this release. (Their inexpensive Firefly MV USB camera is
a good way to get started.)

.. _installer for a Windows version of FView: http://code.astraw.com/fview-installer

.. _supported-OSes:

************************
Full install information
************************

Supported operating systems
===========================

Installation of applications built from Motmot components, such as the
movie acquisition program :command:`fview` or the FlyMovieFormat
player :command:`playfmf`, currently requires installation of several
constituent modules. Due to this modular, multi-component nature of
Motmot, use of a package manager facilitates easy installation.

Packages for the native package management system of Ubuntu Linux
(release "Lucid Lynx", version 10.04) are provided, making this is the
the easiest way to get started and the best tested operating
system. The provided Ubuntu packages manage these dependencies,
allowing automatic installation and updates, while on other systems,
these dependencies must be handled manually.

The components are also tested on Windows and Mac OS X. Source code,
Windows binaries, and for :ref:`libcamiface <libcamiface>`, Mac
binaries, are provided. See above for a :ref:`FView installer for Windows
<win-fview>`.

To summarize:

 * Ubuntu Linux (10.04): **best supported**, native package management. See
   :ref:`below <ubuntu-packages>`.
 * Windows 32 bit: binary packages provided for most components (see above
   :ref:`for FView installer <win-fview>`)
 * Mac OS X: binary packages provided for libcamiface, build the rest 
   from source
 * Other operating systems: build from source

Download
========

libcamiface
-----------

Source and binaries packages of :ref:`libcamiface <libcamiface>` can
be downloaded from its `release page`__.

__ http://code.astraw.com/libcamiface

Python modules
--------------

With the exception of libcamiface (above), Motmot is comprised of
standard Python packages. These are distributed on the `Python Package
Index (a.k.a. PyPI)`__.

__ http://pypi.python.org/pypi?%3Aaction=search&term=motmot&submit=search

.. Also keep motmot/libcamiface/README.rst in sync with download page.

.. _ubuntu_packages:

Installation
============

See the :ref:`libcamiface <libcamiface>` page for platform-specific
installation instructions on libcamiface.

The rest of motmot should be installed with standard Python
idioms. For example, if you want to install FView, you can use the
following command::

  easy_install motmot.fview

This will download and install FView and all its Python dependencies.

.. _ubuntu-packages:

Ubuntu packages
---------------

I maintain an Ubuntu repository to enable myself and my collaborators
to use these packages with minimal installation
difficulties. Following these instructions is, by far, the easiest way
to get started with motmot, especially if you're not experienced with
C and Python installation issues.

.. _Ubuntu: http://www.ubuntu.com/

**These instructions are for Ubuntu 12.04 (Precise).** Pre-built
binaries are not provided for other distributions.

1. Start the Terminal
   (Applications->Accessories->Terminal).

2. Cut and paste the following commands into your terminal
   window.

.. literalinclude:: _static/install-fview.sh

3. Start fview (Applications->Sound &
   Video->fview).

Download direct from the source code repository
===============================================

See the :ref:`development` page for details on how to download the
latest version control repository.
