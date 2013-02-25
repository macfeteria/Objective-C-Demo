//
//  Parser.m
//  Program 8.10
//
//  Created by Ter on 2/25/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "Parser.h"

@implementation Parser

+(NSString *)getString:(NSString *)string tag:(NSString *)tag location:(int)location
{
    NSString *ret = nil;
    NSString* xx = nil;
    if( string != nil)
    {
        NSScanner *scanner = [[NSScanner alloc] initWithString:string];
        [scanner setScanLocation:location];
        [scanner scanUpToString:[NSString stringWithFormat:@"<%@>",tag] intoString:&xx];
        [scanner scanString:[NSString stringWithFormat:@"<%@>",tag] intoString:nil];
        [scanner scanUpToString:[NSString stringWithFormat:@"</%@>",tag] intoString:&ret];
        [scanner release];
    }
    return ret;
}

@end
