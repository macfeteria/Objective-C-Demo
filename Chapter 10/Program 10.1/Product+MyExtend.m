//
//  Product+MyExtend.m
//  Program 10.1
//
//  Created by Ter on 3/30/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "Product+MyExtend.h"

@implementation Product (MyExtend)

-(float) priceIncludeVat
{
    return _price + (_price * 0.07 );
}

-(float) price
{
    return  _price;
}

-(NSString*) name
{
    return [NSString stringWithString:_name];
}

//-(void) setName:(NSString*) name andPrice:(float) price
//{
//    [_name setString:name];
//    _price = price * 2;
//}

@end
