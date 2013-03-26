//
//  main.m
//  Program 9.5
//
//  Created by Ter on 3/25/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDictionary* animal = [NSDictionary dictionaryWithObjectsAndKeys:
                                @"Chiwawa",@"dog",
                                @"Sisawat",@"cat",
                                @"Parrot",@"bird",
                                @"Siamese fighting fish",@"fish",
                                nil];
        
        NSArray* keylist = [animal allKeys];
        for ( int i = 0 ; i < [keylist count] ; i++)
        {
            NSString* key = [keylist objectAtIndex:i];
            NSLog(@"%@",[animal objectForKey:key]);
        }

        // Fast enumeration
        NSLog(@"-- Fast enumeration --");
        
        for ( NSString* key in animal)
            NSLog(@"%@",[animal objectForKey:key]);

    }
    return 0;
}

