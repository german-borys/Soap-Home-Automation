//
//  HomeAutomationNestViewController.m
//  Soap
//
//  Created by Wang on 12/21/14.
//  Copyright (c) 2014 wang. All rights reserved.
//

#import "HomeAutomationNestViewController.h"

@interface HomeAutomationNestViewController ()

@end

@implementation HomeAutomationNestViewController

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
    [_leftSideView setFrame:CGRectMake(320, _leftSideView.frame.origin.y, _leftSideView.frame.size.width, _leftSideView.frame.size.height)];
    
    currentNumber = 74;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backButtonTapped:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)leftHideButtonTapped:(id)sender {
    [UIView animateWithDuration:0.3 animations:^{
        [_leftSideView setFrame:CGRectMake(320, _leftSideView.frame.origin.y, _leftSideView.frame.size.width, _leftSideView.frame.size.height)];
    }];
}

- (IBAction)leftShowButtonTapped:(id)sender {
    [UIView animateWithDuration:0.3 animations:^{
        [_leftSideView setFrame:CGRectMake(107, _leftSideView.frame.origin.y, _leftSideView.frame.size.width, _leftSideView.frame.size.height)];
    }];
}

- (IBAction)arrowUpButtonTapped:(id)sender {
    NSInteger number = _numberLabel.text.integerValue;
    number++;
    [_numberLabel setText:[NSString stringWithFormat:@"%ld", (long)number]];
}

- (IBAction)arrowDownButtonTapped:(id)sender {
    NSInteger number = _numberLabel.text.integerValue;
    number--;
    [_numberLabel setText:[NSString stringWithFormat:@"%ld", (long)number]];
}

@end
