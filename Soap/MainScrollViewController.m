//
//  MainScrollViewController.m
//  Soap
//
//  Created by Wang on 12/26/14.
//  Copyright (c) 2014 wang. All rights reserved.
//

#import "MainScrollViewController.h"

@interface MainScrollViewController ()

@end

@implementation MainScrollViewController

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
    [_scrollView setContentSize:_subView.frame.size];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rebootButtonTapped:(id)sender {
    UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:nil message:@"Are you sure you want to reboot your router" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:@"Yes", nil];
    [alertView show];
}

@end
