//
//  Network.m
//  Program 14.11
//
//  Created by Ter on 7/13/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "Network.h"

@implementation Network
@synthesize delegate;
-(id) init
{
    self = [super init];
    if( self != nil)
    {
        buffer = [[NSMutableString alloc] init];
        emoList = [[NSArray alloc] initWithObjects:@"(=^-ω-^=)"
                   ,@"(,,#ﾟДﾟ)",@"(＞д＜）", nil];
    }
    return self;
}

-(void) dealloc
{
    [emoList release];
    [buffer release];
    [delegate release];
    [super dealloc];
}

-(void) start
{
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                             target:self
                                           selector:@selector(updateData)
                                           userInfo:nil
                                            repeats:YES];
    
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
    [[NSRunLoop currentRunLoop] run];
}

-(void) updateData
{
    static int index = 0;
    if( index >= [emoList count])
    {
        [timer invalidate];
        [self doneUpdateData];
    }
    [buffer appendFormat:@"%@\n",[emoList objectAtIndex:index]];
    index++;
    
}

-(void) doneUpdateData
{
    [delegate performSelectorOnMainThread:@selector(draw:)
                               withObject:buffer
                            waitUntilDone:YES];
}
@end
