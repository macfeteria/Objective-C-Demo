//
//  Student.h
//  Program 20.4
//
//  Created by Ter on 2/18/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
+(Student*) studentWithName:(NSString*)name score:(int) score;
@property NSString* name;
@property int score;

@end
