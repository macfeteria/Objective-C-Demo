//
//  main.m
//  Program 10.1
//
//  Created by Ter on 3/30/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product+MyExtend.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Product* iMac = [[Product alloc] init];
        
        [iMac setName:@"iMac" andPrice:40000];
        
        NSLog(@"%@", [iMac name]);
        NSLog(@"price:%.2f", [iMac price]);
        NSLog(@"price(VAT):%.2f", [iMac priceIncludeVat]);
        
        [iMac release];
        
    }
    return 0;
}
