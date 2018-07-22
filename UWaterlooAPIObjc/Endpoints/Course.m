//
//  Course.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Course.h"

@implementation Course

- (void)coursesWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"courses.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)coursesForSubject:(NSString *)subject withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"courses/%@.%@", subject, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)courseForCourseId:(NSString*)courseId withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"courses/%@.%@", courseId, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)courseScheduleForClassNumber:(NSUInteger)classNumber withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"courses/%lu/schedule.%@", classNumber, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)courseInfoForCourseWithSubject:(NSString *)subject
                      andCatalogNumber:(NSString *)catalogNumber
                        withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"courses/%@/%@.%@", subject, catalogNumber, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)courseScheduleForSubject:(NSString *)subject
                andCatalogNumber:(NSString *)catalogNumber
                  withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"courses/%@/%@/schedule.%@", subject, catalogNumber, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)coursePrerequisitesForSubject:(NSString *)subject
                     andCatalogNumber:(NSString *)catalogNumber
                       withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"courses/%@/%@/prerequisites.%@", subject, catalogNumber, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)courseExamScheduleForSubject:(NSString *)subject
                    andCatalogNumber:(NSString *)catalogNumber
                      withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"courses/%@/%@/examschedule.%@", subject, catalogNumber, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

@end
