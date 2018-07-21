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
    NSString* path = @"courses.json";
    [self getAtPath:path withCompletion:completion];
}

- (void)coursesForSubject:(NSString *)subject withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"courses/%@.json", subject];
    [self getAtPath:path withCompletion:completion];
}

- (void)courseForCourseId:(NSString*)courseId withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"courses/%@.json", courseId];
    [self getAtPath:path withCompletion:completion];
}

- (void)courseScheduleForClassNumber:(NSUInteger)classNumber withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"courses/%lu/schedule.json", classNumber];
    [self getAtPath:path withCompletion:completion];
}

- (void)courseInfoForCourseWithSubject:(NSString *)subject
                      andCatalogNumber:(NSString *)catalogNumber
                        withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"courses/%@/%@.json", subject, catalogNumber];
    [self getAtPath:path withCompletion:completion];
}

- (void)courseScheduleForSubject:(NSString *)subject
                andCatalogNumber:(NSString *)catalogNumber
                  withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"courses/%@/%@/schedule.json", subject, catalogNumber];
    [self getAtPath:path withCompletion:completion];
}

- (void)coursePrerequisitesForSubject:(NSString *)subject
                     andCatalogNumber:(NSString *)catalogNumber
                       withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"courses/%@/%@/prerequisites.json", subject, catalogNumber];
    [self getAtPath:path withCompletion:completion];
}

- (void)courseExamScheduleForSubject:(NSString *)subject
                    andCatalogNumber:(NSString *)catalogNumber
                      withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"courses/%@/%@/examschedule.json", subject, catalogNumber];
    [self getAtPath:path withCompletion:completion];
}

@end
