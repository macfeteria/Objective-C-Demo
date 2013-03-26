//
//  main.m
//  Program 9.2
//
//  Created by Ter on 3/26/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSMutableArray* fruits = [[NSMutableArray alloc] initWithObjects:@"Apple",
                                  @"Lemon", nil];
        
        [fruits addObject:@"Orange"];
        [fruits addObject:@"Banana"];
        
        for ( int i = 0 ; i < 4 ; i++ )
        {
            NSLog(@"%@", [fruits objectAtIndex:i]);
        }
        
        [fruits removeObjectAtIndex:1];
        
        NSLog(@"-----------");
        for ( int i = 0 ; i < [fruits count] ; i++ )
        {
            NSLog(@"%@", [fruits objectAtIndex:i]);
        }
        
        NSLog(@"-----------");
        
        NSLog(@"%@", fruits);
        
        [fruits release];
    }
    return 0;
}
