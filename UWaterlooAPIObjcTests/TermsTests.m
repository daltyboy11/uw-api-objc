//
//  TermsTests.m
//  UWaterlooAPIObjcTests
//
//  Created by Dalton Sweeney on 2018-07-23.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UWAPI.h"
#import "Terms.h"

@interface TermsTests : XCTestCase
@property (strong) UWAPI* api;
@end

@implementation TermsTests

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
- (void)testTermsList
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api terms] termsListWithCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        NSLog(@"%@", dict);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testCoursesForTerm
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api terms] coursesForTerm:@"1161" withCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        NSLog(@"%@", dict);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testExamScheduleForTerm
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api terms] examScheduleForTerm:@"1161" withCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        NSLog(@"%@", dict);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testCourseSchedulesForTerm
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api terms] courseSchedulesForTerm:@"1161" andSubject:@"CS" withCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        NSLog(@"%@", dict);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testCourseScheduleForTermAndSubjectAndCatalogNumber
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api terms] courseScheduleForTerm:@"1139" andSubject:@"CS" andCatalogNumber:@"115" withCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        NSLog(@"%@", dict);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testEnrollmentForTerm
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api terms] enrollmentForTerm:@"1161" withCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        NSLog(@"%@", dict);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testEnrollmentForTermAndSubject
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api terms] enrollmentForTerm:@"1159" andSubject:@"ITAL" withCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        NSLog(@"%@", dict);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testImportantDatesForTerm
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api terms] importantDatesForTerm:@"1161" withCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        NSLog(@"%@", dict);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testInfoSessionsForTerm
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api terms] infoSessionsForTerm:@"1161" withCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        NSLog(@"%@", dict);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

@end
