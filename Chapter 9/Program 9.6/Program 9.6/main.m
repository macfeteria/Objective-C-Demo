//
//  main.m
//  Program 9.6
//
//  Created by Ter on 3/26/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableSet *set1 = [NSMutableSet setWithObjects: @"dog", @"cat", @"fish", nil];
        NSSet *set2 = [NSSet setWithObjects:@"cat", @"dog", @"fish", @"rat", nil];
        NSMutableSet *set3 = [NSMutableSet setWithObjects: @"fish", @"cat", @"bird", nil];
        
        // add object
        [set1 addObject:@"bird"];
        
        // fast enumeration
        for ( NSString* item in set1)
            NSLog(@"%@", item);
        
        // Remove object
        [set1 removeObject:@"dog"];
        
        // Test equality
        if([set1 isEqualToSet: set3] )
            NSLog(@"Set1 is equal to Set3");
        else
            NSLog(@"Set1 is equal to Set3");
        
        // Check member
        if([set1 containsObject:@"dog"] )
            NSLog(@"Set1 contains dog");
        else
            NSLog(@"Set1 does not contain dog");
        
        // Union
        [set1 unionSet: set2];
        NSLog(@"Union %@", set1);
        
        // Intersection
        [set1 intersectSet: set3];
        NSLog(@"Intersection %@", set1);
        
        // Get All member
        NSArray* allObject = [set1 allObjects];
        NSLog(@"All Object %@",allObject);

        
    }
    return 0;
}

