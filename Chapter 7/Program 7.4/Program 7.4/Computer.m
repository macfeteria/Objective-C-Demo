//
//  Computer.m
//  Program 7.4
//
//  Created by Ter on 3/28/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "Computer.h"

@implementation Computer
-(void) printDetails
{
    [self printPrice];
    NSLog(@"speed %d mHz",speed);
    [externalHarddisk printCapacity];
}

-(void) setExternalHarddisk:(Harddisk *)disk
{
    externalHarddisk = disk;
}
@end
