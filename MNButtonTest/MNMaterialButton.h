//
//  MNMaterialButton.h
//  Matt Nydam
//
//  Created by Matthew Nydam on 1/12/14.
//  Copyright (c) 2014 MN. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MNMaterialButton;

@protocol MNMaterialButtonDelegate <NSObject>

@optional

- (void)MNMaterialButtonPressed:(MNMaterialButton *)button;

@end
IB_DESIGNABLE
@interface MNMaterialButton : UIView

@property (nonatomic, weak) id<MNMaterialButtonDelegate> delegate;

// -- Appearance

// Defaults to plus symbol. Set to nil to remove image completely.
@property (nonatomic, strong) UIImageView *centerImageView;
@property (nonatomic, strong) IBInspectable UIColor *backgroundColor;

// Defaults to background color because I was inspired by this http://ianstormtaylor.com/design-tip-never-use-black/
@property (nonatomic, strong) IBInspectable UIColor *shadowColor;
// Default = 0.6
@property (nonatomic) CGFloat IBInspectable shadowOpacity;
// Default = 1.5
@property (nonatomic) CGFloat IBInspectable shadowRadius;

// -- Animation

// Default = 0.95
@property (nonatomic) CGFloat animationScale;
// Default = 0.05f
@property (nonatomic) CGFloat animationDuration;

@end
