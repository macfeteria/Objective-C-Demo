//
//  main.m
//  Program 6.7
//
//  Created by Ter on 6/14/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int x = 10;
        int *xPtr;
        xPtr = &x;
        
        NSLog(@"Address x = %p", &x);
        NSLog(@"Value x = %d", x);
        
        NSLog(@"Address xPtr = %p", &xPtr);
        NSLog(@"Value xPtr = %p", xPtr);
        
        *xPtr = 20;
        
        NSLog(@"New Value x = %d", x);        
        
    }
    return 0;
}

