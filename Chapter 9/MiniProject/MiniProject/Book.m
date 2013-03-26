//
//  Book.m
//  MiniProject
//
//  Created by Ter on 3/20/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "Book.h"

@implementation Book

@synthesize name = _name;
@synthesize price = _price;

-(id) initWithName:(NSString*)name price:(float)price copies:(int)copies
{
    self = [super init];
    if( self != nil)
    {
        _name = [[NSString alloc] initWithString:name];
        _price = price;
        _copies = copies;
    }
    return self;
}

-(void) dealloc
{
    [_name release];
    [super dealloc];
}

+(Book*) bookWithName:(NSString*)name price:(float)price copies:(int)copies
{
    return [[[Book alloc] initWithName:name price:price copies:copies] autorelease];
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"%@ %.2f (%d)",_name,_price,_copies];
}

-(NSComparisonResult) compareByName:(Book*) other
{
    NSComparisonResult result = [_name compare:other.name];
    return result;
}
@end
