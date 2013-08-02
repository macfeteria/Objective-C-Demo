//
//  main.m
//  Program 15.6
//
//  Created by Ter on 7/29/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Product* macbook = [[Product alloc] init];
        [macbook setName:@"Macbook" andPrice:200];

        [macbook printWithBlock:^(NSString *name, float price) {
            
            NSLog(@"Product name: %@ \nPrice %f",name , price);
            
        }];
        
        [macbook release];        
    }
    return 0;
}

