.. _download:

**************************************
Download and installation instructions
**************************************

.. _supported-OSes:

Supported operating systems
===========================

Installation of applications built from Motmot components, such as the
movie acquisition program :command:`fview` or the FlyMovieFormat
player :command:`playfmf`, currently requires installation of several
constituent modules. Due to this modular, multi-component nature of
Motmot, use of a package manager facilitates easy installation.

Packages for the native package management system of Ubuntu Linux
(release "Hardy Heron", version 8.04) are provided, making this is the
the easiest way to get started and the best tested operating
system. The provided Ubuntu packages manage these dependencies,
allowing automatic installation and updates, while on other systems,
these dependencies must be handled manually.

The components are also tested on Windows and Mac OS X. Source code,
Windows binaries, and for :ref:`libcamiface <libcamiface>`, Mac
binaries, are provided.

To summarize:

 * Ubuntu Linux (8.04): **best supported**, native package management. See 
   :ref:`below <ubuntu-packages>`.
 * Windows 32 bit: binary packages provided for most components
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

**These instructions are for Ubuntu 8.04 (Hardy Heron).** Pre-built
binaries are not provided for other distributions.

1. Start the Terminal
(Applications->Accessories->Terminal).

2. In the terminal window, type the following. This will add the
repository to your list of repositories::

  sudo wget --output-document=/etc/apt/sources.list.d/astraw.list http://debs.astraw.com/sources.list.d/astraw-$(lsb_release -cs).list
  sudo wget --output-document=/etc/apt/sources.list.d/universe.list http://debs.astraw.com/sources.list.d/universe-$(lsb_release -cs).list

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

Download direct from the source code repository
===============================================

See the :ref:`development` page for details on how to download the
latest version control repository.
