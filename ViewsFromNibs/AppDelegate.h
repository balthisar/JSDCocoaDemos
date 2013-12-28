/* AppDelegate */

#import <Cocoa/Cocoa.h>
#import "View1Controller.h"
#import "View2Controller.h"


@interface AppDelegate : NSObject
{
    IBOutlet NSView *swappableView;
    
    View1Controller *view1;
    View2Controller *view2;
    
}
- (IBAction)ShowView1:(id)sender;
- (IBAction)ShowView2:(id)sender;
@end
