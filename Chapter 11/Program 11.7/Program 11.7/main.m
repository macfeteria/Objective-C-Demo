//
//  main.m
//  Program 11.7
//
//  Created by Ter on 4/13/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        NSString* exePath = [[NSBundle mainBundle] executablePath];
        NSArray* archtecture = [[NSBundle mainBundle] executableArchitectures];
        
        NSDictionary* info = [[NSBundle mainBundle] infoDictionary];
        
        NSLog(@"%@",exePath);
        
        NSNumber* arch = [archtecture lastObject];
        if( [arch integerValue] == NSBundleExecutableArchitectureX86_64)
            NSLog(@"64-bit Intel");

        if( [arch integerValue] == NSBundleExecutableArchitectureI386)
            NSLog(@"32-bit Intel");
        
        
        NSLog(@"%@",info);
        
        
        
    }
    return 0;
}


