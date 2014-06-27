//
//  StepProxy.h
//  Pods
//
//  Created by Christopher Rudolf on 27.06.14.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "RMStepsController.h"

@interface StepProxy : UIViewController {
    RMStepsController *stepController;
}

@property (nonatomic, strong) RMStepsController *stepController;

-initWithController:(RMStepsController*)controller;

-removeStep;

@end
