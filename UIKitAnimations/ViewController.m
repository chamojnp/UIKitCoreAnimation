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
    float duracion = 10.0;
    [UIView animateKeyframesWithDuration:duracion
                                   delay:0.0
                                 options:0
                              animations:^{
                                  for (int k = 0; k<10; k++) {
                                      [UIView addKeyframeWithRelativeStartTime:k/10.0
                                                              relativeDuration:1/10.0
                                                                    animations:^{
                                                                        self.rojo.center = CGPointMake(arc4random()%(int)self.view.bounds.size.width, arc4random()%(int)self.view.bounds.size.height);
                                                                    }];
                                  }
                              } completion:nil];
}

@end
