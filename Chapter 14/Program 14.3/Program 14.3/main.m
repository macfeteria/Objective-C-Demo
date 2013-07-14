//
//  main.m
//  Program 14.3
//
//  Created by Ter on 7/8/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Download.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Download* music = [[Download alloc] initWithURL:@"Music" fileSize:3];
        Download* image = [[Download alloc] initWithURL:@"Image" fileSize:5];
        
        
        NSThread *imgThread = [[NSThread alloc] initWithTarget:image
                                                      selector:@selector(startDownload)
                                                        object:nil];
        
        
        NSThread *musicThread = [[NSThread alloc] initWithTarget:music
                                                        selector:@selector(startDownload)
                                                          object:nil];
        
        [imgThread setThreadPriority:1.0];
        [musicThread setThreadPriority:0.2];
        
        
        [imgThread start];
        [musicThread start];
        
        // wait until done
        while (true)
        {
            if([imgThread isFinished] && [musicThread isFinished])
                break;
        }
        
        [music release];
        [image release];
        [imgThread release];
        [musicThread release];
        
    }
    return 0;
}