### Documentation Build Instructions

I struggled for a while to get the 'dox' library to work so this file serves as a reminder
as to what I need to run to get it to work on my system.

Run this first to create the XML file:
```
haxe -L heaps -xml doc.xml -D doc-gen ngin
```

then to build the docs, run:
```
haxelib run dox -i doc.xml -o pages --toplevel-package ngin 
```
