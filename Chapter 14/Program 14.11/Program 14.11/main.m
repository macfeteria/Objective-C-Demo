//
//  main.m
//  Program 14.11
//
//  Created by Ter on 7/13/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Graphic.h"
#import "Network.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Graphic* graphic = [[Graphic alloc] init];
        graphic.isDrawed = NO;
        
        Network* network = [[Network alloc] init];
        network.delegate = graphic;
        
        NSThread* netThread = [[NSThread alloc] initWithTarget:network
                                                      selector:@selector(start)
                                                        object:nil];
        
        [netThread setName:@"Network Thread"];
        [netThread start];
        
        [[NSThread mainThread] setName:@"Main Thread"];        
        
        NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
        
        NSDate *date = [NSDate distantPast];
        while ( graphic.isDrawed == NO &&
               [runLoop runMode:NSDefaultRunLoopMode beforeDate:date] )
        {
        }
        
        [netThread release];
        [graphic release];
        [network release];
    }
    return 0;
}


