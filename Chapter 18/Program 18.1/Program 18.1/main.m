//
//  main.m
//  Program 18.1
//
//  Created by Ter on 1/4/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyDelegate.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        NSString* readme = @"https://dl.dropboxusercontent.com/u/7585756/smith.json";
        NSURL* url = [NSURL URLWithString:readme];
        
        MyDelegate* delegate = [[MyDelegate alloc] init];
        
        NSURLSessionConfiguration* config = [NSURLSessionConfiguration
                                             defaultSessionConfiguration];
        
        NSURLSession *session = [NSURLSession sessionWithConfiguration:config
                                                              delegate:delegate
                                                         delegateQueue:nil];

        NSURLSessionDataTask* task = [session dataTaskWithURL:url];
        [task resume];

        NSDate *start = [NSDate date];

        // Wait until the task is finished
        while (task.state == NSURLSessionTaskStateRunning)
        {
            NSTimeInterval timeInterval = [start timeIntervalSinceNow];
            if( fabs(timeInterval) > 3)
            {
                NSLog(@"Server response time is too long");
                [task cancel];
            }
        }
        
        if( [delegate.netData length] > 0)
        {
            NSString* text = [[NSString alloc] initWithData:delegate.netData
                                                   encoding:NSUTF8StringEncoding];
            
            NSLog(@"%@", text);
        }

    }
    return 0;
}

