//
//  Product.m
//  Program 16.4
//
//  Created by Ter on 9/24/13.
//  Copyright (c) 2013 Ter. All rights reserved.
//

#import "Product.h"

@implementation Product
-(id) initWithName:(NSString*) name price:(int) price
{
    if( self != nil)
    {
        _name = name;
        _price = price;
    }
    return self;
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"%@ - %d" , self.name , self.price];
}
@end
