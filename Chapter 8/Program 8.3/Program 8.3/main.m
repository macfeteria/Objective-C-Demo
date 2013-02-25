//
//  main.m
//  Program 8.3
//
//  Created by Ter on 2/25/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString* hello = [[NSString alloc] initWithString:@"Hello World"];
        NSString* text = @"Objective-C";
        NSString* textClassMethod = [NSString stringWithString:text];
        
        NSLog(@"%@ \n%@ \n%@", hello , text , textClassMethod);
        
        [hello release];
        
    }
    return 0;
}

