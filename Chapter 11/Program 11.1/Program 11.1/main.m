//
//  main.m
//  Program 11.1
//
//  Created by Ter on 4/5/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create an instane of file manager.
        NSFileManager* fileMgr = nil;
        fileMgr = [NSFileManager defaultManager];
        
        // User desktop folder
        NSString* desktop = [NSString stringWithFormat:@"%@/Desktop",NSHomeDirectory()];
        
        NSString* filePath = [NSString stringWithFormat:@"%@/test.txt",desktop];
        
        if([fileMgr fileExistsAtPath:filePath])
        {
            NSError* error;
            BOOL copyResult;
            BOOL renameResult;
            BOOL compareResult;
            
            NSString* newPath = [NSString stringWithFormat:@"%@/copy.txt",desktop];
            
            // Content of file 
            NSLog(@"%@", [NSString stringWithContentsOfFile:
                          filePath encoding:NSUTF8StringEncoding error:NULL]);
            
            // Copy
            copyResult = [fileMgr copyItemAtPath:filePath toPath:newPath error: &error];            
            if (copyResult == NO)
                NSLog(@"Copy failed :%ld" ,error.code );
            
            // Compare
            compareResult = [fileMgr contentsEqualAtPath:filePath andPath:newPath];
            if( compareResult == NO)
                NSLog(@"Files are not equal");
            
            // Rename
            NSString* newFileName = [NSString stringWithFormat:@"%@/clone.txt",desktop];

            renameResult = [fileMgr moveItemAtPath:newPath toPath:newFileName error:&error];

            // Info
            NSDictionary* attDict = [fileMgr attributesOfItemAtPath:newFileName error:nil];
            NSLog(@"File type %@",[attDict objectForKey: NSFileType]);
            NSLog(@"File size %@",[attDict objectForKey: NSFileSize]);
            
            // Delete
            if ([fileMgr removeItemAtPath:newFileName error: &error] == NO)
                NSLog(@"Delete failed :%ld",(long)error.code);
        }
        else
            NSLog(@"File doesn't exist");
        
        
    }
    return 0;
}

