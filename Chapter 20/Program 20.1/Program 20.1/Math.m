//
//  Math.m
//  Program 20.1
//
//  Created by Ter on 2/19/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import "Math.h"

@implementation Math
+(int) square:(int) num
{
    return num * num;
}
+(int) sum:(int)a and:(int)b
{
    return a + b;
}
+(BOOL) isPrime:(int)num
{
    BOOL isPrime = YES;
    for (int i=2; i < num -1; i++)
    {
        if (num % i == 0)
        {
            isPrime = NO;
            break;
        }
    }
    return isPrime;
}
@end
