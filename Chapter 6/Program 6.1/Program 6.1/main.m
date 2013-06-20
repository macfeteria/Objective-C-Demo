//
//  main.m
//  Program 6.1
//
//  Created by Ter on 6/13/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int max(int a, int b)
{
    if( a > b)
        return a;
    return b;
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int  x = 10, y = 20 , z = 30;
        NSLog(@"Max(%d , %d) is %d" , x , y , max(x, y));
        NSLog(@"Max(%d , %d) is %d" , y , z , max(y, z));
        NSLog(@"Max(%d , %d) is %d" , x , z , max(x, z));        
    }
    return 0;
}

