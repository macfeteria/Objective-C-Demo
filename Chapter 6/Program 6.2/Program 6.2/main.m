//
//  main.m
//  Program 6.2
//
//  Created by Ter on 6/13/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

BOOL isPrime(int number)
{
    for (int i=2; i<number; i++)
    {
        if (number % i == 0 && i != number)
            return NO;
    }
    return YES;
}


void printPrime(int start)
{
    for ( int i = 2 ; i < start ; i++)
    {
        if( isPrime(i))
            NSLog(@"%d", i);
    }
}


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        printPrime(20);
        
    }
    return 0;
}

