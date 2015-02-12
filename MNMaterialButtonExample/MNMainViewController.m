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

@property (nonatomic, strong) MNMaterialButton *defaultButton;
@property (nonatomic, strong) MNMaterialButton *customButton;

@end

@implementation MNMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:25.0f/255.0f green:118.0f/255.0f blue:210.0f/255.0f alpha:1.0f];

    self.defaultButton = [[MNMaterialButton alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
    self.defaultButton.center = self.view.center;
    
    [self.defaultButton addTarget:self action:@selector(defaultButtonPressed:) forControlEvents:UIControlEventTouchUpInside];

    self.customButton = [[MNMaterialButton alloc] initWithFrame:CGRectMake(self.view.center.x - 30, self.view.center.y - 150, 60, 60)];
    
    self.customButton.backgroundColor = [UIColor colorWithRed:255/255.0f green:87.0f/255.0f blue:34.0f/255.0f alpha:1.0f];
    
    [self.customButton addTarget:self action:@selector(customButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.defaultButton];
    [self.view addSubview:self.customButton];
}

#pragma mark - Actions

- (IBAction)defaultButtonPressed:(id)sender
{
    NSLog(@"Default Button pressed");
}

- (IBAction)customButtonPressed:(id)sender
{
    NSLog(@"Custom Button pressed");
}

@end
