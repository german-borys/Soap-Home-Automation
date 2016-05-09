//
//  ParentalControlViewController.m
//  Soap
//
//  Created by Wang on 12/6/14.
//  Copyright (c) 2014 wang. All rights reserved.
//

#import "ParentalControlViewController.h"
#import "ParentalDeviceListViewController.h"

@interface ParentalControlViewController ()

@end

@implementation ParentalControlViewController

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

- (IBAction)controlButtonTapped:(UIButton*)sender {
    
    UIStoryboard* mainStoryboard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil];
    ParentalDeviceListViewController* viewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"ParentalDeviceListViewController"];
    if (sender.tag == 0) {
        viewController.categoryString = @"data";
    } else {
        viewController.categoryString = @"time";
    }
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
