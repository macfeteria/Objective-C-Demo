//
//  Producer.m
//  Program 14.4
//
//  Created by Ter on 7/8/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "Producer.h"

extern int camID;

@implementation Producer
-(id) init
{
    self = [super init];
    if(self != nil )
    {
        _mutexLock = [[NSLock alloc] init];
    }
    return self;
}

-(void) dealloc
{
    [_mutexLock release];
    [super dealloc];
}

-(void) produceToStore:(NSMutableArray*)store
{
    @autoreleasepool
    {
        NSString* facName = [[NSThread currentThread] name];
        
        for( int i = 0; i < CAMERA_PER_DAY ; i++)
        {
            // Critical Section
            [_mutexLock lock];
            [store addObject:[NSString stringWithFormat:@"%@ camera %d",facName,camID]];
            camID++;
            [_mutexLock unlock];
        }
        
    }
}
@end
