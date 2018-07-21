//
//  Jobs.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Jobs.h"

@implementation Jobs

- (void)opportunitiesWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"opportunities.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)opportunitiesForSite:(NSString *)site WithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"opportunities/%@.%@", site, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)opportunityDescriptionForSite:(NSString *)site andId:(NSString *)uniqueId WithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"opportunities/%@/%@.%@", site, uniqueId, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

@end
