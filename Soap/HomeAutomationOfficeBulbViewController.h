//
//  HomeAutomationOfficeBulbViewController.h
//  Soap
//
//  Created by Wang on 12/21/14.
//  Copyright (c) 2014 wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeAutomationOfficeBulbViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *leftSideView;
- (IBAction)leftHideButtonTapped:(id)sender;
- (IBAction)leftShowButtonTapped:(id)sender;
@end