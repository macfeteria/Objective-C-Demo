//
//  main.m
//  Program 6.4
//
//  Created by Ter on 6/13/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int factorial(int n)
{
    if (n == 0)
        return 1;
    else
        return(n * factorial(n-1));
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int n = 5;
        NSLog(@"Factorial(%d) = %d",n, factorial(n));
        
    }
    return 0;
}

