//
//  ViewController.m
//  Soap
//
//  Created by Wang on 12/20/14.
//  Copyright (c) 2014 wang. All rights reserved.
//

#import "ViewController.h"
#import "DeviceListViewController.h"
#import "ParentalControlViewController.h"
#import "HomeAutomationViewController.h"
#import "DashCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

    
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionView Datasource
// 1
- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
//    return wallMutableArray.count;
    return [GlobalObject sharedInstance].dashImageArray.count;
}
- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView {
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"DashCell";
    DashCell *cell = (DashCell*)[self.collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    [cell.dashImageView setImage:[UIImage imageNamed:[[GlobalObject sharedInstance].dashImageArray objectAtIndex:indexPath.row]]];
    [cell.dashLabel setText:[[GlobalObject sharedInstance].dashLabelArray objectAtIndex:indexPath.row]];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard* mainStoryboard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil];
    
    if (indexPath.row == 1) {
        DeviceListViewController* viewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"DeviceListViewController"];
        [self.navigationController pushViewController:viewController animated:YES];
    } else if (indexPath.row == 6) {
        ParentalControlViewController* viewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"ParentalControlViewController"];
        [self.navigationController pushViewController:viewController animated:YES];
    } else if (indexPath.row == 10) {
        HomeAutomationViewController* viewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"HomeAutomationViewController"];
        [self.navigationController pushViewController:viewController animated:YES];
    }
}

@end
