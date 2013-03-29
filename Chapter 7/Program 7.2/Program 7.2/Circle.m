//
//  Circle.m
//  Program 7.2
//
//  Created by Ter on 3/24/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "Circle.h"

@implementation Circle

-(float) area
{
    return M_PI * radius * radius;
}
-(void) setRadius:(float) r
{
    radius = r;
}
-(void) printData
{
    NSLog(@"Circle radius: %f area: %f", radius, [self area]);
}

@end
