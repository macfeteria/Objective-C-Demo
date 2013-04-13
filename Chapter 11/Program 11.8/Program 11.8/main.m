//
//  main.m
//  Program 11.8
//
//  Created by Ter on 4/13/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    NSURL* url = [NSURL URLWithString:@"http://macfeteria.com/feed"];

    NSString *feedData = [NSString stringWithContentsOfURL: url
                                                    encoding: NSUTF8StringEncoding
                                                       error: NULL];

    NSLog(@"%@",feedData);

    return 0;
}

