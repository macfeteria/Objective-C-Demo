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
-(id) initWithName:(NSString*)n price:(float)p
{
    self = [super init];
    if( self != nil)
    {
        name = [[NSMutableString alloc] initWithString:n];
        price = p;
    }
    return self;
}

-(void) dealloc
{
    [printBlock release];
    [name release];
    [super dealloc];
}

-(void) setPrintBlock:(PrintBlock) block
{
    if( printBlock)
        [printBlock release];
    
    printBlock = [block copy];
}

-(PrintBlock) getPrintBlock
{
    return [[printBlock copy] autorelease];
}

-(void) printWithName:(NSString*)n andPrice:(float)p;
{
    printBlock(n, p);
}

@end
