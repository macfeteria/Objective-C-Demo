//
//  Triangle.m
//  Program 7.2
//
//  Created by Ter on 3/24/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle
-(float) area
{
    return 0.5 * base * height;
}

-(void) setHeigh:(float)h base:(float)b
{
    height = h;
    base = b;
}
@end
