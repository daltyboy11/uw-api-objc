//
//  FoodServicesTests.m
//  UWaterlooAPIObjcTests
//
//  Created by Dalton Sweeney on 2018-07-22.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UWAPI.h"
#import "FoodServices.h"

@interface FoodServicesTests : XCTestCase
@property (strong) UWAPI* api;
@end

@implementation FoodServicesTests

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
- (void)testMenu
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@"menu"];
    [[_api foodServices] menu:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testMenuForYearAndWeek
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@"menu for year and week"];
    [[_api foodServices] menuForYear:2013 andWeek:12 withCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testNotes
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@"notes"];
    [[_api foodServices] notes:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testNotesForYearAndWeek
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@"notes for year and week"];
    [[_api foodServices] notesForYear:2013 andWeek:12 withCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testDiets
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@"diets"];
    [[_api foodServices] diets:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testOutlets
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@"outlets"];
    [[_api foodServices] outlets:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testLocations
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@"locations"];
    [[_api foodServices] locations:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testWatcard
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@"watcard"];
    [[_api foodServices] watcard:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testAnnouncements
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@"announcements"];
    [[_api foodServices] announcements:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testAnnouncementsForYearAndWeek
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@"announcements for year and week"];
    [[_api foodServices] announcementsForYear:2013 andWeek:2 withCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

- (void)testProductsForId
{
    XCTestExpectation* expectation = [[XCTestExpectation alloc] initWithDescription:@"products for id"];
    [[_api foodServices] productsForId:1386 withCompletion:^(NSDictionary * _Nullable dict, NSError * _Nullable error) {
        XCTAssertNotNil(dict);
        XCTAssertNil(error);
        [expectation fulfill];
    }];
    [self waitForExpectations:@[expectation] timeout:1.0];
}

@end
