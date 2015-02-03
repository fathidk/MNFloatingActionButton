//
//  MNMaterialButton.m
//  Matt Nydam
//
//  Created by Matthew Nydam on 1/12/14.
//  Copyright (c) 2014 MN. All rights reserved.
//

#import "MNMaterialButton.h"
//#03A9F4 - Accent

@interface MNMaterialButton ()

@property (nonatomic, strong) UIView *backgroundCircle;

- (void)animateToSelectedState;
- (void)animateToDeselectedState;

- (void)animateShadowOn:(BOOL)shadowOn;

@end

static const CGFloat animationDuration = 0.05f;
static const CGFloat scale = 0.95f;
static const CGFloat shadowAlpha = 0.6f;

@implementation MNMaterialButton

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit
{
    // Initial Value setup
    self.backgroundColor = [UIColor colorWithRed:33.0f/255.0f green:150.0f/255.0f blue:243.0f/255.0f alpha:1.0f];
    self.shadowOpacity = 0.6f;
    self.shadowRadius = 1.5f;
    self.animationScale = 0.95f;
    self.animationDuration = 0.05f;
    
    self.backgroundCircle.backgroundColor = self.backgroundColor;
    
    [self.backgroundCircle addSubview:self.centerImageView];
    [self addSubview:self.backgroundCircle];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.backgroundCircle.frame = self.bounds;
    self.backgroundCircle.layer.cornerRadius = self.bounds.size.height/2;
    
    self.centerImageView.center = self.backgroundCircle.center;
    
    
    [self.backgroundCircle.layer setShadowColor:self.shadowColor ? self.shadowColor.CGColor : self.backgroundColor.CGColor];
    [self.backgroundCircle.layer setShadowOpacity:self.shadowOpacity];
    [self.backgroundCircle.layer setShadowRadius:self.shadowRadius];
    [self.backgroundCircle.layer setShadowOffset:CGSizeMake(1.0, 1.0)];
}

#pragma mark - Touch Events

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self animateToSelectedState];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self animateToDeselectedState];
    if ([self.delegate respondsToSelector:@selector(MNMaterialButtonPressed:)]) {
        [self.delegate MNMaterialButtonPressed:self];
    }
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self animateToDeselectedState];
}

#pragma mark - Animate states

- (void)animateToSelectedState
{
    [self animateShadowOn:NO];
    [UIView animateWithDuration:animationDuration animations:^{
        self.transform = CGAffineTransformMakeScale(scale, scale);
    }];
}

- (void)animateToDeselectedState
{
    [self animateShadowOn:YES];
    [UIView animateWithDuration:animationDuration animations:^{
        self.transform = CGAffineTransformMakeScale(1.0f, 1.0f);
    }];
}

- (void)animateShadowOn:(BOOL)shadowOn
{
    CGFloat endOpacity = 0.0f;
    if (shadowOn) {
        endOpacity = shadowAlpha;
    }
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"shadowOpacity"];
    animation.fromValue = [NSNumber numberWithFloat:shadowAlpha];
    animation.toValue = [NSNumber numberWithFloat:endOpacity];
    animation.duration = animationDuration;
    [self.backgroundCircle.layer addAnimation:animation forKey:@"shadowOpacity"];
    self.backgroundCircle.layer.shadowOpacity = endOpacity;
    
}

#pragma mark - Setters

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
    _backgroundColor = backgroundColor;
    _backgroundCircle.backgroundColor = _backgroundColor;
}


#pragma mark - Getters

- (UIView *)backgroundCircle
{
    if (!_backgroundCircle) {
        _backgroundCircle = [UIView new];
    }
    return _backgroundCircle;
}

- (UIImageView *)centerImageView
{
    if (!_centerImageView) {
        _centerImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"plus"]];
    }
    return _centerImageView;
}

@end
