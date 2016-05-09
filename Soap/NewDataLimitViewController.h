//
//  NewDataLimitViewController.h
//  Soap
//
//  Created by Wang on 12/21/14.
//  Copyright (c) 2014 wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewDataLimitViewController : UIViewController

@property (nonatomic, strong) NSString* typeString;

@property (strong, nonatomic) IBOutlet UIView *subView;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UILabel *tempLabel;

@end
