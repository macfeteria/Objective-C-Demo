//
//  Classroom.h
//  Program 17.3
//
//  Created by Ter on 11/12/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Student;

@interface Classroom : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * teacher;
@property (nonatomic, retain) NSSet *studentList;
@end

@interface Classroom (CoreDataGeneratedAccessors)

- (void)addStudentListObject:(Student *)value;
- (void)removeStudentListObject:(Student *)value;
- (void)addStudentList:(NSSet *)values;
- (void)removeStudentList:(NSSet *)values;

@end
