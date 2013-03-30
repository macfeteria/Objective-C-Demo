//
//  Product+MyExtend.h
//  Program 10.1
//
//  Created by Ter on 3/30/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "Product.h"

@interface Product (MyExtend)
-(float) priceIncludeVat;
-(float) price;
-(NSString*) name;

//-(void) setName:(NSString*) name andPrice:(float) price;

@end
