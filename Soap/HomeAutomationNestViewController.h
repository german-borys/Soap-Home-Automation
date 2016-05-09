//
//  HomeAutomationNestViewController.h
//  Soap
//
//  Created by Wang on 12/21/14.
//  Copyright (c) 2014 wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeAutomationNestViewController : UIViewController {
    NSInteger currentNumber;
}

@property (strong, nonatomic) IBOutlet UIView *leftSideView;
- (IBAction)leftHideButtonTapped:(id)sender;
- (IBAction)leftShowButtonTapped:(id)sender;
- (IBAction)arrowUpButtonTapped:(id)sender;
- (IBAction)arrowDownButtonTapped:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *numberLabel;
@end
