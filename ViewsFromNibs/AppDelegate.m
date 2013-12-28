#import "AppDelegate.h"

@implementation AppDelegate


- (IBAction)ShowView1:(id)sender
{
    // Initialize the controller (and create the view)
    if (!view1)
	{
        view1 = [[View1Controller alloc] init];
	}

    // Remove all subviews -- should only be one or zero, but let's be safe.
    NSEnumerator *enumerator = [[swappableView subviews] objectEnumerator];
    NSView *trash;

    while (trash = [enumerator nextObject])
	{
        [trash removeFromSuperview];
	}

    // Put into the view
    [swappableView addSubview:[view1 getView]];
}

- (IBAction)ShowView2:(id)sender
{
    // Initialize the controller (and create the view)
    if (!view2)
	{
        view2 = [[View2Controller alloc] init];
	}

    // Remove all subviews -- should only be one or zero, but let's be safe.
    NSEnumerator *enumerator = [[swappableView subviews] objectEnumerator];
    NSView *trash;

    while (trash = [enumerator nextObject])
	{
        [trash removeFromSuperview];
	}

    // Put into the view
    [swappableView addSubview:[view2 getView]];
}

@end
