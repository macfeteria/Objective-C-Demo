//
//  main.m
//  MiniProject
//
//  Created by Ter on 3/20/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "BookController.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        BookController* comic = [[BookController alloc] init];
        [comic dataFromXMLFile:@"manga.xml"];
        [comic list];
        
        // Get number of copies
        NSLog(@"GTO :%d",[comic numberOfCopies:@"GTO"]);

        // Search comics
        Book* naruto = [comic searchBook:@"Naruto"];
        if( naruto != nil)
            NSLog(@"Found: %@\n\n", naruto);
        
        // Add more data
        [comic dataFromXMLFile:@"comic.xml"];
        [comic list];
        
        // Buy comic
        [comic buyBook:@"Berserk" copies:4];
        [comic buyBook:@"Pokemon" copies:3];
        
        // Sort
        [comic sort];

        [comic list];
        
        [comic release];
        
    }
    return 0;
}

