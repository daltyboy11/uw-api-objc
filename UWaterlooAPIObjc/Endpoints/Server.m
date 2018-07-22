//
//  Server.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Server.h"

@implementation Server

- (void)timeWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"server/time.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)errorCodesWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"server/codes.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

@end
