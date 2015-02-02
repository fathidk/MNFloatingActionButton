//
//  AppDelegate.m
//  MNButtonTest
//
//  Created by Matthew Nydam on 1/02/15.
//  Copyright (c) 2015 MattNydam. All rights reserved.
//

#import "AppDelegate.h"
#import "MNMainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc] initWithFrame:
                   [[UIScreen mainScreen] bounds]];
    
    MNMainViewController *mainVC = [MNMainViewController new];
    
    self.window.rootViewController = mainVC;
    
    [self.window makeKeyAndVisible];    return YES;
}

@end
