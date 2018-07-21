//
//  Services.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Services.h"

@implementation Services

- (void)servicesForSite:(NSString *)site withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"services/%@.%@", site, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

@end
