//
//  Terms.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Terms.h"

@implementation Terms

- (void)termsListWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"terms/list.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)coursesForTerm:(NSString *)term withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"terms/%@/courses.%@", term, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)examScheduleForTerm:(NSString *)term withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"terms/%@/examschedule.%@", term, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)courseSchedulesForTerm:(NSString *)term andSubject:(NSString *)subject withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"terms/%@/%@/schedule.%@", term, subject, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)courseScheduleForTerm:(NSString *)term
                   andSubject:(NSString *)subject
             andCatalogNumber:(NSString *)catalogNumber
               withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"terms/%@/%@/%@/schedule.%@", term, subject, catalogNumber, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)enrollmentForTerm:(NSString *)term withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"terms/%@/enrollment.%@", term, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)enrollmentForTerm:(NSString *)term andSubject:(NSString *)subject withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"terms/%@/%@/enrollment.%@", term, subject, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)importantDatesForTerm:(NSString *)term withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"terms/%@/importantdates.%@", term, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)infoSessionsForTerm:(NSString *)term withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"terms/%@/infosessions.%@", term, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

@end
