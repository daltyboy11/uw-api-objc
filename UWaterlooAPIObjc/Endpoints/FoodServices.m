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
    NSString* path = [NSString stringWithFormat:@"foodservices/menu.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)menuForYear:(NSUInteger)year andWeek:(NSUInteger)week withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"foodservices/%lu/%lu/menu.%@", year, week, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)notes:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"foodservices/notes.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)notesForYear:(NSUInteger)year andWeek:(NSUInteger)week withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"foodservices/%lu/%lu/notes.%@", year, week, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)diets:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"foodservices/diets.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)outlets:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"foodservices/outlets.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)locations:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"foodservices/locations.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)watcard:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"foodservices/watcard.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)announcements:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"foodservices/announcements.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)announcementsForYear:(NSUInteger)year andWeek:(NSUInteger)week withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"foodservices/%lu/%lu/announcements.%@", year, week, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)productsForId:(NSUInteger)productId withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"foodservices/products/%lu.%@", productId, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

@end
