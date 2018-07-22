//
//  Feds.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Feds.h"

@implementation Feds

- (void)eventsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"feds/events.%@", [self stringFromFormat:self.responseFormat]];;
    [self getAtPath:path withCompletion:completion];
}

- (void)eventsForId:(NSUInteger)eventId withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"feds/events/%lu.%@", eventId, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)locationsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"feds/locations.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

@end
