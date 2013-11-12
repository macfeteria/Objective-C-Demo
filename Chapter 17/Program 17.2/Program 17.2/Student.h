//
//  Student.h
//  Program 17.2
//
//  Created by Ter on 11/12/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Classroom;

@interface Student : NSManagedObject

@property (nonatomic, retain) NSString * gender;
@property (nonatomic, retain) NSNumber * score;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) Classroom *room;

@end
