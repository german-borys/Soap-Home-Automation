//
//  HomeAutomationWinkHubViewController.h
//  Soap
//
//  Created by Wang on 12/21/14.
//  Copyright (c) 2014 wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeAutomationWinkHubViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *leftSideView;
- (IBAction)leftHideButtonTapped:(id)sender;
- (IBAction)leftShowButtonTapped:(id)sender;
@property (strong, nonatomic) IBOutlet UIView *bottomSideView;
- (IBAction)bottomHideViewTapped:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *bottomHideButton;
@end
