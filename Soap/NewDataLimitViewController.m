//
//  NewDataLimitViewController.m
//  Soap
//
//  Created by Wang on 12/21/14.
//  Copyright (c) 2014 wang. All rights reserved.
//

#import "NewDataLimitViewController.h"

@interface NewDataLimitViewController ()

@end

@implementation NewDataLimitViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSString* title = @"New Time Limit";
    NSString* tempString = @"Amount of Time";
    if ([_typeString isEqualToString:@"Data"]) {
        title = @"New Data Limit";
        tempString = @"Amount of Data";
    }
    self.navigationController.navigationItem.title = title;
    [_tempLabel setText:tempString];
    [_scrollView setContentSize:_subView.frame.size];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancelButtonTapped:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
