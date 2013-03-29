//
//  main.m
//  Program 7.1
//
//  Created by Ter on 3/26/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Triangle.h"
#import "Rectangle.h"

int main(int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    
    Triangle *tri = [[Triangle alloc] init];
    Rectangle *rec =[[Rectangle alloc] init];
    
    float area = 0;
    id obj;
    
    [tri setHeigh:10 base:20];
    [rec setHeigh:10 width:20];
    
    obj = tri;
    area = [obj area];
    NSLog(@"Tri area:%f" , area);
    
    obj = rec;
    area = [obj area];
    NSLog(@"Rec area:%f" , area);
    
    [tri release];
    [rec release];
    
    [pool drain];
    return 0;
}

