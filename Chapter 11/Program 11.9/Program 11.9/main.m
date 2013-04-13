//
//  main.m
//  Program 11.9
//
//  Created by Ter on 4/13/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSURL* arrayURL = [NSURL URLWithString:@"http://macfeteria.com/feed"];
        NSURL* dictURL = [NSURL URLWithString:@"http://macfeteria.com/feed"];
        NSURL* arrayFileURL = [NSURL fileURLWithPath:@"/User/Ter/Desktop/array.txt"];
        
        NSDictionary* dictData = [NSDictionary dictionaryWithContentsOfURL:dictURL];
        NSLog(@"Dictionary:");
        NSLog(@"%@",dictData);
        
        NSArray* arrayData = [NSArray arrayWithContentsOfURL:arrayURL];
        NSLog(@"Array:");
        NSLog(@"%@",arrayData);

        NSArray* arrayFileData = [NSArray arrayWithContentsOfURL:arrayFileURL];
        NSLog(@"Array file:");
        NSLog(@"%@",arrayFileData);
        
        
    }
    return 0;
}

