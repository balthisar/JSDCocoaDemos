#import "View1Controller.h"

@implementation View1Controller

/*--------------------------------------*
	Return theView so it can be swapped
 *--------------------------------------*/
- (NSView *)getView
{
	return theView;
}


/*--------------------------------------*
	Initialize the controller instance
 *--------------------------------------*/
- (id)init
{
	NSBundle *appBundle = [NSBundle mainBundle];

	if ([super init])
	{
		[appBundle loadNibNamed:@"View1" owner:self topLevelObjects:nil];
	}

	return self;
}


/*--------------------------------------*
	Sample action copies some text.
 *--------------------------------------*/
- (IBAction)doCopyAboveBelow:(id)sender
{
    [dstTextField setStringValue:[srcTextField stringValue]];
}

@end
