//
//  main.m
//  Program 15.1
//
//  Created by Ter on 7/26/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int add (int a, int b)
{
    return a + b;
}

int mul (int a, int b)
{
    return a * b;
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        int (*func)(int a, int b);
        
        func = mul;
        NSLog(@"%d",func(3,4));

        func = add;
        NSLog(@"%d",func(3,4));

    }
    return 0;
}

