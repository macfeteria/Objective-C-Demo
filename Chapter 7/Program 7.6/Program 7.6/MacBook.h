//
//  MacBook.h
//  Program 7.6
//
//  Created by Ter on 3/28/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SolidStateDisk.h"

@interface MacBook : NSObject
{
    float speed;
    SolidStateDisk *internalHarddisk;
}
@property float speed;
-(void) printSpec;
@end
