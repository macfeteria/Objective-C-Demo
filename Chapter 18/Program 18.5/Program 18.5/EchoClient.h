//
//  EchoClient.h
//  Program 18.5
//
//  Created by Ter on 1/15/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EchoClient : NSObject <NSStreamDelegate>
{
    NSOutputStream*  outputStream;
    NSInputStream*  inputStream;
}
@property (assign) BOOL isDone;
-(void) initCommunitcation;
-(void) sendMessage:(NSString*) message;

@end
