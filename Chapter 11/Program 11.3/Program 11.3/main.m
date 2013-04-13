//
//  main.m
//  Program 11.3
//
//  Created by Ter on 4/6/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        
        NSFileManager* fileMgr = [NSFileManager defaultManager];
        NSDirectoryEnumerator* dirEnum;
        
        NSString* desktop = [NSString stringWithFormat:@"%@/Desktop",NSHomeDirectory()];
        
        
        // Change to home folder
        if( [fileMgr changeCurrentDirectoryPath:desktop] == NO)
            NSLog(@"Change failed");
        
        // First way
        NSString* currentPath = [fileMgr currentDirectoryPath];
        dirEnum = [fileMgr enumeratorAtPath: currentPath];
        
        for ( id item in dirEnum)
        {
            BOOL flag;

            if([fileMgr fileExistsAtPath:item isDirectory:&flag] == NO)
                NSLog(@"Path does not exist");
            
            if( flag == YES)
                [dirEnum skipDescendants];
            
            NSLog(@"%@",item);
            
        }
        NSLog(@"-------");
        // Another way
        NSArray* items = [fileMgr contentsOfDirectoryAtPath:currentPath error:nil];
        for ( id item in items)
            NSLog(@"%@",item);
        
        
    }
    return 0;
}

