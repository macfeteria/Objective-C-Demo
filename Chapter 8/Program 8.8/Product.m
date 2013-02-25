//
//  Product.m
//  Program 8.8
//
//  Created by Ter on 2/25/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//


#import "Product.h"


@implementation Product
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

-(id) initWithName:(NSString*)name andPrice:(float) price
{
    self = [super init];
    if( self != nil)
    {
        _name = [[NSMutableString alloc] initWithString:name];
        _price = price;
    }
    return self;
}

+(Product*) productWithName:(NSString*)name andPrice:(float)price
{
    return [[[Product alloc] initWithName:name andPrice:price] autorelease];
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

