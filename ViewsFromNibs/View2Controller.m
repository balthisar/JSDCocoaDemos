#import "View2Controller.h"

@implementation View2Controller

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
        [appBundle loadNibNamed:@"View2" owner:self topLevelObjects:nil];
	}
	
    return self;
}


/*--------------------------------------*
	Sample action toggles progress bar
 *--------------------------------------*/
- (IBAction)doTurnOnOffProgressBar:(id)sender
{
    if ([sender state] == NSOnState)
	{
        [theProgressBar startAnimation:self];
    }
	else
	{
        [theProgressBar stopAnimation:self];
	}
}



@end
