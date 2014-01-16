//
//  main.m
//  Program 18.3
//
//  Created by Ter on 1/12/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyDelegate.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSURL* postURL = [NSURL URLWithString:@"http://localhost:9000/cgi-bin/PostIt.py"];
        NSURL* fileURL = [NSURL fileURLWithPath:@"/Users/Ter/Desktop/Untitled.png"];
        MyDelegate* dataDelegate = [[MyDelegate alloc] init];
        
        // Build the request body
        NSString *boundary = @"boundary-demo";
        
        NSURLSessionConfiguration* config = [NSURLSessionConfiguration
                                             defaultSessionConfiguration];
        config.HTTPAdditionalHeaders = @{@"Content-Type":
                [NSString stringWithFormat:@"multipart/form-data; boundary=%@", boundary]  };
        
        // Body part for the attachament.
        NSMutableData *body = [NSMutableData data];
        NSData* imageData = [NSData dataWithContentsOfURL:fileURL];
        if (imageData)
        {
            [body appendData:[[NSString stringWithFormat:@"--%@\r\n", boundary]
                              dataUsingEncoding:NSUTF8StringEncoding]];
            
            [body appendData:[[NSString stringWithFormat:@"Content-Disposition: form-data; "
                               "name=\"fileContents\"; filename=\"%@\"\r\n",
                               [fileURL lastPathComponent]]
                              dataUsingEncoding:NSUTF8StringEncoding]];
            
            [body appendData:[@"Content-Type: image/png\r\n\r\n"
                              dataUsingEncoding:NSUTF8StringEncoding]];
            
            //This is an image.
            [body appendData:imageData];
            
            [body appendData:[[NSString stringWithFormat:@"\r\n"]
                              dataUsingEncoding:NSUTF8StringEncoding]];
        }
        [body appendData:[[NSString stringWithFormat:@"--%@--\r\n", boundary]
                          dataUsingEncoding:NSUTF8StringEncoding]];


        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:postURL];
        request.HTTPMethod = @"POST";
        
        NSURLSession *session = [NSURLSession sessionWithConfiguration:config
                                                              delegate:dataDelegate
                                                         delegateQueue:nil];
        
        NSURLSessionUploadTask* task = [session uploadTaskWithRequest:request fromData:body];
        [task resume];
        
        
        NSDate *start = [NSDate date];
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

