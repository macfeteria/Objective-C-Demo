//
//  Student+DataManagement.m
//  Program 17.3
//
//  Created by Ter on 11/10/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "Student+DataManagement.h"

@implementation Student (DataManagement)
+(Student*) studentName:(NSString*)name
                 gender:(NSString*)gen
                  score:(NSNumber*)score
              inContext:(NSManagedObjectContext*) context;

{
    Student* student = nil;
    student = [NSEntityDescription insertNewObjectForEntityForName:@"Student"
                                         inManagedObjectContext:context];
    student.name = name;
    student.score = score;
    student.gender = gen;
    
    return student;
}

-(NSString*) grade
{
    int score = [self.score intValue];
    
    if( score >= 80) return @"A";
    else if(score >= 70 && score < 80) return @"B";
    else if(score >= 60 && score < 70) return @"C";
    else if(score >= 50 && score < 60) return @"D";
    else return @"F";
}

@end
