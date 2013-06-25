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
-(void) setName:(NSString*) name
{
    if(_name != nil)
        [_name release];
    _name = [name copy];
}

-(id) copyWithZone: (NSZone *) zone
{
    //id newProduct = [[[self class] allocWithZone: zone] init];
    Product* newProduct = [[Product allocWithZone:zone] init];
    [newProduct setName:_name andPrice:_price];
    return newProduct;
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
