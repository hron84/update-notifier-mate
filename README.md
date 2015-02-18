Update Notifier for MATE
========================

This little app brings back the old update-manager notification icon to the
systray. It is not a feature-rich stuff, and highly depends on the 
update-manager itself. Just notifies you if you have any update.


Dependencies
------------

This app is depends on following packages:

 - ruby1.9.1
 - ruby-gettext 
 - ruby-gtk3
 - update-manager (not only the update-manager-core!)

Install
-------

Simply run `cmake .` and `make install` If there is no **cmake** installed in 
your system you can also install the program with `make -f simple.make install` 
command however this solution is not able to check existence of dependencies.


TODO and known issues
--------------------

 - Currently it does not supports display if a restart is required
 - Checks are issued in every 300 seconds and not configurable (hard-coded)
 - No difference in icon if a security update is available
 - It should support performing `apt-get update` but it needs a credential...


Licensing & Copyright
---------------------

This project is licenced under the terms of CreativeCommons BY-NC-SA 3.5 
Unported License. Some rights reserved.

Copyright (c) Gabor Garami 2015
