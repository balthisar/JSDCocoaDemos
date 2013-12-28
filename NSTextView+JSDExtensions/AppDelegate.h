//
//  AppDelegate.h
//  NSTextView+JSDExtensions
//
//  Created by Jim Derry on 12/28/13.
//  Copyright (c) 2013 Jim Derry. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextView *textView;
@property (assign) IBOutlet NSButton *buttonWrapText;
@property (assign) IBOutlet NSButton *buttonDisplayLineNumbers;
@property (assign) IBOutlet NSButton *buttonShowHighlightSample;



- (IBAction)doWrapText:(NSButton*)sender;
- (IBAction)doDisplayLineNumbers:(NSButton*)sender;
- (IBAction)doShowHighlightSample:(NSButton*)sender;

@end
