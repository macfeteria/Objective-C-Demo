//
//  main.m
//  Program 8.8
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
        [pinkFurby setName:@"Pink Furby" andPrice:2900];
        
        Product* redFurby = [[Product alloc] initWithName:@"Red Furby" andPrice:3000];
        Product* greenFurby = [Product productWithName:@"Green Furby" andPrice:3200];
        
        NSLog(@"\n%@\n%@\n%@",pinkFurby , redFurby,greenFurby);
        
        [pinkFurby release];
        [redFurby release];
        
    }
    return 0;
}
