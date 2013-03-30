//
//  Product.h
//  Program 10.1
//
//  Created by Ter on 3/30/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject
{
    NSMutableString* _name;
    float _price;
}

-(void) setName:(NSString*) name andPrice:(float) price;
@end