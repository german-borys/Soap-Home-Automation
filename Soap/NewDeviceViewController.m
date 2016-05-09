//
//  NewDeviceViewController.m
//  Soap
//
//  Created by Wang on 12/21/14.
//  Copyright (c) 2014 wang. All rights reserved.
//

#import "NewDeviceViewController.h"
#import "DashCell.h"

@interface NewDeviceViewController ()

@end

@implementation NewDeviceViewController

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

#pragma mark - UICollectionView Datasource
// 1
- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
    return [GlobalObject sharedInstance].mynewDeviceImageArray.count;
}
- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView
{
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"DashCell";
    DashCell *cell = (DashCell*)[self.collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    [cell.dashImageView setImage:[UIImage imageNamed:[[GlobalObject sharedInstance].mynewDeviceImageArray objectAtIndex:indexPath.row]]];
    [cell.dashLabel setText:[[GlobalObject sharedInstance].mynewDeviceLabelArray objectAtIndex:indexPath.row]];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSMutableArray* deviceArray = [NSMutableArray arrayWithObjects:@"Brandon's iPhone", @"Chris's Macbook Air", @"Linux Machine", nil];
    UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"Message" message:[NSString stringWithFormat:@"Would you like to add %@ to the Network?", [[GlobalObject sharedInstance].mynewDeviceLabelArray objectAtIndex:indexPath.row]] delegate:self cancelButtonTitle:@"No, Ignore" otherButtonTitles:@"Yes", nil];
    [alertView show];
}

@end
