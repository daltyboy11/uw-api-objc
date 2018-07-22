//
//  Resources.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Resources.h"

@implementation Resources

- (void)tutorsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"resources/tutors.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)coopInfoSessionsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"resources/infosessions.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)geeseNestsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"resources/goosewatch.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)sunshineListWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"resources/sunshinelist.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

@end
