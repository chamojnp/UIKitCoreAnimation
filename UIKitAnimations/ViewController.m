//
//  ViewController.m
//  UIKitAnimations
//
//  Created by Ricardo Sánchez Sotres on 17/06/14.
//  Copyright (c) 2014 Ricardo Sanchez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *vista;
@property (weak, nonatomic) IBOutlet UIView *subvista;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController


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
    [UIView transitionWithView:self.vista
                      duration:1.0
                       options:UIViewAnimationOptionTransitionFlipFromTop
                    animations:^{
                        [self.subvista removeFromSuperview];
                        self.label.hidden = YES;
                    } completion:nil];

}

@end
