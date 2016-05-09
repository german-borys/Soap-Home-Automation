//
//  DeviceListViewController.m
//  Soap
//
//  Created by Wang on 12/4/14.
//  Copyright (c) 2014 wang. All rights reserved.
//

#import "DeviceListViewController.h"
#import "DataLimitsViewController.h"
#import "TimeLimitsViewController.h"

@interface DeviceListViewController ()

@end

@implementation DeviceListViewController

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
    if ([_categoryString isEqualToString:@"data"]) {
        [_titleLabel setText:@"Data Limits"];
    } else {
        [_titleLabel setText:@"Time Controls"];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backButtonTapped:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)kaleiPadTapped:(id)sender {
    UIStoryboard* mainStoryboard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil];
    if ([_categoryString isEqualToString:@"data"]) {
        DataLimitsViewController* viewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"DataLimitsViewController"];
        [self.navigationController pushViewController:viewController animated:YES];
    } else {
        TimeLimitsViewController* viewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"TimeLimitsViewController"];
        [self.navigationController pushViewController:viewController animated:YES];
    }
}

@end
