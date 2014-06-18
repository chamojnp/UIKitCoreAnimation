//
//  ViewController.m
//  UIKitAnimations
//
//  Created by Ricardo Sánchez Sotres on 17/06/14.
//  Copyright (c) 2014 Ricardo Sanchez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) CALayer* rojo;
@property (nonatomic, strong) CALayer* verde;
@end

@implementation ViewController
- (CALayer *) creaCuadradoDeColor:(UIColor *) color
{
    CALayer* cuadrado = [CALayer layer];
    cuadrado.frame = CGRectMake(0, 0, 120, 120);
    cuadrado.backgroundColor = color.CGColor;
    [self.view.layer addSublayer:cuadrado];
    return cuadrado;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.rojo = [self creaCuadradoDeColor:[UIColor redColor]];
    self.rojo.position = CGPointMake(60, 60);
    /*/
    CGRect rojoFrame = self.rojo.frame;
    self.rojo.anchorPoint = CGPointMake(0, 0);
    self.rojo.frame = rojoFrame;
    //*/
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doAnima:(id)sender {
    self.rojo.position = CGPointMake(60, 60);
    
    NSArray* values = @[[NSValue valueWithCGPoint:CGPointMake(60, 60)], [NSValue valueWithCGPoint:CGPointMake(self.view.bounds.size.width-60, 60)], [NSValue valueWithCGPoint:CGPointMake(self.view.bounds.size.width-60, self.view.bounds.size.height-60)], [NSValue valueWithCGPoint:CGPointMake(60, self.view.bounds.size.height-60)], [NSValue valueWithCGPoint:CGPointMake(60, 60)]];
    NSArray* keyTimes = @[@0, @.25, @.5, @.75, @1];
    NSArray* timingFunctions = @[[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut], [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    CAKeyframeAnimation* anim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    anim.values = values;
    anim.keyTimes = keyTimes;
    anim.timingFunctions = timingFunctions;
//    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim.duration = 3.0;
    [self.rojo addAnimation:anim forKey:@"mueve"];
    
}



@end
