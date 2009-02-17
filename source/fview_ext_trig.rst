*********************************************
:mod:`fview_ext_trig` - camera trigger device
*********************************************
.. module:: fview_ext_trig
  :synopsis: camera trigger device
.. index::
  module: fview_ext_trig
  single: fview_ext_trig

This package contains two top-level modules of interest:

* :mod:`fview_ext_trig.ttrigger` - a Python library to interact with the :ref:`camtrig <camtrig>` device
* :mod:`fview_ext_trig.fview_ext_trig` - a plugin for :command:`fview` to use the device

fview_ext_trig
==============

This is the Python package to interact with the :ref:`camtrig <camtrig>` device.

fview_ext_trig requirements
---------------------------

traits_, `remote_traits`_, pylibusb_

To use the fview plugin, you will also need chaco_.

.. _traits: http://code.enthought.com/projects/traits/
.. _remote_traits: http://github.com/astraw/remote_traits
.. _pylibusb: https://code.astraw.com/projects/pylibusb
.. _AT90USBKEY: http://www.atmel.com/dyn/products/tools_card.asp?tool_id=3879
.. _LUFA library: http://www.fourwalledcubicle.com/LUFA.php
.. _chaco: http://code.enthought.com/projects/chaco/docs/html/index.html
.. _dfu-programmer: http://dfu-programmer.sourceforge.net/
.. _FLIP: http://www.atmel.com/dyn/products/tools_card.asp?tool_id=3886

.. _camtrig:

camtrig -- Camera trigger device firmware
=========================================

**camtrig** - firmware for precisely timed trigger generation with
synchronized analog input

Why
---

Triggering your camera is useful to synchronize it with other
devices. These other devices can be other cameras, so that images are
taken simultaneously, or a computer, so that the images can be
correlated with other activity.

What
----

Camtrig is firmware for the $30 AT90USBKEY_ USB development board
that:

1. generates trigger pulses to feed into the external trigger input of
   digital video cameras.  The pulses are generated with a 16-bit
   hardware timer using an 8 MHz crystal oscillator to produce very
   regular timing.
2. communicates synchronization information with software running on a
   PC. By repeatedly querying for timestamps from the USB device, the
   PC is able to make a model of the gain and offset of the two clocks
   with computed precision.
3. acquires analog voltage streams. The AT90USBKEY has a multiplexed
   10-bit analog-to-digital converter (ADC), which can sample from
   0.0 to 3.3 volts and operates up to 9.6 KHz using pycamtrig.
4. produces digital pulses to trigger other hardware.
5. provides a GUI plugin to fview that includes a display like a
   strip-chart recorder.

How
---

Camtrig is built with GCC-AVR using the `LUFA library`_ for the
AT90USBKEY. To load the firmware onto the device, use
`dfu-programmer`_ or FLIP_ to transfer the hex file `camtrig.hex`_ to
the device in Device Firmware Upload (DFU) mode.

.. _camtrig.hex: XXX
