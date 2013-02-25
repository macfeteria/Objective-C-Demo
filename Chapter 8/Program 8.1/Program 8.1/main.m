//
//  main.m
//  Program 8.1
//
//  Created by Ter on 2/25/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSNumber* charNumber = [[NSNumber alloc] initWithChar:'a'];
        NSNumber* intNumber = [[NSNumber alloc] initWithInt:100];
        NSNumber* integerNumber = [[NSNumber alloc] initWithInteger:200];
        NSNumber* floatNumber = [[NSNumber alloc] initWithInteger:3.214];
        NSNumber* longNumber = [[NSNumber alloc] initWithLong:0x12ADF];
        
        
        NSLog(@"char %@",charNumber);
        NSLog(@"int %@",intNumber);
        NSLog(@"integer %@",integerNumber);
        NSLog(@"float %@",floatNumber);
        NSLog(@"long %@",longNumber);
        
        
        NSLog(@"char %c",[charNumber charValue]);
        NSLog(@"integer %d",[intNumber intValue]);
        NSLog(@"int %ld",[integerNumber integerValue]);
        NSLog(@"float %f",[floatNumber floatValue]);
        NSLog(@"long %ld",[longNumber longValue]);
        
        
        [charNumber release];
        [intNumber release];
        [integerNumber release];
        [floatNumber release];
        [longNumber release];
        
    }
    return 0;
}

