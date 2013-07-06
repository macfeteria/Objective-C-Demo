//
//  main.m
//  Program 13.6
//
//  Created by Ter on 7/4/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString* file = [NSString stringWithFormat:@"%@/data.arch",NSHomeDirectory()];
        Product* apple;
        apple = [NSKeyedUnarchiver unarchiveObjectWithFile:file];
        
        NSLog(@"%@",apple);
        
    }
    return 0;
}
