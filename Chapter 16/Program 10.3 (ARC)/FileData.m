//
//  FileData.m
//  Program 10.3
//
//  Created by Ter on 3/30/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "FileData.h"

@implementation FileData
-(id) init
{
    self = [super init];
    if( self != nil)
    {
        _barList = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:6],
                    [NSNumber numberWithInt:4],
                    [NSNumber numberWithInt:8],
                    [NSNumber numberWithInt:7],nil];
    }
    return self;
}


-(int) numberOfBar
{
    return (int)[_barList count];
}
-(int) valueForBar:(int)bar
{
    if( bar >= [_barList count] )
        return 0;
    
    NSNumber* value = [_barList objectAtIndex:bar];
    return [value intValue];
}
@end
