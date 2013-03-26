//
//  main.m
//  Program 9.4
//
//  Created by Ter on 3/25/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSNumber* piNumber = [NSNumber numberWithFloat:M_PI];
        NSNumber* primeNumber = [NSNumber numberWithInt:7];
        NSString* primeString = @"7";
        
        NSMutableDictionary* myDict = [NSMutableDictionary dictionary];
        
        [myDict setObject:piNumber forKey:@"pi"];
        [myDict setObject:primeString forKey:primeNumber];
        
        
        NSLog(@"%@" , [myDict objectForKey:@"pi"]);
        NSLog(@"%@" , [myDict objectForKey:primeNumber]);
                
    }
    return 0;
}

