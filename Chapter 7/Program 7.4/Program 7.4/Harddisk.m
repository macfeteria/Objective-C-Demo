//
//  Harddisk.m
//  Program 7.4
//
//  Created by Ter on 3/28/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "Harddisk.h"

@implementation Harddisk
@synthesize capacity;
-(void) printCapacity
{
    NSLog(@"Capacity %d GB.",capacity);
}
@end
