NSTextView+JSDExtensions
========================

by Jim Derry <http://www.balthisar.com>
Copyright © 2013 by Jim Derry. All rights reserved.
See “Legal Stuff” below for license details.

About
-----
This demo shows how to use `NSTextView+JSDExtensions` category to support `NSTextView` with some extra features:

1. The ability to toggle word wrap.
2. Simple line and character highlighting.
3. The display of logical line numbers in the view.

For a live example, may we suggest you check out _Balthisar Tidy_ (<http://www.balthisar.com/software/tidy>)?

By implementing as a category it makes interfacing with Interface Builder completely transparent.

Note that this category also depends on some classes in JanX2’s fork of _Noodlekit_: <https://github.com/JanX2/NoodleKit>. For convenience the required source files are included in this demonstration project.

What’s Involved
---------------

To use the category make sure you

`#import "NSTextView+JSDExtensions.h"`

into any of your source files in which you want to use the category. Once that’s done all instances of NSTextView will have access to several new properties and methods:

    @property (nonatomic) NSInteger highlitLine;     // Highlight this row number (0 for none).
    @property (nonatomic) NSInteger highlitColumn;   // Highlight this column of the row (0 for none).
    @property (nonatomic) BOOL ShowsHighlight;       // Sets/Indicates the current highlight state.
    @property (nonatomic) BOOL WordwrapsText;        // Sets/Indicates the current wordwrap state
    @property (nonatomic) BOOL ShowsLineNumbers;     // Sets/Indicates whether or not line numbers appear.
    - (void)scrollLineToVisible:(NSInteger)line;     // Ensures that a logical line is visible in the view.
    - (void)highlightLine:(NSInteger)line Column:(NSInteger)column; // As above, including scrolling into view.


Legal Stuff
-----------
by Jim Derry <http://www.balthisar.com>
Copyright © 2013 by Jim Derry. All rights reserved.

Significant portions by Paul Kim
Copyright © 2008 Noodlesoft, LLC. All rights reserved.

*All files in this project are released according to the MIT license.*

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
