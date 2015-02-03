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

//IB_DESIGNABLE. Soon http://i3.kym-cdn.com/entries/icons/original/000/005/673/soon_(1).jpg
IB_DESIGNABLE
@interface MNMaterialButton : UIView

@property (nonatomic, weak) id<MNMaterialButtonDelegate> delegate;

// -- Appearance

// Defaults to plus symbol. Set to nil to remove image completely.
@property (nonatomic, strong) IBInspectable UIImageView *centerImageView;
@property (nonatomic, strong) IBInspectable UIColor *backgroundColor;

// Defaults to background color because I was inspired by this http://ianstormtaylor.com/design-tip-never-use-black/
@property (nonatomic, strong) IBInspectable UIColor *shadowColor;
// Default = 0.6
@property (nonatomic) IBInspectable CGFloat  shadowOpacity;
// Default = 1.5
@property (nonatomic) IBInspectable CGFloat  shadowRadius;

// -- Animation

// Default = 0.95
@property (nonatomic) CGFloat animationScale;
// Default = 0.05f
@property (nonatomic) CGFloat animationDuration;

@end
