//
//  main.m
//  Program 20.2
//
//  Created by Ter on 2/16/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Car* f1 = [[Car alloc] initWithSpeed:200];
        Car* totota = [[Car alloc] initWithSpeed:80];
        Car* honda = [[Car alloc] initWithSpeed:90];
        
        [f1 info];
        [totota info];
        [honda info];
        
    }
    return 0;
}

