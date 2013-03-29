//
//  Computer.h
//  Program 7.4
//
//  Created by Ter on 3/28/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "ElectronicDevice.h"
#import "Harddisk.h"

@interface Computer : ElectronicDevice
{
    int speed;
    Harddisk *externalHarddisk;
}
@property int speed;
-(void) printDetails;
-(void) setExternalHarddisk:(Harddisk*) disk;
@end
