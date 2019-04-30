#import <Foundation/Foundation.h>
%hook SpringBoard
- (void)applicationDidFinishLaunching:(id)application{
%orig;

    UIAlertView *alert = [[UIAlertView alloc]
    initWithTitle:@"Success"
    message:@"Your device did a successful respring"
    delegate:self
    cancelButtonTitle:@"Okay"
    otherButtonTitles:nil];

    [alert show];
}
%end
