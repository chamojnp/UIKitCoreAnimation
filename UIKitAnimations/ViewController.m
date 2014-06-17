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
    
    self.vista = [[MiVista alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    self.vista.center = CGPointMake(120, 480);
    self.vista.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.vista];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doAnima:(id)sender {
    [self.vista anima];

    [UIView transitionWithView:self.vista
                      duration:4.0
                       options:UIViewAnimationOptionTransitionCurlUp|UIViewAnimationOptionAllowAnimatedContent
                    animations:^{
                        //self.vista.center = CGPointMake(self.view.bounds.size.width-120, self.view.center.y);
                        self.vista.hidden = YES;

                    } completion:nil];
    

}

@end
