//
//  Deadlock.h
//  Program Deadlock
//
//  Created by Ter on 7/14/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Deadlock : NSObject
-(void) tryToLock;
-(void) anotherToLock;
@end
