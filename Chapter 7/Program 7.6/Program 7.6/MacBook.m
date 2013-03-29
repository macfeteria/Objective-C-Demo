//
//  MacBook.m
//  Program 7.6
//
//  Created by Ter on 3/28/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "MacBook.h"

@implementation MacBook
@synthesize speed;
-(id)init
{
    self = [super init];
    if( self != nil )
    {
        internalHarddisk = [[SolidStateDisk alloc] init];
        internalHarddisk.capacity = 500;
    }
    return self;
}

-(void) printSpec
{
    NSLog(@"speed %f GHz",speed);
    NSLog(@"ssd %d GB.",internalHarddisk.capacity);
}

-(void) setExternalHarddisk:(SolidStateDisk *)disk
{
    internalHarddisk = disk;
}

-(void) dealloc
{
    [internalHarddisk release];
    [super dealloc];
}
@end
