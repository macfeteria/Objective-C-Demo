//
//  main.m
//  Program 11.6
//
//  Created by Ter on 4/13/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSFileHandle* fileReader;
        NSFileHandle* fileWriter;
        NSData* buffer;
        
        NSString *readPath = [NSHomeDirectory()
                             stringByAppendingPathComponent:@"/Desktop/read.txt"];

        NSString *writePath = [NSHomeDirectory()
                              stringByAppendingPathComponent:@"/Desktop/write.txt"];

        fileReader = [NSFileHandle fileHandleForReadingAtPath:readPath];
        fileWriter = [NSFileHandle fileHandleForWritingAtPath:writePath];
        
        
        if( fileWriter != nil && fileReader != nil)
        {
            [fileWriter seekToEndOfFile];
            
            do
            {
                buffer = [fileReader readDataOfLength:128];
                [fileWriter writeData:buffer];
                
            } while (buffer != nil && [buffer length] > 0);

            [fileWriter closeFile];
            [fileReader closeFile];
            
            NSLog(@"Content of file(R):");
            NSLog(@"%@",[NSString stringWithContentsOfFile:readPath
                                                  encoding:NSUTF8StringEncoding
                                                     error:nil]);

            NSLog(@"Content of file(W):");
            NSLog(@"%@",[NSString stringWithContentsOfFile:readPath
                                                  encoding:NSUnicodeStringEncoding
                                                     error:nil]);

            
        }
        
    }
    return 0;
}

