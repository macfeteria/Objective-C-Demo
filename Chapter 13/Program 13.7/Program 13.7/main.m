//
//  main.m
//  Program 13.7
//
//  Created by Ter on 7/4/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Product* iPhone = [[Product alloc] init];
        [iPhone setName:@"iPhone" andPrice:100];
        
        Product* iPad = [[Product alloc] init];
        [iPad setName:@"iPad" andPrice:120];
        
        Product* galaxy = [[Product alloc] init];
        [galaxy setName:@"Galaxy" andPrice:80 ];
        
        NSArray* appleProduct = [NSArray arrayWithObjects:iPad,iPhone, nil];
        NSArray* samsungProduct = [NSArray arrayWithObject:galaxy];
        
        [iPhone release];
        [iPad release];
        [galaxy release];

        
        NSMutableData *data = [NSMutableData data];
        
        NSKeyedArchiver* archiver = [[NSKeyedArchiver alloc]
                                     initForWritingWithMutableData:data];
        
        [archiver encodeObject:appleProduct forKey:@"Apple"];
        [archiver encodeObject:samsungProduct forKey:@"Samsung"];
        [archiver finishEncoding];
        
        
        NSString* file = [NSString stringWithFormat:@"%@/data.arch",NSHomeDirectory()];
        if([data writeToFile:file atomically:YES])
            NSLog(@"Write Success");

        [archiver release];
        
    }
    return 0;
}

