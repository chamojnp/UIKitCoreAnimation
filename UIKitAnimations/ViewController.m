//
//  ViewController.m
//  UIKitAnimations
//
//  Created by Ricardo Sánchez Sotres on 17/06/14.
//  Copyright (c) 2014 Ricardo Sanchez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIView* rojo;
@end

@implementation ViewController

- (UIView *) creaCuadradoDeColor:(UIColor *) color
{
    UIView* cuadrado = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    cuadrado.backgroundColor = color;
    [self.view addSubview:cuadrado];
    return cuadrado;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.rojo = [self creaCuadradoDeColor:[UIColor redColor]];
    self.rojo.center = CGPointMake(120, 120);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doAnima:(id)sender {
    self.rojo.transform = CGAffineTransformMakeRotation(M_PI);

    [UIView performWithoutAnimation:^{
        [self animaCosa];
    }];
}

- (void) animaCosa
{
    [UIView animateWithDuration:1.0
                          delay:0.0
         usingSpringWithDamping:.4
          initialSpringVelocity:.8
                        options:0
                     animations:^{
                         self.rojo.center = CGPointMake(self.view.bounds.size.width-120, self.rojo.center.y);
                         self.rojo.transform = CGAffineTransformIdentity;
                     } completion:nil];
}

@end
