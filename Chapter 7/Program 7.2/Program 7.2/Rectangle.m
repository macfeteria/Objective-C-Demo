//
//  Rectangle.m
//  Program 7.2
//
//  Created by Ter on 3/24/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
-(float) area
{
    return width * height;
}
-(void) setHeigh:(float)h width:(float)w
{
    height = h;
    width = w;
}
@end
