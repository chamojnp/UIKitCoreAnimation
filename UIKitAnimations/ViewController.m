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
    self.rojo.position = CGPointMake(300, 300);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doAnima:(id)sender {

    CGRect oldBounds = self.view.bounds;
    CGRect newBounds = CGRectInset(self.view.bounds, 100, 100);
    
    [UIView animateWithDuration:1.0 animations:^{
        // Change the opacity implicitly.
        self.view.layer.opacity = 0.0;
        
        // Change the position explicitly.
        CABasicAnimation* theAnim = [CABasicAnimation animationWithKeyPath:@"bounds"];
        theAnim.fromValue = [NSValue valueWithCGRect:oldBounds];
        theAnim.toValue = [NSValue valueWithCGRect:newBounds];
        theAnim.duration = 3.0;
        [self.view.layer addAnimation:theAnim forKey:@"AnimateFrame"];
    }];

    
}



@end
