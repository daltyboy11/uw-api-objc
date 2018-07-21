//
//  Blogs.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Blogs.h"

@implementation Blogs

- (void)blogsForSite:(NSString *)site withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"blogs/%@.%@", site, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)blogsForSite:(NSString *)site andId:(NSString *)uniqueId withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"blogs/%@/%@.%@", site, uniqueId, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

@end
