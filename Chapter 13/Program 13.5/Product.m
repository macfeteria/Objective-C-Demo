//
//  Product.m
//
//  Program 8.7
//
//  Created by Ter on 2/25/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//


#import "Product.h"

@implementation Product

-(id) initWithCoder:(NSCoder *)aDecoder
{
        NSString* pName = [aDecoder decodeObjectForKey:@"ProductName"];
        [_name setString:pName];
    
        _price  = [aDecoder decodeFloatForKey:@"ProductPrice"];
    
        return self;
}

-(void) encodeWithCoder: (NSCoder *) encoder
{
    [encoder encodeObject: _name forKey: @"ProductName"];
    [encoder encodeFloat: _price forKey: @"ProductPrice"];
}

-(id) init
{
    self = [super init];
    if( self != nil)
    {
        _name = [[NSMutableString alloc] init];
        _price = 0;
    }
    return self;
}
-(void) setName:(NSString*) name andPrice:(float) price
{
    [_name setString:name];
    _price = price;
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"%@ %.2f",_name,_price ];
}

-(void) dealloc
{
    [_name release];
    [super dealloc];
}
@end
