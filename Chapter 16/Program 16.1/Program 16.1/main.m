//
//  main.m
//  Program 16.1
//
//  Created by Ter on 8/31/13.
//  Copyright (c) 2013 Ter. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Student* peter = [[Student alloc] init];

//        [peter printProgram];
        // insert code here...
        NSLog(@"Hello, World!");
        
        int a = 10 , b = 3 ;
        int c , d;
        c = 2 + a++ ;
        d = ++b ;
        
        
        NSLog (@"a=%i b=%i c=%i d=%i",a , b , c , d);
        


        
    }
    return 0;
}

