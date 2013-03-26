//
//  main.m
//  Program 9.7
//
//  Created by Ter on 3/25/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        NSValue *pointObj = [NSValue valueWithPoint: CGPointMake(100, 200)];
        NSValue *rectObj = [NSValue valueWithRect:NSMakeRect(10, 20, 10, 10)];
        
        NSLog(@"x position %f",pointObj.pointValue.x);
        NSLog(@"height %f",rectObj.rectValue.size.height);
        
        NSMutableIndexSet *indexSet = [[NSMutableIndexSet alloc] init];
        [indexSet addIndex: 2];
        [indexSet addIndexesInRange:NSMakeRange(5, 4)];
        
        NSArray* months = [NSArray arrayWithObjects:@"January", @"Feburary" ,
                         @"March",@"April",@"May",@"June",@"July",@"August",
                         @"September",@"October",@"November" , @"December" ,nil];
        
        
        NSUInteger index = [indexSet firstIndex];
        while(index != NSNotFound)            
        {
            NSLog(@" %@",[months objectAtIndex:index]);            
            index = [indexSet indexGreaterThanIndex: index];
        }
        
        [indexSet release];
    }
    return 0;
}

