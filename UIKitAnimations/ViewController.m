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
@property (weak, nonatomic) IBOutlet UIView *vista2;

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.vista2.hidden = YES;
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doAnima:(id)sender {
    [UIView transitionFromView:self.subvista toView:self.vista2 duration:1.0
                       options:UIViewAnimationOptionTransitionFlipFromTop|UIViewAnimationOptionShowHideTransitionViews|UIViewAnimationOptionAutoreverse
                    completion:^(BOOL finished) {
                        self.subvista.hidden = NO;
                        self.vista2.hidden = YES;
                    }];

}

@end
