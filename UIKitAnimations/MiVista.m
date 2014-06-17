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
        self.centro = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        self.centro.backgroundColor = [UIColor redColor];
        [self addSubview:self.centro];
        
        [self anima];
    }
    return self;
}

- (void) anima
{
    [UIView animateWithDuration:.5
                          delay:0
                        options:UIViewAnimationOptionRepeat|UIViewAnimationOptionAutoreverse|UIViewAnimationOptionOverrideInheritedDuration
                     animations:^{
                         self.centro.center = CGPointMake(self.bounds.size.width-10, 10);
                     } completion:nil];
}

@end
