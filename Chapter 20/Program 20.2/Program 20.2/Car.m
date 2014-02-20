//
//  Car.m
//  Program 20.2
//
//  Created by Ter on 2/17/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import "Car.h"

@implementation Car
-(id) initWithSpeed:(int) s
{
    self = [super init];
    if( self != nil)
        _speed = s;
    return self;
}

-(NSString*) info
{
    return [NSString stringWithFormat:@"Car speed:%d",_speed];
}
@end
