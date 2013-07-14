//
//  ViewController.m
//  AgitarShake
//
//  Created by LLBER on 14/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


-(BOOL) canBecomeFirstResponder {
    
    return YES;
}

-(void)viewDidLoad {
    
    [super viewDidLoad];
}

-(void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    [self becomeFirstResponder];
}

int agitar = 0;

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    
    if (event.subtype==UIEventSubtypeMotionShake) {
        
        if (agitar==0) {
            self.view.backgroundColor = [UIColor redColor];
            agitar = 1;
        } else if (agitar == 1) {
            self.view.backgroundColor = [UIColor greenColor];
            agitar = 0;
        }
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
