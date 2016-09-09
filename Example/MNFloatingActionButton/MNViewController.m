//
//  MNViewController.m
//  MNFloatingActionButton
//
//  Created by Matt Nydam on 09/09/2016.
//  Copyright (c) 2016 Matt Nydam. All rights reserved.
//

#import "MNViewController.h"
#import <MNFloatingActionButton/MNFloatingActionButton.h>

@interface MNViewController ()

@end

@implementation MNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    MNFloatingActionButton *button = [[MNFloatingActionButton alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
	[self.view addSubview:button];
}


@end
