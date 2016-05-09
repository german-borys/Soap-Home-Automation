//
//  DeviceListViewController.m
//  Soap
//
//  Created by Wang on 12/21/14.
//  Copyright (c) 2014 wang. All rights reserved.
//

#import "DeviceListViewController.h"
#import "NewDeviceViewController.h"
#import "DeviceDetailsViewController.h"
#import "DashCell.h"

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
    //    return wallMutableArray.count;
    return [GlobalObject sharedInstance].deviceImageArray.count;
}
- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView {
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"DashCell";
    DashCell *cell = (DashCell*)[self.collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    [cell.dashImageView setImage:[UIImage imageNamed:[[GlobalObject sharedInstance].deviceImageArray objectAtIndex:indexPath.row]]];
    [cell.dashLabel setText:[[GlobalObject sharedInstance].deviceLabelArray objectAtIndex:indexPath.row]];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard* mainStoryboard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil];
    if (indexPath.row == 0) {
        NewDeviceViewController* viewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"NewDeviceViewController"];
        [self.navigationController pushViewController:viewController animated:YES];
    } else {
        DeviceDetailsViewController* viewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"DeviceDetailsViewController"];
        [self.navigationController pushViewController:viewController animated:YES];
    }
}

@end
