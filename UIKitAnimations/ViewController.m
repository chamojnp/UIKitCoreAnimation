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
    float duracion = 1.0;
    [UIView animateKeyframesWithDuration:duracion
                                   delay:0.0
                                 options:0
                              animations:^{
                                  [UIView addKeyframeWithRelativeStartTime:0
                                                          relativeDuration:.5
                                                                animations:^{
                                                                    self.rojo.center = CGPointMake(self.view.bounds.size.width-120, self.rojo.center.y);
                                                                }];
                                  [UIView addKeyframeWithRelativeStartTime:.5
                                                          relativeDuration:.5
                                                                animations:^{
                                                                    self.rojo.center = CGPointMake(self.view.bounds.size.width-120, self.view.bounds.size.height-120);
                                                                }];
                              } completion:nil];
}

@end
