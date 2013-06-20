//
//  main.m
//  Program 6.6
//
//  Created by Ter on 6/14/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{    
    @autoreleasepool {
        
        
        int degree = 30;
        double radian = degree * 0.0174532925;

        NSLog(@"cos 30 degree = %f" ,cos(radian) );
        NSLog(@"sin 30 degree = %f" ,sin(radian) );
        NSLog(@"tan 30 degree = %f" ,tan(radian) );
        NSLog(@"exp(10) = %f" ,exp(10) );
        NSLog(@"log(8) = %f" ,log(8) );
        NSLog(@"pow(10,2) = %f" ,pow(10,2) );
        NSLog(@"sqrt(10) = %f" ,sqrt(10) );
        NSLog(@"ceil(6.3) = %f" ,ceil(6.3) );
        NSLog(@"floor(6.3) = %f" ,floor(6.3) );
        NSLog(@"fabs(-6.3) = %f" ,fabs(-6.3) );
        NSLog(@"INT_MAX = %d",INT_MAX);
        NSLog(@"INT_MIN = %d",INT_MIN);
        NSLog(@"UINT_MAX = %ud",UINT_MAX);
        NSLog(@"arc4random = %d",arc4random());
        
    }
    return 0;
}

