//
//  ViewController.h
//  Start_Demo
//
//  Created by Tops on 7/23/15.
//  Copyright (c) 2015 Tops. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)showalert:(id)sender;
- (IBAction)Notification:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *loderShow;
- (IBAction)loaderHide:(id)sender;
- (IBAction)loaderShow:(id)sender;
- (IBAction)popview:(id)sender;


@end

