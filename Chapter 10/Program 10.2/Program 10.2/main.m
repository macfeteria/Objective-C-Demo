//
//  main.m
//  Program 10.2
//
//  Created by Ter on 3/30/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+MyExtend.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        NSString* text1 = @"AABAA";
        NSString* text2 = @"AACBAA";
        
        if( [text1 isPalindrome] == YES)
            NSLog(@"%@ is palindrome",text1);
        
        if( [text2 isPalindrome] == YES)
            NSLog(@"%@ is palindrome",text2);
        
    }
    return 0;
}

