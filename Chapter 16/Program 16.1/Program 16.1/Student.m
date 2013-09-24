//
//  Student.m
//  Program 16.1
//
//  Created by Ter on 8/31/13.
//  Copyright (c) 2013 Ter. All rights reserved.
//

#import "Student.h"

@implementation Student

@synthesize courses = _courses;

-(NSArray*) courses
{
    if( _courses == nil)
        _courses = [[NSArray arrayWithObjects:@"Math",@"Thai",@"Physics",nil] retain];
    return _courses;
}
-(void) printTotalCourse
{
    NSLog(@"Courses %lu", (unsigned long)[_courses count]);
    NSLog(@"Courses %lu", (unsigned long)[self.courses count]);
    NSLog(@"Courses %lu", (unsigned long)[_courses count]);
}

@end
