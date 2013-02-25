//
//  main.m
//  Program 8.7
//
//  Created by Ter on 2/25/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Product* pinkFurby = [[Product alloc] init];
        Product* redFurby = [[Product alloc] init];
        
        [pinkFurby setName:@"Pink Furby" andPrice:2900];
        [redFurby setName:@"Red Furby" andPrice:3000];
        
        NSLog(@"\n%@\n%@",pinkFurby , redFurby);
        
        [pinkFurby release];
        [redFurby release];
        
    }
    return 0;
}

