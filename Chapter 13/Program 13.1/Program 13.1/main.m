//
//  main.m
//  Program 13.1
//
//  Created by Ter on 6/29/13.
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
        
        NSString* filePath = [NSString stringWithFormat:@"%@/data.plist",NSHomeDirectory()];
        
        [dict setObject:fruits forKey:@"Fruits"];
        [dict setObject:[NSNumber numberWithLong:[fruits count]] forKey:@"Count"];
        
        
        [dict writeToFile:filePath atomically:YES];
        
        
    }
    return 0;
}

