//
//  main.m
//  Program 7.3
//
//  Created by Ter on 3/28/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ElectronicDevice.h"
#import "Computer.h"

int main(int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    ElectronicDevice *device = [[ElectronicDevice alloc] init];
    Computer *computer = [[Computer alloc] init];
    
    NSLog(@"Device");
    device.price = 5000;
    [device printPrice];
    
    NSLog(@"Computer");
    computer.price = 12000;
    computer.speed = 450;
    [computer printSpeed];
    [computer printPrice];
    
    [computer release];
    [device release];
    
    [pool drain];
    return 0;
}

