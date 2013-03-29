//
//  Circle.h
//  Program 7.2
//
//  Created by Ter on 3/24/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Circle : NSObject 
{
    float area;
    float radius;
}
-(float) area;
-(void) setRadius:(float) r;
-(void) printData;

@end
