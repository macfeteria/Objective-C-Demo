//
//  main.m
//  Program 7.7
//
//  Created by Ter on 3/28/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MacBook.h"
#import "SolidStateDIsk.h"

int main(int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    MacBook *macbookA = [[MacBook alloc] init];
    MacBook *macbookB = [[MacBook alloc] initWithSSDSize: 300];
    
    NSLog(@"MacBook A");
    macbookA.speed = 2.7;
    [macbookA printSpec];
    
    NSLog(@"MacBook B");
    macbookB.speed = 1.5;
    [macbookB printSpec];
    
    [macbookA release];
    [macbookB release];
    
    [pool drain];
    return 0;
}

