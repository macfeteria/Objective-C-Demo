//
//  main.m
//  Program 15.5
//
//  Created by Ter on 7/28/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

void updateArray(NSArray *array, float (^callback)(float element))
{
    for (Product* pro in array)
        pro.price = callback(pro.price);
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray* list = [NSMutableArray array];
        Product* macbook = [[Product alloc] init];
        Product* macbookAir = [[Product alloc] init];
        
        [macbook setName:@"Macbook" andPrice:200];
        [macbookAir setName:@"Macbook Air" andPrice:300];
        
        [list addObject:macbook];
        [list addObject:macbookAir];

        
        updateArray(list, ^float(float num) {
            return 10 + num;
        });
        
        NSLog(@"%@", macbook);
        NSLog(@"%@", macbookAir);
        
        [macbookAir release];
        [macbook release];
                
    }
    return 0;
}

