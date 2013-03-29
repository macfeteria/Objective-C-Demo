//
//  main.m
//  Program 9.3
//
//  Created by Ter on 3/25/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDictionary* urlDictionary = [[NSDictionary alloc] initWithObjectsAndKeys:
        @"http://www.google.com",@"google",
        @"http://www.apple.com/th",@"apple",
        @"http://macfeteria.com/tutorial/",@"tutorial",
        @"http://www.google.com",@"google", nil];
        
        
        NSLog(@"%@" , [urlDictionary objectForKey:@"google"]);
        NSLog(@"%@" , [urlDictionary objectForKey:@"tutorial"]);        
        
        [urlDictionary release];
    }
    return 0;
}

