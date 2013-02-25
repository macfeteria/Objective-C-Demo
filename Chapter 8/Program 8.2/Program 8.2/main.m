//
//  main.m
//  Program 8.2
//
//  Created by Ter on 2/25/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSNumber* firstNumber = [NSNumber numberWithInt:90];
        NSNumber* secondNumber = [[NSNumber alloc] initWithFloat:90.0];
        
        if( [firstNumber isEqualToNumber:secondNumber])
            NSLog(@"%@ is equal to %@",firstNumber, secondNumber);
        
        [secondNumber release];
        
    }
    return 0;
}

