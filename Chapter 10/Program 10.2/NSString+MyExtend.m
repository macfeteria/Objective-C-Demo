//
//  NSString+MyExtend.m
//  Program 10.2
//
//  Created by Ter on 3/30/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "NSString+MyExtend.h"

@implementation NSString (MyExtend)
-(BOOL) isPalindrome
{
    
    for ( int  begin = 0; begin < [self length]/2 ; begin++)
    {
        int end = (int)[self length] - 1 - begin;
        if([self characterAtIndex:begin] != [self characterAtIndex:end] )
            return NO;
    }
    return YES;
}

@end
