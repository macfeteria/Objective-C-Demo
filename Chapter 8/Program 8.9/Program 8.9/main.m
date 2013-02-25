//
//  main.m
//  Program 8.9
//
//  Created by Ter on 2/25/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString* text = @"String objects represent character strings in Cocoa frameworks.\n"
        "Representing strings as objects allows you to use strings\n"
        "wherever you use other objects\n";
        
        NSError *error;
        NSMutableString* path = [NSMutableString string];
        [path setString:[NSHomeDirectory() stringByAppendingPathComponent:@"Desktop"]]; //[[NSBundle mainBundle] bundlePath] ];
        [path appendString:@"/program_data.txt"];
        
        [text writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:&error ];
        if( error == nil)
        {
            NSString* strFromFile = [NSString stringWithContentsOfFile:path
                                                              encoding:NSUTF8StringEncoding
                                                                 error:&error];
            NSLog(@"%@",strFromFile);
        }

        
    }
    return 0;
}

