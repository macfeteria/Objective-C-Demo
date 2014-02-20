//
//  Course.m
//  Program 20.4
//
//  Created by Ter on 2/18/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import "Course.h"

@implementation Course
-(id) init
{
    self = [super init];
    if(self != nil)
    {
        _studentList = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void) registerStudent:(Student*) student
{
    if( student != nil && [self studentWithName:student.name] == nil)
        [_studentList addObject:student];
    
}
-(Student*) studentWithName:(NSString*) name
{
    NSPredicate *sPredicate = [NSPredicate predicateWithFormat:@"name contains %@",name];
    NSArray* result = [_studentList filteredArrayUsingPredicate:sPredicate];
    if ([result count] > 0)
        return [result firstObject];
    else
        return nil;
    
}
-(float) averageScore
{
    float sum = 0;
    for (Student* student in _studentList)
        sum += student.score;
    return (sum / [_studentList count]);
}
-(int) maxScore
{
    int max = 0;
    for (Student* student in _studentList)
    {
        if( student.score > max)
            max = student.score;
    }
    return max;

}
-(NSArray*) passedStudent
{
    NSPredicate *sPredicate = [NSPredicate predicateWithFormat:@"score > 50"];
    NSArray* result = [_studentList filteredArrayUsingPredicate:sPredicate];
    return result;
}

-(int) countStudent
{
    return (int)[_studentList count];
}

@end
