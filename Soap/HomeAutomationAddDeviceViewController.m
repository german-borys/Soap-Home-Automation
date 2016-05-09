//
//  HomeAutomationAddDeviceViewController.m
//  Soap
//
//  Created by Wang on 12/21/14.
//  Copyright (c) 2014 wang. All rights reserved.
//

#import "HomeAutomationAddDeviceViewController.h"

@interface HomeAutomationAddDeviceViewController ()

@end

@implementation HomeAutomationAddDeviceViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backButtonTapped:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
