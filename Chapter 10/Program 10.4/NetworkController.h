//
//  NetworkController.h
//  Program 10.4
//
//  Created by Ter on 3/30/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NetworkDelegate.h"

@interface NetworkController : NSObject
{
    id <NetworkDelegate> _delegate;
}

@property (retain) id <NetworkDelegate> delegate;

-(void) startConnect;

@end
