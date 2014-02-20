//
//  Program_20_4_Tests.m
//  Program 20.4 Tests
//
//  Created by Ter on 2/18/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Course.h"

@interface Program_20_4_Tests : XCTestCase

@end

@implementation Program_20_4_Tests

- (void) testCreateStudent
{
    Student* student = [Student studentWithName:@"Sompong" score:60];
    XCTAssertEqual(student.score, 60, @"score fail");
    XCTAssertEqualObjects(student.name,@"Sompong", @"name fail ");
}

@end
