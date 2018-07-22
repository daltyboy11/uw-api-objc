//
//  Course.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@interface Course : Endpoint

/** This method fetches a list of all courses (currently and historically offered) from the opendata database */
- (void)coursesWithCompletion:(Handler)completion;

/** This method fetches all the courses offered under a given subject */
- (void)coursesForSubject:(NSString*)subject withCompletion:(Handler)completion;

/** This method fetches all the courses offered under a given subject */
- (void)courseForCourseId:(NSString*)courseId withCompletion:(Handler)completion;

/** This method fetches the class schedule for a given course and term */
- (void)courseScheduleForClassNumber:(NSUInteger)classNumber withCompletion:(Handler)completion;

/** This method fetches all available information for a given course */
- (void)courseInfoForCourseWithSubject:(NSString*)subject
                      andCatalogNumber:(NSString*)catalogNumber
                        withCompletion:(Handler)completion;

/** This method fetches the class schedule for a given course and term */
- (void)courseScheduleForSubject:(NSString*)subject
                andCatalogNumber:(NSString*)catalogNumber
                  withCompletion:(Handler)completion;

/** This method fetches parsed and raw representation of prerequisites for a given course */
- (void)coursePrerequisitesForSubject:(NSString*)subject
                     andCatalogNumber:(NSString*)catalogNumber
                       withCompletion:(Handler)completion;

/** This method fetches a given course's exam schedule */
- (void)courseExamScheduleForSubject:(NSString*)subject
                    andCatalogNumber:(NSString*)catalogNumber
                      withCompletion:(Handler)completion;

@end
