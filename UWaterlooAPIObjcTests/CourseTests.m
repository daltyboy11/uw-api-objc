//
//  CourseTests.m
//  UWaterlooAPIObjcTests
//
//  Created by Dalton Sweeney on 2018-07-22.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UWAPI.h"
#import "Course.h"

@interface CourseTests : XCTestCase
@property (strong) UWAPI* api;
@end

@implementation CourseTests

// MARK: - Setup
- (void)setUp {
    [super setUp];
    
    _api = [[UWAPI alloc] initWithApiKey:@"234279968e219cf1f180a48bf217c318"];
}

- (void)tearDown {
    _api = nil;
    
    [super tearDown];
}

// MARK: - Tests
- (void)testCourses
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api course] coursesWithCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testCoursesForSubject
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api course] coursesForSubject:@"MATH" withCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testCoursesForCourseId
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api course] courseForCourseId:@"7407" withCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testCourseScheduleForClassNumber
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api course] courseScheduleForClassNumber:5377 withCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testCourseInfoForSubjectAndCatalog
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api course] courseInfoForCourseWithSubject:@"PHYS" andCatalogNumber:@"234" withCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testCourseScheduleForSubjectAndCatalog
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api course] courseScheduleForSubject:@"CS" andCatalogNumber:@"246" withCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testCoursePrerequisitesForSubjectAndCatalog
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api course] coursePrerequisitesForSubject:@"CS"
                                andCatalogNumber:@"246"
                                  withCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
                                      XCTAssertNotNil(dict);
                                      XCTAssertNil(error);
                                      [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testCourseExamScheduleForSubjectAndCatalog
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api course] courseExamScheduleForSubject:@"CS"
                               andCatalogNumber:@"246"
                                 withCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
                                     XCTAssertNotNil(dict);
                                     XCTAssertNil(error);
                                     [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

@end
