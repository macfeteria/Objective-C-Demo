//
//  main.m
//  Program 15.7
//
//  Created by Ter on 7/29/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *wordList = [[NSMutableArray alloc] initWithObjects:@"Mango"
                                    , @"Apple", @"Banana",@"Orange",@"Avocado", nil];
        
        [wordList sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            NSString* wordA = (NSString*) obj1;
            NSString* wordB = (NSString*) obj2;
            
            return [wordA compare:wordB];
        }];
        
        [wordList enumerateObjectsUsingBlock:^ (id obj, NSUInteger idx, BOOL *stop) {
            
            NSLog(@"Object at index %lu is %@", idx, obj);
            
        }];
        
        [wordList release];
        
    }
    return 0;
}

