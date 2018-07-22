//
//  AwardsTests.m
//  UWaterlooAPIObjcTests
//
//  Created by Dalton Sweeney on 2018-07-22.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UWAPI.h"
#import "Awards.h"

@interface AwardsTests : XCTestCase
@property (strong) UWAPI* api;
@end

@implementation AwardsTests

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
- (void)testUndergraduateScholarships
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api awards] undergraduateAwardsWithCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testGraduateScholarships
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@""];
    [[_api awards] graduateAwardsWithCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

@end
