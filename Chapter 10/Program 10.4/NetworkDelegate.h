//
//  NetworkDelegate.h
//  Program 10.4
//
//  Created by Ter on 3/30/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NetworkDelegate <NSObject>

-(void) connectSuccess:(int)errorCode;
-(void) receiveData:(NSString*)data;
-(void) connectFail:(int)errorCode;

@optional
-(void) authentication;

@end
