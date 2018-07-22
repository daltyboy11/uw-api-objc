//
//  Codes.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Codes.h"

@implementation Codes

- (void)codesByUnitWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"codes/units.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)codesByTermWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"codes/terms.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)codesByGroupWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"codes/groups.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)codesBySubjectWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"codes/subjects.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)instructionsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"codes/instructions.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

@end
