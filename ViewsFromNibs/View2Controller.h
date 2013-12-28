/* View2Controller */

#import <Cocoa/Cocoa.h>

@interface View2Controller : NSObject
{
    IBOutlet NSProgressIndicator *theProgressBar;
    IBOutlet NSView *theView;
}
- (IBAction)doTurnOnOffProgressBar:(id)sender;

- (NSView *)getView;
- (id)init;

@end
