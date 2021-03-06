//
//  Awards.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Awards.h"

@implementation Awards

- (void)undergraduateAwardsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"awards/undergraduate.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)graduateAwardsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"awards/graduate.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

@end
