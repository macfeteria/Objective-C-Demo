//
//  Program 8.7
//
//  Created by Ter on 2/25/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//
//  Product.h

#import <Foundation/Foundation.h>

typedef void(^PrintBlock) (NSString* name, float price) ;

@interface Product : NSObject
{
    NSMutableString* name;
    float price;
    PrintBlock printBlock;
}


-(id) initWithName:(NSString*) name price:(float) price;

-(void) setPrintBlock:(PrintBlock) block;
-(PrintBlock) getPrintBlock;
-(void) printWithName:(NSString*) name andPrice:(float) price;
@end
