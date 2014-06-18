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
@property (weak, nonatomic) IBOutlet UIView *menuView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *verticalSpace;
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
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)doAnima:(id)sender {
    
    CGRect frameFinal = self.menuView.frame;
    frameFinal.origin.y = 0;

    [UIView animateWithDuration:1.0
                     animations:^{
                         self.verticalSpace.constant = 0;
                         [self.view layoutIfNeeded];
                     }];
}



@end
