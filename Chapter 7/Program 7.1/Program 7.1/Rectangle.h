//
//  Rectangle.h
//  Program 7.1
//
//  Created by Ter on 3/26/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject
{
    float height;
    float width;
    float area;
}
-(float) area;
-(void) setHeigh:(float)h width:(float)w;

@end
