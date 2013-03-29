//
//  Harddisk.h
//  Program 7.4
//
//  Created by Ter on 3/28/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "ElectronicDevice.h"

@interface Harddisk : ElectronicDevice
{
    int capacity;
}
@property int capacity;
-(void) printCapacity;
@end
