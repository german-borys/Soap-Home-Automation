//
//  DataLimitsViewController.m
//  Soap
//
//  Created by Wang on 12/4/14.
//  Copyright (c) 2014 wang. All rights reserved.
//

#import "DataLimitsViewController.h"
#import "NewDataLimitViewController.h"

@interface DataLimitsViewController ()

@end

@implementation DataLimitsViewController

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

- (IBAction)createDataLimitTapped:(id)sender {
    UIStoryboard* mainStoryboard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil];
    NewDataLimitViewController* viewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"NewDataLimitViewController"];
    viewController.typeString = @"Data";
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
