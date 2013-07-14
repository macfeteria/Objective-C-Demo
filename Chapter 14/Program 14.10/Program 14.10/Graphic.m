//
//  Graphic.m
//  Program 14.10
//
//  Created by Ter on 7/13/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "Graphic.h"

@implementation Graphic
@synthesize isDrawed;
-(void) draw:(NSString*) text
{
    NSString* threadName = [[NSThread currentThread] name];
    NSLog(@"Draw on: %@", threadName);
    NSLog(@"%@",text);
    self.isDrawed = YES;
}
@end
