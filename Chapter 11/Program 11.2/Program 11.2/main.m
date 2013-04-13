//
//  main.m
//  Program 11.2
//
//  Created by Ter on 4/6/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSFileManager* fileMgr = [NSFileManager defaultManager];
        
        NSLog(@"Current directory path is %@", [fileMgr currentDirectoryPath]);
        
        NSString* desktop = [NSString stringWithFormat:@"%@/Desktop",NSHomeDirectory()];

        // Change directory
        if( [fileMgr changeCurrentDirectoryPath:desktop] == NO)
            NSLog(@"Change failed");
        
        // Create a new directory
        NSError* error;
        if( [fileMgr createDirectoryAtPath:@"testDir" withIntermediateDirectories:YES
                                attributes:nil error:&error] == NO)
        {
            NSLog(@"Create failed");
        }
        
        // Rename a directory
        if ([fileMgr moveItemAtPath:@"testDir" toPath: @"demoDir" error: NULL] == NO)
            NSLog(@"Rename failed");
        
    }
    return 0;
}

