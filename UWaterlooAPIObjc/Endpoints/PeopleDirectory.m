//
//  PeopleDirectory.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "PeopleDirectory.h"

@implementation PeopleDirectory

- (void)userForUserId:(NSString *)userId withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"directory/%@.%@", userId, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

@end
