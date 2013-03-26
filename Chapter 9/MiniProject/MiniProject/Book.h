//
//  Book.h
//  MiniProject
//
//  Created by Ter on 3/20/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
{
    NSString* _name;
    float _price;
    int _copies;
}

@property (readonly) NSString* name;
@property (readonly) float price;
@property (assign) int copies;


+(Book*) bookWithName:(NSString*)name price:(float)price copies:(int)copies;
-(id) initWithName:(NSString*)name price:(float)price copies:(int)copies;

-(NSComparisonResult) compareByName:(id) other;


@end
