//
//  main.m
//  Program 13.9
//
//  Created by Ter on 7/4/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray* otherFruit = nil;
        NSData* data = nil;

        NSMutableString* apple = [NSMutableString stringWithString:@"Apple"];
        NSMutableString* mango = [NSMutableString stringWithString:@"Mango"];
        NSMutableString* orange = [NSMutableString stringWithString:@"Orange"];
        
        
        NSMutableArray* fruits = [NSMutableArray arrayWithObjects:apple
                                    ,mango,orange, nil];
        
        
        data = [NSKeyedArchiver archivedDataWithRootObject: fruits];
        otherFruit = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        
        [[fruits objectAtIndex:0] appendString:@"123"];
        
        
        NSLog(@"Fruit: %@",fruits);
        NSLog(@"Other Fruit: %@",otherFruit);
        
        
    }
    return 0;
}

