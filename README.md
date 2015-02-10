# Monarch Servo Attachment
The servo attachment within each pleated textile of the [Monarch](http://research.ocadu.ca/socialbody/project/prosthetic-technologies-of-being).

# Printing
The `.stl` files in the root of the project are ready for print and have been tested multiple times. Simply open it in the application that works with your 3D printer and print normally. Tested with ABS and PLA at 0.2mm average resolution. 

# Rebuilding the Attachment

To rebuild the attachment you will need OpenSCAD and Leiningen.

For Leinigen, installation instructions are available [here](http://leiningen.org/). 

OpenSCAD is a standalone application and can be downloaded from [their project homepage.](http://www.openscad.org/)

Once Leiningen is installed run `lein run` in the root of the project. It will output a new set of `.scad` files which can then be rendered to `.stl` from within OpenSCAD.

# Editing

If you have the above requirements, editing the code is just a matter of working with the files within the `src/` directory. You can start a REPL session and run `(e)` in order to rebuild and output `.scad` files.

OpenSCAD will reload files opened in it if they are adjusted externally. So you can hide it's code view window for easier development. 

# Copyright
Copyright &copy; 2014-2015 Social Body Lab