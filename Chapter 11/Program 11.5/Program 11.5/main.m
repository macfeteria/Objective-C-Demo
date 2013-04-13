//
//  main.m
//  Program 11.5
//
//  Created by Ter on 4/7/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSFileManager* fileMgr = [NSFileManager defaultManager];
        
        NSString* text = @"Xcode is the integrated development environment (IDE) designed"
        "for developing iOS and Mac apps. The Xcode IDE includes editors used to design and"
        "implement your app, such as a source code editor and a user interface editor.";
        
        NSString* desktop = [NSString stringWithFormat:@"%@/Desktop",NSHomeDirectory()];
        [fileMgr changeCurrentDirectoryPath:desktop];
        
        NSString* currentPath = [fileMgr currentDirectoryPath];        
        NSString* textFile = [currentPath stringByAppendingPathComponent:@"test.txt"];
        

        //Prepare data
        NSData* writeData = [text dataUsingEncoding:NSUnicodeStringEncoding];
        
        // Write data
        if ([fileMgr createFileAtPath:textFile contents:writeData attributes:nil])
            NSLog(@"Create a new file success");
                
        // Read data
        NSData* readData = [fileMgr contentsAtPath:textFile];
        NSString* readText= [[NSString alloc] initWithData:readData
                                                   encoding:NSUnicodeStringEncoding];
        NSLog(@"%@",readText);
        
        [readText release];
        
        
    }
    return 0;
}

