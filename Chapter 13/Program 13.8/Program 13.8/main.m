//
//  main.m
//  Program 13.8
//
//  Created by Ter on 7/4/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString* file = [NSString stringWithFormat:@"%@/data.arch",NSHomeDirectory()];
        NSData* data = [NSData dataWithContentsOfFile:file];

        if( data == nil)
            NSLog(@"Could not load data");
        
        NSKeyedUnarchiver* unarchiver = [[NSKeyedUnarchiver alloc]
                                         initForReadingWithData:data];
        
        NSArray* appleProduct = [unarchiver decodeObjectForKey:@"Apple"];
        NSArray* samsungProduct = [unarchiver decodeObjectForKey:@"Samsung"];
        
        [unarchiver finishDecoding];
        
        NSLog(@"Apple: %@" , appleProduct);
        NSLog(@"Samsung: %@" , samsungProduct);
        
        [unarchiver release];
        
    }
    return 0;
}

