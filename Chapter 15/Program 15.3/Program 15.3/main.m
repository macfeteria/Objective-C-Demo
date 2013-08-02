//
//  main.m
//  Program 15.3
//
//  Created by Ter on 7/28/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        int (^block)(int,int) = ^(int a, int b)
        {
            return a + b;
        };
        
        NSLog(@"%d",block(3,4));
        
        block = ^(int a, int b)
        {
            return a * b;
        };

        NSLog(@"%d",block(3,4));
        
    }
    return 0;
}



