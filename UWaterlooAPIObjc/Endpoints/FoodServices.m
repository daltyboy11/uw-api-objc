//
//  FoodServices.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "FoodServices.h"

@implementation FoodServices

- (void)menu:(Handler)completion
{
    NSString* path = @"foodservices/menu.json";
    [self getAtPath:path withCompletion:completion];
}

- (void)menuForYear:(NSUInteger)year andWeek:(NSUInteger)week withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"foodservices/%lu/%lu/menu.json", year, week];
    [self getAtPath:path withCompletion:completion];
}

- (void)notes:(Handler)completion
{
    NSString* path = @"foodservices/notes.json";
    [self getAtPath:path withCompletion:completion];
}

- (void)notesForYear:(NSUInteger)year andWeek:(NSUInteger)week withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"foodservices/%lu/%lu/notes.json", year, week];
    [self getAtPath:path withCompletion:completion];
}

- (void)diets:(Handler)completion
{
    NSString* path = @"foodservices/diets.json";
    [self getAtPath:path withCompletion:completion];
}

- (void)outlets:(Handler)completion
{
    NSString* path = @"foodservices/outlets.json";
    [self getAtPath:path withCompletion:completion];
}

- (void)locations:(Handler)completion
{
    NSString* path = @"foodservices/locations.json";
    [self getAtPath:path withCompletion:completion];
}

- (void)watcard:(Handler)completion
{
    NSString* path = @"foodservices/watcard.json";
    [self getAtPath:path withCompletion:completion];
}

- (void)announcements:(Handler)completion
{
    NSString* path = @"foodservices/announcements.json";
    [self getAtPath:path withCompletion:completion];
}

- (void)announcementsForYear:(NSUInteger)year andWeek:(NSUInteger)week withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"foodservices/%lu/%lu/announcements.json", year, week];
    [self getAtPath:path withCompletion:completion];
}

- (void)productsForId:(NSUInteger)productId withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"foodservices/products/%lu.json", productId];
    [self getAtPath:path withCompletion:completion];
}

@end
