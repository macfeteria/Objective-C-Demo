//
//  main.m
//  Program 12.1
//
//  Created by Ter on 6/22/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableString *hello = [[NSMutableString alloc] initWithString:@"Hello"];
        NSMutableString *temp;
        
        temp = [hello mutableCopy];
        
        [temp appendString:@" World"];
        
        NSLog(@"%@", hello ) ;
        NSLog(@"%@", temp ) ;
        
        [temp release];
    }
    return 0;
}

