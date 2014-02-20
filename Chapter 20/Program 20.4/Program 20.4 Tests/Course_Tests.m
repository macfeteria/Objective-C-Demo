//
//  Course_Tests.m
//  Program 20.4
//
//  Created by Ter on 2/18/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Course.h"
@interface Course_Tests : XCTestCase
{
    Student* manee;
    Student* choojai;
    Student* piti;
    Student* weera;
    Student* weerapong;
    
}
@end

@implementation Course_Tests

- (void)setUp
{
    [super setUp];
    
    manee = [Student studentWithName:@"Manee" score:48];
    choojai = [Student studentWithName:@"Choojai" score:70];
    piti = [Student studentWithName:@"Piti" score:80];
    weera = [Student studentWithName:@"Weera" score:50];
    weerapong = [Student studentWithName:@"Weerapong" score:65];
    
}

- (void)tearDown
{
     [super tearDown];
}

- (void) testSearchStudent
{
    Course* course = [[Course alloc] init];
    [course registerStudent:manee];
    [course registerStudent:weerapong];
    
    Student* studentA = [course studentWithName:@"Manee"];
    XCTAssertEqualObjects(studentA.name, @"Manee", @"search fail");
    
    Student* studentB = [course studentWithName:@"Weera"];
    XCTAssertNil(studentB, @"search fail");
    
}

- (void) testRegister
{
    Course* course = [[Course alloc] init];
    [course registerStudent:manee];
    [course registerStudent:manee];
    XCTAssertEqual([course countStudent], 1, @"register fail");
    
    [course registerStudent:choojai];
    XCTAssertEqual([course countStudent], 2, @"register fail");
}

-(void) testMaxScore
{
    Course* course = [[Course alloc] init];
    [course registerStudent:manee];
    [course registerStudent:choojai];
    [course registerStudent:weera];
    XCTAssertEqual([course maxScore], choojai.score, @"max score fail");
}

-(void) testAverage
{
    Course* course = [[Course alloc] init];
    XCTAssertEqual([course averageScore], 0, @"average score fail");

    [course registerStudent:manee];
    [course registerStudent:choojai];
    float avg = (manee.score + choojai.score) / 2.0;
    XCTAssertEqual([course averageScore], avg, @"average score fail");
    
}

-(void) testPassedStudent
{
    Course* course = [[Course alloc] init];
    [course registerStudent:manee];
    [course registerStudent:choojai];
    [course registerStudent:weera];
    [course registerStudent:weerapong];
    [course registerStudent:piti];
    
    NSArray* passed = [course passedStudent];
    XCTAssertEqual([passed count], 4, @"passedStudent fail");
}
@end
