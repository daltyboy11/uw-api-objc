//
//  JobsTests.m
//  UWaterlooAPIObjcTests
//
//  Created by Dalton Sweeney on 2018-07-23.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UWAPI.h"
#import "Jobs.h"

@interface JobsTests : XCTestCase
@property (strong) UWAPI* api;
@end

@implementation JobsTests

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
- (void)testJobs
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api jobs] opportunitiesWithCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testJobsForSite
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api jobs] opportunitiesForSite:@"planning" WithCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testJobsForSiteAndId
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api jobs] opportunityDescriptionForSite:@"planning" andId:@"455" WithCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

@end
