//
//  main.m
//  Program 8.4
//
//  Created by Ter on 2/25/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSNumber* number = [NSNumber numberWithInt:30];
        
        NSString* stringA = @"Hello";
        NSString* stringB = @"World";
        
        NSString* stringX;
        NSString* stringY;
        NSString* stringZ;
        NSString* stringW;
        
        NSLog(@"stringA %@",stringA);
        NSLog(@"stringB %@",stringB);
        
        // Copy String
        stringX = [NSString stringWithString:stringA];
        
        // Is equal
        if( [stringA isEqualToString:stringX])
            NSLog(@"stringA is equal to stringX");
        else
            NSLog(@"stringA is not equal to stringX");
        
        // Compare
        NSComparisonResult compareResult;
        compareResult = [stringA compare:stringB];
        if( compareResult == NSOrderedSame)
            NSLog(@"Same");
        else if( compareResult == NSOrderedAscending)
            NSLog(@"Ascending");
        else
            NSLog(@"Decending");
        
        NSLog(@"%@",[stringA uppercaseString ]);
        NSLog(@"%@",[stringA lowercaseString ]);
        
        // Convert number to string
        stringZ = [number stringValue];
        NSLog(@"stringZ %@",stringZ);
        
        // length
        NSLog(@"stringA length: %ld",[stringA length]);
        
        // Create new string with format
        stringY = [NSString stringWithFormat:@"%@ %@ %@",stringA ,stringB , number];
        NSLog(@"stringY %@",stringY);
        
        // Concat
        stringW = [stringA stringByAppendingString:stringB];
        NSLog(@"stringW %@",stringW);

        
    }
    return 0;
}

