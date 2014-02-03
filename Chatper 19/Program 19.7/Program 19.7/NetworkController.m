//
//  Download.m
//  Program 19.4
//
//  Created by Ter on 1/29/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import "NetworkController.h"

@implementation NetworkController

- (NSOperation*)downloadWithURL:(NSString*)urlString
{
    NSInvocationOperation* theOp = nil;
    theOp = [[NSInvocationOperation alloc] initWithTarget:self
                                                 selector:@selector(performDownload:)
                                                   object:urlString];
    
    return theOp;
}

- (void)performDownload:(NSString*)urlString
{
    NSURL *url = [NSURL URLWithString:urlString];
    NSData *imageData = [NSData dataWithContentsOfURL:url];
    
    if (!imageData)
    {
        NSLog(@"Download %@ failed",urlString);
        return;
    }
    else
        NSLog(@"Download %@ done",urlString);
}
@end
