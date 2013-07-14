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

-(void) produceToStore:(NSMutableArray*)store
{
    @autoreleasepool
    {
        NSString* facName = [[NSThread currentThread] name];
        
        for( int i = 0; i < CAMERA_PER_DAY ; i++)
        {
            [store addObject:[NSString stringWithFormat:@"%@ camera %d",facName,camID]];
            camID++;
        }
        
    }
}
@end
