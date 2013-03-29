//
//  main.m
//  Program 7.2
//
//  Created by Ter on 3/24/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Triangle.h"
#import "Rectangle.h"
#import "Circle.h"

int main(int argc, const char * argv[])
{

    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
        
    SEL setValue = @selector(setHeigh:width:);
    SEL printData = @selector(printData);
    
    Circle* cir = [[Circle alloc] init];
    Triangle* tri = [[Triangle alloc] init];
    Rectangle* rect = [[Rectangle alloc] init];
    
    [cir setRadius:10];
    [tri setHeigh:10 base:10];
    
    objc_msgSend(rect , setValue, 20 , 10);
    
    if ( [tri respondsToSelector:printData])
        [tri performSelector:printData];
    
    if ( [rect respondsToSelector:printData])
        [rect performSelector:printData];
    

    if ( [cir respondsToSelector:printData])
        [cir performSelector:printData];

    [pool drain];
    
    return 0;
}

