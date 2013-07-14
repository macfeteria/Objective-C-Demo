//
//  main.m
//  Program 14.8
//
//  Created by Ter on 7/12/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Graphic.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        NSString* textEmo = @"(=^-ω-^=)";
        Graphic* graphic = [[Graphic alloc] init];
        graphic.isDrawed = NO;

        NSThread* graphicThread = [[NSThread alloc] initWithTarget:graphic
                                                          selector:@selector(draw:)
                                                            object:textEmo];
        
        [graphicThread setName:@"Graphic Thread"];
        [graphicThread start];

        NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
        //[runLoop run];
        
        NSDate *date = [NSDate distantPast];
        while ( graphic.isDrawed == NO &&
               [runLoop runMode:NSDefaultRunLoopMode beforeDate:date] )
        {
        }

        [graphicThread release];
        [graphic release];
    }
    return 0;
}

