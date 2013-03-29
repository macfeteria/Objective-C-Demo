//
//  Vehicle.m
//  Program 7.5
//
//  Created by Ter on 3/28/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle
-(void) initDefaultSpeed
{
    speed = 140;
}
-(void) printDetails
{
    NSLog(@"speed %d",speed);
}
@end
