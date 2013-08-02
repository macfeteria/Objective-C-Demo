//
//  main.m
//  Program 15.8
//
//  Created by Ter on 7/29/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^demoBlock)();

demoBlock getBlock()
{
    NSString* text = @"Hello";
    void (^block)() = ^{
        NSLog(@"%@",text);
    };
    return block;
}

void testBlock()
{
    demoBlock block = getBlock();
    block();
}

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        testBlock();
    
    }
    return 0;
}
