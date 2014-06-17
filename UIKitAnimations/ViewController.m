//
//  ViewController.m
//  UIKitAnimations
//
//  Created by Ricardo Sánchez Sotres on 17/06/14.
//  Copyright (c) 2014 Ricardo Sanchez. All rights reserved.
//

#import "ViewController.h"
#import "MiVista.h"

@interface ViewController ()
@property (nonatomic, strong) UIView* rojo;
@property (nonatomic, strong) UIView* amarillo;
@property (nonatomic, strong) UIView* azul;
@property (nonatomic, strong) MiVista* vista;
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
    self.amarillo = [self creaCuadradoDeColor:[UIColor yellowColor]];
    self.azul = [self creaCuadradoDeColor:[UIColor blueColor]];
    
    self.rojo.center = CGPointMake(120, 120);
    self.amarillo.center = CGPointMake(120, 240);
    self.azul.center = CGPointMake(120, 360);
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doAnima:(id)sender {

    [UIView animateWithDuration:1.0
                          delay:0.0
                        options:0
                     animations:^{
                         self.rojo.center = CGPointMake(self.view.bounds.size.width-120, self.rojo.center.y);
                         
                         [UIView animateWithDuration:.5
                                               delay:0
                                             options:UIViewAnimationOptionOverrideInheritedDuration
                                          animations:^{
                                              self.amarillo.center = CGPointMake(self.view.bounds.size.width-120, self.amarillo.center.y);
                                          }
                                          completion:nil
                          ];
                         
                     }
                     completion:nil
     ];
}

@end
