//
//  main.m
//  Program 18.4
//
//  Created by Ter on 1/14/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString* json = @"https://dl.dropboxusercontent.com/u/7585756/smith.json";
        NSURL* url = [NSURL URLWithString:json];
        
        NSURLSessionConfiguration* config = [NSURLSessionConfiguration
                                             defaultSessionConfiguration];
        
        NSURLSession *session = [NSURLSession sessionWithConfiguration:config
                                                              delegate:nil
                                                         delegateQueue:nil];
        
        NSURLSessionDownloadTask* task = [session downloadTaskWithURL:url
           completionHandler:^(NSURL *location, NSURLResponse *response, NSError *error)
        {
            
                NSFileManager *fileMgr = [NSFileManager defaultManager];
                NSArray *URLs = [fileMgr URLsForDirectory:NSDesktopDirectory
                                                inDomains:NSUserDomainMask];
                
                NSURL *documentsDirectory = [URLs objectAtIndex:0];
                NSString *file = [json lastPathComponent];
                NSURL *dest = [documentsDirectory URLByAppendingPathComponent:file];
                NSError *errCopy;
                
                BOOL success = [fileMgr copyItemAtURL:location toURL:dest error:&errCopy];
                if (success)
                    NSLog(@"Download done");
                else
                    NSLog(@"Error during the copy: %@", [errCopy localizedDescription]);

        }];
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

