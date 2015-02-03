//
//  ViewController.m
//  MNButtonTest
//
//  Created by Matthew Nydam on 1/02/15.
//  Copyright (c) 2015 MattNydam. All rights reserved.
//

#import "MNMainViewController.h"
#import "MNMaterialButton.h"

@interface MNMainViewController () <MNMaterialButtonDelegate>

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
    
    self.defaultButton.delegate = self;

    self.customButton = [[MNMaterialButton alloc] initWithFrame:CGRectMake(self.view.center.x - 30, self.view.center.y - 150, 60, 60)];
    self.customButton.delegate = self;
    
    self.customButton.backgroundColor = [UIColor colorWithRed:255/255.0f green:87.0f/255.0f blue:34.0f/255.0f alpha:1.0f];
    
    [self.view addSubview:self.defaultButton];
    [self.view addSubview:self.customButton];
}

#pragma mark - Button Delegate

- (void)MNMaterialButtonPressed:(MNMaterialButton *)button
{
    if (button == self.defaultButton) {
        NSLog(@"Default");
    } else if (button == self.customButton) {
        NSLog(@"Custom");
    }
    
}


@end
