//
//  Network.h
//  Program 14.11
//
//  Created by Ter on 7/13/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Network : NSObject
{
    id delegate;
    NSMutableString* buffer;
    NSArray* emoList;
    NSTimer* timer;
}

-(void) start;
-(void) updateData;
-(void) doneUpdateData;

@property (retain) id delegate;
@end
