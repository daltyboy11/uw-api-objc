//
//  API.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "API.h"

@implementation API

- (void)usageWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"api/usage.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)servicesWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"api/services.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)methodsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"api/methods.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)versionsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"api/versions.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)changelogWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"api/changelog.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

@end
