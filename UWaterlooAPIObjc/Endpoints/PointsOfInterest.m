//
//  PointsOfInterest.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "PointsOfInterest.h"

@implementation PointsOfInterest

- (void)atmsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"poi/atms.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)greyhoundsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"poi/greyhounds.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)helplinesWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"poi/helplines.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)librariesWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"poi/libraries.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)photospheresWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"poi/photospheres.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)defibrillatorsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"poi/defibrillators.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)constructionsitesWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"poi/constructionsites.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)accessibleEntrancesWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"poi/accessibleentrances.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)visitorInformationWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"poi/visitorinformation.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

@end
