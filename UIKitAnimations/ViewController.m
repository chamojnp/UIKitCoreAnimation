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

@implementation ViewController {
    BOOL anim;
}

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
    self.rojo.position = CGPointMake(300, 300);
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
    if(!anim) {
        anim = YES;
        
        CGPoint pos = self.rojo.position;
        self.rojo.position = CGPointMake(self.view.bounds.size.width-100, self.rojo.position.y);
        
        CABasicAnimation* mueveAnima = [CABasicAnimation animationWithKeyPath:@"position"];
        mueveAnima.fromValue = [NSValue valueWithCGPoint:pos];
        mueveAnima.toValue = [NSValue valueWithCGPoint:CGPointMake(self.view.bounds.size.width-100, self.rojo.position.y)];
        mueveAnima.duration = 10.0;
        [self.rojo addAnimation:mueveAnima forKey:@"mueve"];
    } else {
        [self.rojo removeAnimationForKey:@"mueve"];
    }
    
}



@end
