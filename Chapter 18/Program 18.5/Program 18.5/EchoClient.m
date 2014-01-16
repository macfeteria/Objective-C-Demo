//
//  EchoClient.m
//  Program 18.5
//
//  Created by Ter on 1/15/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import "EchoClient.h"

@implementation EchoClient
-(void) initCommunitcation
{
    NSHost *host = [NSHost hostWithAddress:@"localhost"];
    
    NSInputStream __autoreleasing *iStream = nil;
    NSOutputStream __autoreleasing *oStream = nil;
    
    [NSStream getStreamsToHost:host
                          port:5000
                   inputStream:&iStream
                  outputStream:&oStream];
    
    outputStream = oStream;
    inputStream = iStream;
    
    [inputStream setDelegate:self];
    [outputStream setDelegate:self];
    
    [inputStream scheduleInRunLoop:[NSRunLoop currentRunLoop]
                           forMode:NSDefaultRunLoopMode];
    [outputStream scheduleInRunLoop:[NSRunLoop currentRunLoop]
                            forMode:NSDefaultRunLoopMode];

    [inputStream open];
    [outputStream open];
    
}

-(void) sendMessage:(NSString*) message
{
    self.isDone = NO;
    NSData *data = [message dataUsingEncoding:NSUTF8StringEncoding];
    [outputStream write:[data bytes] maxLength:[data length]];
}

- (void)stream:(NSStream *)theStream handleEvent:(NSStreamEvent)streamEvent
{
    NSLog(@"stream event %lu", streamEvent);
    switch (streamEvent)
    {
        case NSStreamEventOpenCompleted:
            NSLog(@"Stream opened");
            break;
        case NSStreamEventHasBytesAvailable:
        if (theStream == inputStream)
        {
            uint8_t buffer[1024];
            NSInteger len;
            while ([inputStream hasBytesAvailable])
            {
                len = [inputStream read:buffer maxLength:sizeof(buffer)];
                if (len > 0)
                {
                    NSString *output = [[NSString alloc]
                                        initWithBytes:buffer
                                        length:len
                                        encoding:NSASCIIStringEncoding];
                    
                    if (nil != output)
                        NSLog(@"server said: %@", output);
                }
            }
            self.isDone = YES;
        }
            break;
        case NSStreamEventErrorOccurred:
            NSLog(@"Can not connect to the host!");
            self.isDone = YES;
            break;
        case NSStreamEventEndEncountered:
            [theStream close];
            [theStream removeFromRunLoop:[NSRunLoop currentRunLoop]
                                 forMode:NSDefaultRunLoopMode];
            theStream = nil;
            self.isDone = YES;
            break;
        default:
            NSLog(@"Unknow Event:%lu",streamEvent);
    }
}
@end
