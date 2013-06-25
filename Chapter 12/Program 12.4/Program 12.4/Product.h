//
//  Program 8.7
//
//  Created by Ter on 2/25/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//
//  Product.h

#import <Foundation/Foundation.h>

@interface Product : NSObject <NSCopying>
{
    NSMutableString* _name;
    float _price;
}

-(void) setName:(NSString*) name andPrice:(float) price;

@end
