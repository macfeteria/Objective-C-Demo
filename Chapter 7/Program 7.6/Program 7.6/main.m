//
//  main.m
//  Program 7.6
//
//  Created by Ter on 3/28/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MacBook.h"
#import "SolidStateDisk.h"

int main (int argc, const char *argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    MacBook *macbook = [[MacBook alloc] init];
    macbook.speed = 2.7;
    [macbook printSpec];
    
    [macbook release];
    
    [pool drain];
    return 0;
    
}

