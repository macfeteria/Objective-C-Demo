//
//  main.m
//  Program 13.2
//
//  Created by Ter on 6/29/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString* file = [NSString stringWithFormat:@"%@/data.plist",NSHomeDirectory()];
        NSDictionary* dict = [NSDictionary dictionaryWithContentsOfFile:file];
        
        NSArray* keys = [dict allKeys];
        for (NSString* key in keys)
        
            NSLog(@"key:%@ obj:%@",key, [dict objectForKey:key]);
        
        
    }
    return 0;
}

