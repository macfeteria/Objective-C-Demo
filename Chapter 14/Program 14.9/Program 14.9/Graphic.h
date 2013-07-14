//
//  Graphic.h
//  Program 14.9
//
//  Created by Ter on 7/13/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Graphic : NSObject
{
    BOOL isDrawed;
}
@property (assign) BOOL isDrawed;
-(void) draw:(NSString*) text;
@end
