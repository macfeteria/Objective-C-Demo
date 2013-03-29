//
//  main.m
//  Program 7.5
//
//  Created by Ter on 3/28/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"
#import "Car.h"

int main (int argc, const char *argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    Vehicle *veh = [[Vehicle alloc] init];
    Car *car = [[Car alloc] init];
    
    [veh initDefaultSpeed];
    [car initDefaultSpeed];
    
    
    [veh printDetails];
    [car printDetails];
    
    NSLog(@"Car double Speed");
    [car doubleSpeed];
    [car printDetails];

//    NSLog(@"Veh double Speed");
//    [veh doubleSpeed];
//    [veh printDetails];

    
    [veh release];
    [car release];
    
    [pool drain];
    return 0;
    
}

