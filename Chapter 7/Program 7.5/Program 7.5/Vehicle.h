//
//  Vehicle.h
//  Program 7.5
//
//  Created by Ter on 3/28/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject
{
    int speed;
}
-(void) initDefaultSpeed;
-(void) printDetails;
@end
