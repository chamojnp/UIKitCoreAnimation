//
//  MiVista.m
//  UIKitAnimations
//
//  Created by Ricardo Sánchez Sotres on 17/06/14.
//  Copyright (c) 2014 Ricardo Sanchez. All rights reserved.
//

#import "MiVista.h"

@interface MiVista()
@property (nonatomic, strong) UIView* centro;
@end
@implementation MiVista


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.centro = [[UIView alloc] initWithFrame:CGRectInset(self.bounds, 20, 20)];
        self.centro.backgroundColor = [UIColor redColor];
        [self addSubview:self.centro];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)layoutSubviews
{
    self.centro.frame = CGRectInset(self.bounds, 20, 20);
}
@end
