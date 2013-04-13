//
//  main.m
//  Program 11.4
//
//  Created by Ter on 4/6/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        NSString* path = nil;
        NSString* fullPath = nil;
        
        // Temp directory
        NSLog (@"Temporary Directory is %@", NSTemporaryDirectory ());
        
        // Last path
        path = NSHomeDirectory(); 
        NSLog(@"Current %@",path);
        NSLog(@"Last path: %@", [path lastPathComponent]);
        
        // full path
        fullPath = [path stringByAppendingPathComponent: @"test.txt"];
        NSLog(@"Fullpath: %@", fullPath);
        
        // Get the file name extension
        NSLog (@"extension %@", [fullPath pathExtension]);
        
        // Divide a path into its components
        NSString* home = NSHomeDirectory();
        NSArray* components = [home pathComponents];
        for ( path in components )
            NSLog (@"%@", path);
        
        
    }
    return 0;
}

