//
//  EventsTests.m
//  UWaterlooAPIObjcTests
//
//  Created by Dalton Sweeney on 2018-07-22.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UWAPI.h"
#import "Events.h"

@interface EventsTests : XCTestCase
@property (strong) UWAPI* api;
@end

@implementation EventsTests

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
- (void)testEvents
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api events] eventsWithCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:2.0];
}

- (void)testEventsForSite
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api events] eventsForSite:@"engineering" withCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testEventsForSiteAndId
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api events] eventsForSite:@"engineering" andId:@"1701" withCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testHolidays
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api events] annualHolidaysWithCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

@end
