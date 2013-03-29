//
//  ElectronicDevice.h
//  Program 7.3
//
//  Created by Ter on 3/28/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ElectronicDevice : NSObject
{
    float price;
}
@property float price;
-(void) printPrice;
@end

