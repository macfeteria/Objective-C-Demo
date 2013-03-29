//
//  Computer.h
//  Program 7.3
//
//  Created by Ter on 3/28/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "ElectronicDevice.h"

@interface Computer : ElectronicDevice
{
    int speed;
}
@property int speed;
-(void) printSpeed;
@end
