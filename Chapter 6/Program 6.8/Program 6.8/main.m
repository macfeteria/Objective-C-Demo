//
//  main.m
//  Program 6.8
//
//  Created by Ter on 6/16/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

void swap ( int *x , int *y)
{
    int temp = *x;
    *x = *y;
    *y = temp;
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int a = 10;
        int b = 30;
        
        NSLog(@"a = %d , b = %d", a, b);
        
        swap(&a, &b);
        
        NSLog(@"a = %d , b = %d", a, b);
        
        
    }
    return 0;
}

