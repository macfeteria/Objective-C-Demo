//
//  main.m
//  Program 13.3
//
//  Created by Ter on 7/2/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableDictionary* dict = [NSMutableDictionary dictionary];
        NSMutableArray* fruits = [NSMutableArray array];
        [fruits addObject:@"Mango"];
        [fruits addObject:@"Banana"];
        [fruits addObject:@"Apple"];
        [fruits addObject:@"Lemon"];
                
        [dict setObject:fruits forKey:@"Fruits"];
        [dict setObject:[NSNumber numberWithLong:[fruits count]] forKey:@"Count"];
        
        NSString* file = [NSString stringWithFormat:@"%@/data.arch",NSHomeDirectory()];
        [NSKeyedArchiver archiveRootObject:dict toFile:file];        
        
    }
    return 0;
}

