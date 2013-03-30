//
//  NetData.m
//  Program 10.3
//
//  Created by Ter on 3/30/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "NetData.h"

@implementation NetData
-(id) init
{
    self = [super init];
    if( self != nil)
    {
        _dataList = [[NSMutableArray alloc] init];
    }
    return self;
}
-(void) addNewData:(int) value
{
    [_dataList addObject:[NSNumber numberWithInt:value]];
}

-(void) dealloc
{
    [_dataList dealloc];
    [super dealloc];
}

-(int) numberOfBar
{
    return (int)[_dataList count];
}
-(int) valueForBar:(int)bar
{
    if( bar >= [_dataList count] )
        return 0;
    
    NSNumber* value = [_dataList objectAtIndex:bar];
    return [value intValue];
}

@end
