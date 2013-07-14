//
//  main.m
//  Program Deadlock
//
//  Created by Ter on 7/14/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deadlock.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Deadlock* dObj = [[Deadlock alloc] init];        
        
        NSThread *threadOne = [[NSThread alloc] initWithTarget:dObj
                                                      selector:@selector(tryToLock)
                                                        object:nil];
        
        
        NSThread *threadTwo = [[NSThread alloc] initWithTarget:dObj
                                                        selector:@selector(anotherToLock)
                                                          object:nil];
        
        [threadOne start];
        [threadTwo start];
        
        while (true)
        {
            if( [threadOne isFinished] && [threadTwo isFinished])
                break;
        }
        
        [threadTwo release];
        [threadOne release];
        
    }
    return 0;
}

