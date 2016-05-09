//
//  GlobalObject.m
//  class47
//
//  Created by Wang on 13-12-28.
//  Copyright (c) 2013年 budi. All rights reserved.
//

#import "GlobalObject.h"

static GlobalObject *instance;

@implementation GlobalObject

@synthesize dashImageArray;
@synthesize dashLabelArray;
@synthesize deviceImageArray;
@synthesize deviceLabelArray;
@synthesize mynewDeviceImageArray;
@synthesize mynewDeviceLabelArray;

+(GlobalObject *)sharedInstance
{
    @synchronized(self)
    {
        if(instance==nil)
        {
            instance= [[GlobalObject alloc] init];
        }
    }
    return instance;
}

- (id)init
{
    self = [super init];
    if ( self )
    {
        self.dashLabelArray = [[NSMutableArray alloc] initWithObjects:
                               @"Network Settings", @"Devices", @"Security", @"Time Controls",
                               @"Alerts", @"Home Media", @"Parental Controls", @"Data Limits",
                               @"Add Device", @"Advanced", @"Home Automation", @"Cloud",
                               @"File Share", @"Home Energy", @"Reboot Router", @"Settings",
                               @"Filters", @"Speed Test", @"Guest Access", @"VPN",
                               @"Home Protection", @"Quality of Service",
                               nil];

        self.dashImageArray = [[NSMutableArray alloc] initWithObjects:
                               @"dash_network_settings.png", @"dash_devices.png", @"dash_security.png", @"dash_time_controls.png",
                               @"dash_alerts.png", @"dash_home_media.png", @"dash_parental_controls.png", @"dash_data_limits.png",
                               @"dash_add_device.png", @"dash_advanced.png", @"dash_home_automation.png", @"dash_cloud.png",
                               @"dash_file_share.png", @"dash_home_energy.png", @"dash_guest_access.png", @"dash_settings.png",
                               @"dash_filters.png", @"dash_speed_test.png", @"dash_guest_access.png", @"dash_vpn.png",
                               @"dash_home_protection.png", @"dash_quality_service.png",
                               nil];
        
        self.deviceLabelArray = [[NSMutableArray alloc] initWithObjects:
                               @"Add New Device", @"Kale's iPad", @"Brandon's Macbook", @"Soap Desktop",
                               @"Living Room Blub", @"Thermostat", @"Samsung TV", @"Front Door Camera",
                               @"Xbox one", @"Sonos", @"Roku", @"Wifi Hard Drive",
                               @"Alex's iPhone",
                               nil];
        
        self.deviceImageArray = [[NSMutableArray alloc] initWithObjects:
                               @"device_add_new.png", @"device_ipad.png", @"device_mac.png", @"device_notecom.png",
                               @"device_lamp.png", @"device_plask.png", @"device_tv.png", @"device_camera.png",
                               @"device_game.png", @"device_amplifier.png", @"device_roku.png", @"device_harddisk.png",
                               @"device_iphone.png",
                               nil];
        
        self.mynewDeviceLabelArray = [[NSMutableArray alloc] initWithObjects:
                                 @"Brandon's iPhone", @"Chris's Macbook Air", @"Linux Machine",
                                 nil];
        
        self.mynewDeviceImageArray = [[NSMutableArray alloc] initWithObjects:
                                 @"device_iphone.png", @"device_notecom.png", @"device_mac.png",
                                 nil];
    }
    
    return self;
}

@end
