//
//  Course.h
//  Program 20.4
//
//  Created by Ter on 2/18/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@interface Course : NSObject
{
    NSMutableArray* _studentList;
}

-(void) registerStudent:(Student*) student;
-(Student*) studentWithName:(NSString*) name;
-(float) averageScore;
-(int) maxScore;
-(NSArray*) passedStudent;
-(int) countStudent;
@end
