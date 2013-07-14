//
//  Network.m
//  Program 14.10
//
//  Created by Ter on 7/13/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "Network.h"

@implementation Network
@synthesize delegate;
-(void) dealloc
{
    [delegate release];
    [super dealloc];
}
-(void) receiveData
{
    NSString* textEmo = @"(=^-ω-^=)";
    [delegate performSelectorOnMainThread:@selector(draw:) withObject:textEmo waitUntilDone:YES];
}
@end