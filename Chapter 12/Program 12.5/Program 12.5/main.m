//
//  main.m
//  Program 12.5
//
//  Created by Ter on 6/25/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableString* apple = [NSMutableString stringWithString:@"Apple"];
        NSMutableString* mango = [NSMutableString stringWithString:@"Mango"];
        NSMutableString* orange = [NSMutableString stringWithString:@"Orange"];
        
        
        NSMutableArray* fruits_A = [NSMutableArray arrayWithObjects:apple
                                    ,mango,orange, nil];
        
        NSArray* fruits_B = [[NSArray alloc] initWithArray:fruits_A copyItems:YES];
        
        [[fruits_A objectAtIndex:0] appendString:@"123"];
        
        
        
        NSLog(@"A: %@",fruits_A);
        NSLog(@"B: %@",fruits_B);
        
        [fruits_B release];

        
    }
    return 0;
}

