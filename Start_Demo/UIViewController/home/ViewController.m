//
//  ViewController.m
//  Start_Demo
//
//  Created by Tops on 7/23/15.
//  Copyright (c) 2015 Tops. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (IBAction)showalert:(id)sender {
   [AlertView showSystemAlert:@"Default alert view " hideAfterDelay:2.0];
}
- (IBAction)Notification:(id)sender {
    [AlertView showAlert:@"This is notification" alertType:AJNotificationTypeRed];
}
- (IBAction)loaderHide:(id)sender {
   // [LoadingView dismissLoader];
}
- (IBAction)loaderShow:(id)sender {
   // [LoadingView showLoaderWithOverlay:YES text:@"LOADING..."];
    NSMutableDictionary *Data =[[NSMutableDictionary alloc] init];
    [Data setObject:@"user@mail.com"forKey:@"email"];
    [Data setObject:@"user" forKey:@"password"];
    
    [[APIList sharedAPIList] API_sendLoginDetails:Data ShowLoader:YES showOverlay:YES completion:^(BOOL success, id responceData, NSMutableArray *share) {
        if (success) {
            NSDictionary * result =(NSDictionary *) responceData;
            NSString *strtoken = [result objectForKey:@"token"];
        }
    }];
}
- (IBAction)popview:(id)sender {
    
}
@end
