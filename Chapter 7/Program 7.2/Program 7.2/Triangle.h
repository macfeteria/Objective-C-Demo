//
//  Triangle.h
//  Program 7.2
//
//  Created by Ter on 3/24/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Triangle : NSObject
{
    float height;
    float base;
    float area;
}
-(float) area;
-(void) setHeigh:(float)h base:(float)b;
@end
