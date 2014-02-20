//
//  Student.m
//  Program 20.4
//
//  Created by Ter on 2/18/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import "Student.h"

@implementation Student
+(Student*) studentWithName:(NSString*) name score:(int) score
{
    Student* student = [[Student alloc] init];
    student.name = name;
    student.score = score;
    return student;
}

-(BOOL) isEqual:(Student*)object
{
    if( [object.name isEqualToString:self.name] &&
       object.score == self.score )
    {
        return YES;
    }
    return NO;
}
-(NSString*) description
{
    return [NSString stringWithFormat:@"%@ : %d",_name,_score];
}
@end
