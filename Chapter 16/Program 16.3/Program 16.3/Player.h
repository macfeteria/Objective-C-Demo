//
//  Player.h
//  Program 16.3
//
//  Created by Ter on 9/21/13.
//  Copyright (c) 2013 Ter. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject
@property (copy) NSString* name;
@property (copy) NSString* lastName;
@property (readonly) NSString* age;

-(void) printInfo;

@end
