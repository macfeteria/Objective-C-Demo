//
//  MyDelegate.m
//  Program 18.2
//
//  Created by Ter on 1/12/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import "MyDelegate.h"

@implementation MyDelegate 
- (void)URLSession:(NSURLSession *)session
      downloadTask:(NSURLSessionDownloadTask *)downloadTask
didFinishDownloadingToURL:(NSURL *)location
{
    NSFileManager *fileMgr = [NSFileManager defaultManager];
    NSArray *URLs = [fileMgr URLsForDirectory:NSDesktopDirectory inDomains:NSUserDomainMask];

    NSURL *documentsDirectory = [URLs objectAtIndex:0];
    NSString *originalURL = [[[downloadTask originalRequest] URL] lastPathComponent];
    NSURL *destinationURL = [documentsDirectory URLByAppendingPathComponent:originalURL];
    NSError *errorCopy;
    
    BOOL success = [fileMgr copyItemAtURL:location toURL:destinationURL error:&errorCopy];
    if (success)
        NSLog(@"Download done");
    else
        NSLog(@"Error during the copy: %@", [errorCopy localizedDescription]);
}

- (void)URLSession:(NSURLSession *)session
      downloadTask:(NSURLSessionDownloadTask *)downloadTask
      didWriteData:(int64_t)bytesWritten
 totalBytesWritten:(int64_t)totalBytesWritten
totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite
{
    
}

- (void)URLSession:(NSURLSession *)session
      downloadTask:(NSURLSessionDownloadTask *)downloadTask
 didResumeAtOffset:(int64_t)fileOffset
expectedTotalBytes:(int64_t)expectedTotalBytes
{
    
}
@end
