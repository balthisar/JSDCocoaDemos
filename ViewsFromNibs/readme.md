ViewsFromNibs
=============

by Jim Derry, <http://www.balthisar.com>
Written 2003-February for Mac OS X “Jaguar”
Updated 2013-November (yes, that's 10½ years) for Mac OS X “Mavericks”

*This project is released to the public domain.*

About
-----
This demo simply shows how you can go about loading assembled views from a Nib file into an existing window. It doesn’t use any new classes other than controllers for the Nibs. There are two big reasons I can think of that you would want to do this:

1. This gives you the advantage of designing (for example) a single “main window” from which you can load multiple “subviews” on a dynamic basis. This could work similar to an `NSTabView` whereby a single window can display multiple subviews.

2. You can design “super controls” out of existing controls and put them in a single Nib with their own complex controller class, and then use/instantiate this “super control” on as many separate windows as you want. For example, you could define a table that uses a constant datasource with associated form controls on the same view, with all of the logic in the controller. You can then use this entire codebase on any other forms with very simple instantiation.

What’s Involved
---------------

You can use the project file from the repository in XCode 5.0 (and above, presumably), or simply include all of the files in a new XCode 4 project. Note that due to some Mac OS X API changes the Mac OS X 10.8 or higher is now required.

`AppDelegate.h/.m`

This serves as the application delegate and actually contains the logic for	swapping the Nib-views in and out.

`MainMenu.nib`

Contains the main window as well as well as menus and other goodies	`MainMenu.nib` usually does.

`View1.nib` and `View2.nib`

Contain the views that will be swapped in the main window program.

`View1Controller.h/.m` and `View2Controller.h/.m`

Contain the respective controller classes (`View1` and `View2`) that make this	work. Each controller class has some simple controller logic just to demonstrate them.

Why This is For You
-------------------
I hope to save you the trouble and time that it took me to figure out how to do this.
