//
//  main.m
//  Program 16.4
//
//  Created by Ter on 9/24/13.
//  Copyright (c) 2013 Ter. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Product* iPhone5S = [[Product alloc] initWithName:@"iPhone5S" price:25000];
        Product* iPad = [[Product alloc] initWithName:@"iPad" price:15000];
        Product* iMac = [[Product alloc] initWithName:@"iMac" price:45000];
        
        NSMutableArray* appleStore = [[NSMutableArray alloc] init];
        [appleStore addObject:iPhone5S];
        [appleStore addObject:iPad];
        [appleStore addObject:iMac];
        
        NSLog(@"%@",appleStore);
        
    }
    return 0;
}

