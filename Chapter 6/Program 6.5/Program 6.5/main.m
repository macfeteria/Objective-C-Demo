//
//  main.m
//  Program 6.5
//
//  Created by Ter on 6/14/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

double average ( int fisrtNum, ... )
{
    va_list arguments;
    double value = 0;
    double sum = fisrtNum;
    int counter = 1;
    
    // init arguments to store all values after fisrtNum
    va_start ( arguments, fisrtNum );
    
    while (true)
    {
        value = va_arg (arguments, int);
        if( value != -1)
            sum += value;
        else
            break;
        
        counter++;
    }
    
    // cleans up
    va_end ( arguments );                  
    
    return sum / counter;
}



int main(int argc, const char * argv[])
{

    @autoreleasepool {    
        
        NSLog(@"Average %f ", (double)average(5, 4 , 6 , 7 , 9 , -1));
        
    }
    return 0;
}

