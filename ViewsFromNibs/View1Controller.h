/* View1Controller */

#import <Cocoa/Cocoa.h>

@interface View1Controller : NSObject
{
    IBOutlet NSTextField *dstTextField;
    IBOutlet NSTextField *srcTextField;
    IBOutlet NSView *theView;
}
- (IBAction)doCopyAboveBelow:(id)sender;

- (NSView *)getView;
- (id)init;

@end
