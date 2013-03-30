//
//  MyDelegate.m
//  Program 10.4
//
//  Created by Ter on 3/30/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "MyDelegate.h"

@implementation MyDelegate
-(void) connectSuccess:(int)errorCode
{
    NSLog(@"Connect success with code: %d", errorCode);
}
-(void) receiveData:(NSString*)data
{
    NSLog(@"Receive: %@", data);
}
-(void) connectFail:(int)errorCode
{
    NSLog(@"Connect fail with code: %d", errorCode);
}
@end
