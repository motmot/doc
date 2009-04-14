.. _fview-plugin-writing:

*********************
Writing FView plugins
*********************

Overview
--------

The :mod:`fview` program provides a simple extensibility
mechanism. In outline, the steps required are:

* Create a subclass of :class:`fview.traited_plugin.HasTraits_FViewPlugin`.
* Implement your GUI interaction using traits_.
* Implement your realtime processing logic in your class's
  ``process_frame()`` method. Note that this code will be run in a
  separate thread of execution from the GUI, so be careful to avoid
  share memory structures without locking.
* Optionally, handle the various options allowed by FView.
* Finally, register your FView plugin.

To test your plugin, you can you the :command:`fview` command
directly, or you may use :command:`fview_fmf_replay` to test your
plugin on a saved video recording.

Tutorial -- create a plugin that triggers a pulse when change happens
---------------------------------------------------------------------

This tutorial shows how to trigger a voltage pulse when a change
exceeding a pre-determined threshold occurrs within a region of
interest.

1. Copy the traited plugin template into a new directory.
2. Change all names to reflect your new plugin name.
3. Implement your business logic in ``process_frame()``.

Register your FView plugin
--------------------------

In your ``setup.py``, use setuptools an add a ``motmot.fview.plugins``
key to ``entry_points``. For the above example, this would be::

  entry_points = {
    'motmot.fview.plugins':'fview_ext_trig = motmot.fview_ext_trig.fview_ext_trig:FviewExtTrig',
     }
