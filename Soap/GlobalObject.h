//
//  GlobalObject.h
//  class47
//
//  Created by Wang on 13-12-28.
//  Copyright (c) 2013年 budi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GlobalObject : NSObject {
    NSMutableArray* dashImageArray;
    NSMutableArray* dashLabelArray;
    NSMutableArray* deviceImageArray;
    NSMutableArray* deviceLabelArray;
    NSMutableArray* newDeviceImageArray;
    NSMutableArray* newDeviceLabelArray;
}

@property(nonatomic,strong)NSMutableArray* dashImageArray;
@property(nonatomic,strong)NSMutableArray* dashLabelArray;
@property(nonatomic,strong)NSMutableArray* deviceImageArray;
@property(nonatomic,strong)NSMutableArray* deviceLabelArray;
@property(nonatomic,strong)NSMutableArray* mynewDeviceImageArray;
@property(nonatomic,strong)NSMutableArray* mynewDeviceLabelArray;

+(GlobalObject*)sharedInstance;
@end
