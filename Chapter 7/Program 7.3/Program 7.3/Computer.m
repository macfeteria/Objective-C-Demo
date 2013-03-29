//
//  Computer.m
//  Program 7.3
//
//  Created by Ter on 3/28/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "Computer.h"

@implementation Computer
@synthesize speed;
-(void) printSpeed
{
    NSLog(@"Speed = %d mHz",speed);
}
@end
