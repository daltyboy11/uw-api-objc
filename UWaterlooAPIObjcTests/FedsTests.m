//
//  UWaterlooAPIObjcTests.m
//  UWaterlooAPIObjcTests
//
//  Created by Dalton Sweeney on 2018-07-22.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "UWAPI.h"
#import "Feds.h"

@interface UWaterlooAPIObjcTests : XCTestCase
@property (strong) UWAPI* api;
@end

@implementation UWaterlooAPIObjcTests

- (void)setUp {
    [super setUp];
    
    _api = [[UWAPI alloc] initWithApiKey:@"234279968e219cf1f180a48bf217c318"];
}

- (void)tearDown {
    _api = nil;
    
    [super tearDown];
}

// MARK: - Feds

- (void)testFedsEvents
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@"events"];
    [[_api feds] eventsWithCompletion:^(NSDictionary * dict, NSError * error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testFedsEventsForId
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@"events for id"];
    [[_api feds] eventsForId:2.0 withCompletion:^(NSDictionary * dict, NSError * error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        NSLog(@"%@", dict);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testFedsLocations
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@"event locations"];
    [[_api feds] locationsWithCompletion:^(NSDictionary * dict, NSError * error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        NSLog(@"%@", dict);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

@end
