//
//  AppDelegate.m
//  NSTextView+JSDExtensions
//
//  Created by Jim Derry on 12/28/13.
//  Copyright (c) 2013 Jim Derry. All rights reserved.
//

#import "AppDelegate.h"
#import "NSTextView+JSDExtensions.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Some sample lorem ipsum text provided in the resource.
	[[self textView] setString:[NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"lorem" ofType:@"txt"]
														 encoding:NSUTF8StringEncoding
															error:NULL]];

	// Initial sample states.
	[[self buttonDisplayLineNumbers] setState:NSOffState];
	[[self textView] setShowsLineNumbers:NO];

	[[self buttonWrapText] setState:NSOffState];
	[[self textView] setWordwrapsText:NO];

	[[self buttonShowHighlightSample] setState:NSOffState];
	[[self textView] setShowsHighlight:NO];

}

- (IBAction)doWrapText:(NSButton*)sender
{
	[[self textView] setWordwrapsText:[sender state] == NSOnState];
}

- (IBAction)doDisplayLineNumbers:(NSButton*)sender
{
	[[self textView] setShowsLineNumbers:[sender state] == NSOnState];
}

- (IBAction)doShowHighlightSample:(NSButton*)sender
{
	if ([sender state] == NSOnState)
	{
		[[self textView] highlightLine:2 Column:3];
	}
	else
	{
		[[self textView] setShowsHighlight:NO];
	}
}

@end
