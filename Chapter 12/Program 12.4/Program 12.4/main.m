//
//  main.m
//  Program 12.4
//
//  Created by Ter on 6/23/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Product* apple = [[Product alloc] init];
        Product* samsung;
        
        [apple setName:@"Computer" andPrice:100];
        
        samsung = [apple copy];
        
        NSLog(@"%@",apple);
        NSLog(@"%@",samsung);
        
        [apple release];
        [samsung release];
        
    }
    return 0;
}

