//
//  Product.h
//  Program 8.8
//
//  Created by Ter on 2/25/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject
{
    NSMutableString* _name;
    float _price;
}

+(Product*) productWithName:(NSString*)name andPrice:(float)price;
-(id) initWithName:(NSString*)name andPrice:(float) price;
-(void) setName:(NSString*) name andPrice:(float) price;

@end
