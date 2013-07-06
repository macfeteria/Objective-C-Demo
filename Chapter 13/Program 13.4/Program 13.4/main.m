//
//  main.m
//  Program 13.4
//
//  Created by Ter on 7/2/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString* file = [NSString stringWithFormat:@"%@/data.arch",NSHomeDirectory()];
        NSMutableDictionary* dict;
        dict = [NSKeyedUnarchiver unarchiveObjectWithFile:file];
        
        NSArray* keys = [dict allKeys];
        for (NSString* key in keys)
            
            NSLog(@"key:%@ obj:%@",key, [dict objectForKey:key]);
                
    }
    return 0;
}

