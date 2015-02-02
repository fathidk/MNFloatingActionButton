//
//  ViewController.m
//  MNButtonTest
//
//  Created by Matthew Nydam on 1/02/15.
//  Copyright (c) 2015 MattNydam. All rights reserved.
//

#import "MNMainViewController.h"
#import "MNMaterialButton.h"

@interface MNMainViewController ()

@end

@implementation MNMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:105.0f/255.0f green:123.0f/255.0f blue:173.0f/255.0f alpha:1.0f];
    MNMaterialButton *button = [[MNMaterialButton alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
    
    button.center = self.view.center;
    
    [self.view addSubview:button];
}

@end
