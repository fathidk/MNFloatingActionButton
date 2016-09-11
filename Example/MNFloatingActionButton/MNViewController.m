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

- (IBAction)storyboardButtonPressed:(id)sender;

@end

@implementation MNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    MNFloatingActionButton *button = [[MNFloatingActionButton alloc] initWithFrame:CGRectMake(50, 50, 50, 50)];
	[self.view addSubview:button];
    
    [button addTarget:self action:@selector(codeGeneratedButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (IBAction)codeGeneratedButtonPressed:(id)sender
{
    NSLog(@"Code generated button pressed");
}


- (IBAction)storyboardButtonPressed:(id)sender
{
    NSLog(@"Storyboard button pressed");
}

@end
