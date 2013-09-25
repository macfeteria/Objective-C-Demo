//
//  Product.h
//  Program 16.4
//
//  Created by Ter on 9/24/13.
//  Copyright (c) 2013 Ter. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject
@property (strong) NSString* name;
@property (assign) int price;

-(id) initWithName:(NSString*) name price:(int) price;

@end

