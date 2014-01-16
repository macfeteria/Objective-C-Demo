//
//  MyDelegate.m
//  Program 18.1
//
//  Created by Ter on 1/11/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import "MyDelegate.h"

@implementation MyDelegate
-(id) init
{
    self = [super init];
    if( self != nil)
    {
        _netData = [[NSMutableData alloc] init];
    }
    return self;
}
- (void)URLSession:(NSURLSession *)session
          dataTask:(NSURLSessionDataTask *)dataTask didReceiveData:(NSData *)data
{
    [_netData appendData:data];
}
- (void)URLSession:(NSURLSession *)session
              task:(NSURLSessionTask *)task didCompleteWithError:(NSError *)error
{
    if( error != nil)
        NSLog(@"Error: %@", error.description);
}
@end
