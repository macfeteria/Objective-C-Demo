//
//  Deadlock.m
//  Program Deadlock
//
//  Created by Ter on 7/14/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "Deadlock.h"

@implementation Deadlock

-(void) tryToLock
{
    @synchronized (@"Lock A")
    {
        [NSThread sleepForTimeInterval:0.1];
       @synchronized (@"Lock B")
        {
            NSLog(@"Try to lock");
        }
    }
}


-(void) anotherToLock
{
    @synchronized (@"Lock B")
    {
        [NSThread sleepForTimeInterval:0.1];
        @synchronized (@"Lock A")
        {
            NSLog(@"Another lock");            
        }
    }
}

@end
