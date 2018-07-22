//
//  Transit.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Transit.h"

@implementation Transit

- (void)transitsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"transit/grt.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)grtStopsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"transit/grt/stops.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

@end
