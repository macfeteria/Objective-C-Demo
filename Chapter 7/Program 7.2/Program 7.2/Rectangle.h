//
//  Rectangle.h
//  Program 7.2
//
//  Created by Ter on 3/24/13.
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
