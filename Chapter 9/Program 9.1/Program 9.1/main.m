//
//  main.m
//  Program 9.1
//
//  Created by Ter on 3/26/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSArray *daysName = [[NSArray alloc] initWithObjects:@"Sunday" , @"Monday"
                             , @"Tuesday", @"Wednesday" , @"Thursday" , @"Friday"
                             , @"Saturday", nil];
        
        for ( int i = 0 ; i < 7 ; i++)
        {
            NSString* day = [daysName objectAtIndex:i];
            NSLog(@"%@", day);
        }
        
        [daysName release];
    }
    return 0;
}
