//
//  Events.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Events.h"

@implementation Events

- (void)eventsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"events.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)eventsForSite:(NSString *)site withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"events/%@.%@", site, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)eventsForSite:(NSString *)site andId:(NSString *)uniqueId withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"events/%@/%@.%@", site, uniqueId, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)annualHolidaysWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"events/holidays.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

@end
