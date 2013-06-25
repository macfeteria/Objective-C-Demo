//
//  main.m
//  Program 12.2
//
//  Created by Ter on 6/22/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool
    {
        NSMutableString* apple = [NSMutableString stringWithString:@"Apple"];
        NSMutableString* mango = [NSMutableString stringWithString:@"Mango"];
        NSMutableString* orange = [NSMutableString stringWithString:@"Orange"];
        
        
        NSMutableArray* fruits_B = [NSMutableArray arrayWithObjects:apple
                                    ,mango,orange, nil];
        
        NSArray* fruits_A = [fruits_B copy];
        
        [fruits_B removeLastObject];
        
        NSLog(@"B: %@",fruits_B);
        NSLog(@"A: %@",fruits_A);
        
        [fruits_A release];
        
    }
    return 0;
}

