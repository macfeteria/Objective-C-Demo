//
//  MyDelegate.m
//  Program 18.3
//
//  Created by Ter on 1/12/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import "MyDelegate.h"

@implementation MyDelegate
- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task
   didSendBodyData:(int64_t)bytesSent
    totalBytesSent:(int64_t)totalBytesSent
totalBytesExpectedToSend:(int64_t)totalBytesExpectedToSend
{
    NSLog(@"send: %lli , total send: %lli , total byte: %lli"
          , bytesSent , totalBytesSent ,totalBytesExpectedToSend);
}
@end
