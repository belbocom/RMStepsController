//
//  StepProxy.m
//  Pods
//
//  Created by Christopher Rudolf on 27.06.14.
//
//

#import "StepProxy.h"

@implementation StepProxy

@synthesize stepController;


-removeStep {
    
    [self.stepController willMoveToParentViewController:nil];
    [self.stepController.view removeFromSuperview];
    [self.stepController removeFromParentViewController];
    
    return self;
}

-initWithController:(RMStepsController*)controller {
    self.stepController = controller;

    [self addChildViewController:controller];
    
    [self.view addSubview:controller.view];
    [controller didMoveToParentViewController:self];

    return self;
}

-(void)viewWillAppear:(BOOL)animated {
    [self.stepController viewWillAppear:animated];
}

@end
