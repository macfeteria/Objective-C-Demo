//
//  main.m
//  Program 13.5
//
//  Created by Ter on 7/3/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Product* apple = [[Product alloc] init];
        [apple setName:@"Apple" andPrice:100];
        
        NSString* file = [NSString stringWithFormat:@"%@/data.arch",NSHomeDirectory()];
        [NSKeyedArchiver archiveRootObject:apple toFile:file];
        
        [apple release];
        
    }
    return 0;
}

