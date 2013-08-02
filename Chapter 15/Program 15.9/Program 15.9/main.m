//
//  main.m
//  Program 15.9
//
//  Created by Ter on 7/30/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Product* macbook = [[Product alloc] initWithName:@"Macbook"
                                                   price:200];

        Product* macbookAir = [[Product alloc] initWithName:@"Macbook Air"
                                                   price:400];
        
        [macbook setPrintBlock:^(NSString *name, float price) {
            
            NSLog(@"Product name: %@ \nPrice %f",name , price);
            
        }];
        
        [macbook printWithName:@"New Macbook" andPrice:400];
        
        PrintBlock block = [macbook getPrintBlock];

        [macbookAir setPrintBlock:block];
        [macbookAir printWithName:@"New Macbook Air" andPrice:600];
        
        [macbookAir release];
        [macbook release];

        
    }
    return 0;
}

