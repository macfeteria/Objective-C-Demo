//
//  Car.h
//  Program 20.2
//
//  Created by Ter on 2/17/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
@property int speed;
-(id) initWithSpeed:(int) s;
-(NSString*) info;
@end
