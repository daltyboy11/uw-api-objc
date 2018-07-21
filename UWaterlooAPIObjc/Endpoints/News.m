//
//  News.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "News.h"

@implementation News

- (void)newsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"news.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)newsForSite:(NSString *)site withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"news/%@.%@", site, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)newsForSite:(NSString *)site andId:(NSString *)uniqueId withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"news/%@/%@.%@", site, uniqueId, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

@end
