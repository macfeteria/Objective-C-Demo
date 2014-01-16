//
//  main.m
//  Program 18.2
//
//  Created by Ter on 1/12/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyDelegate.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString* json = @"https://dl.dropboxusercontent.com/u/7585756/smith.json";
        NSURL* url = [NSURL URLWithString:json];
        
        MyDelegate* dataDelegate = [[MyDelegate alloc] init];
        
        NSURLSessionConfiguration* config = [NSURLSessionConfiguration
                                             defaultSessionConfiguration];
        
        NSURLSession *session = [NSURLSession sessionWithConfiguration:config
                                                              delegate:dataDelegate
                                                         delegateQueue:nil];
        
        NSURLSessionDownloadTask* task = [session downloadTaskWithURL:url];
        [task resume];
        
        NSDate *start = [NSDate date];
        
        // Wait until the task is finished
        while (task.state == NSURLSessionTaskStateRunning)
        {
            NSTimeInterval timeInterval = [start timeIntervalSinceNow];
            if( fabs(timeInterval) > 15)
            {
                NSLog(@"Server response time is too long");
                [task cancel];
            }
        }
        
    }
    return 0;
}

