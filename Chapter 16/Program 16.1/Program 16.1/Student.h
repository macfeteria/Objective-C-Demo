//
//  Student.h
//  Program 16.1
//
//  Created by Ter on 8/31/13.
//  Copyright (c) 2013 Ter. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
    NSArray* _courses;
}
@property (retain,nonatomic) NSArray* courses;
-(void) printTotalCourse;

@end
