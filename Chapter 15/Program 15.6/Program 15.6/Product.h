//
//  Program 8.7
//
//  Created by Ter on 2/25/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//
//  Product.h

#import <Foundation/Foundation.h>

typedef  void(^printBlock) (NSString* name, float price) ;

@interface Product : NSObject
{
    NSMutableString* _name;
    float _price;
}
@property (assign) float price;

-(void) setName:(NSString*) name andPrice:(float) price;
-(void) printWithBlock: (printBlock) block;

@end
