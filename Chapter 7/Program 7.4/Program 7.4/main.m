//
//  main.m
//  Program 7.4
//
//  Created by Ter on 3/28/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Harddisk.h"
#import "Computer.h"

int main(int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    Computer *computer = [[Computer alloc] init];
    Harddisk *extHDD = [[Harddisk alloc] init];
    extHDD.capacity = 240;
    
    NSLog(@"Computer");
    computer.price = 12000;
    computer.speed = 450;
    [computer setExternalHarddisk:extHDD];
    [computer printDetails];
    
    [extHDD release];
    [computer release];
    
    [pool drain];
    return 0;
}

