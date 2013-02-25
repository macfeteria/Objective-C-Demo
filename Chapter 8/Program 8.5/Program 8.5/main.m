//
//  main.m
//  Program 8.5
//
//  Created by Ter on 2/25/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableString* stringA = [NSMutableString stringWithString:@"Hello"];
        NSLog(@"%@",stringA);
        
        // Set new string
        [stringA setString:@"Objective-C"];
        NSLog(@"%@",stringA);
        
        // Append string
        [stringA appendString:@" is fun !!!"];
        NSLog(@"%@",stringA);
        
        // Replace string
        NSRange fullRange = NSMakeRange(0, [stringA length]);
        [stringA replaceOccurrencesOfString:@"!"
                                 withString:@"*"
                                    options:NSLiteralSearch
                                      range:fullRange];
        NSLog(@"%@",stringA);
        
        // Delete character
        NSRange range = NSMakeRange(3, 7);
        [stringA deleteCharactersInRange:range];
        NSLog(@"%@",stringA);

        
    }
    return 0;
}

