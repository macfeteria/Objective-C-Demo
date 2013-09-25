//
//  NonArc.m
//  Program 10.3
//
//  Created by Ter on 9/24/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "NonArc.h"

@implementation NonArc
-(id) init
{
    self = [super init];
    if( self != nil)
        text = [[NSString alloc] initWithString:@"Hello"];
    return self;
}



-(void) dealloc
{
    [text release];
    [super dealloc];
}
@end
