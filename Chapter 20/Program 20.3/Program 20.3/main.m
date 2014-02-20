//
//  main.m
//  Program 20.3
//
//  Created by Ter on 2/17/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int x = 2;
        for ( int i = 0 ; i < 500 ; i++)
        {
            x *= 2;
            NSLog(@"%d", x);
        }
    }
    return 0;
}

