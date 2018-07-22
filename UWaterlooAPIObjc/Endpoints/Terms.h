//
//  Terms.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@interface Terms : Endpoint

/** This method returns the current, previous and next term's id along with a list of terms in the past year and the next year */
- (void)termsListWithCompletion:(Handler)completion;

/** This method returns a list of all courses offered for the given term from the opendata database */
- (void)coursesForTerm:(NSString*)term withCompletion:(Handler)completion;

/** This method returns a given term's exam schedule */
- (void)examScheduleForTerm:(NSString*)term withCompletion:(Handler)completion;

/** This method returns all class schedule for the given subject for a given term */
- (void)courseSchedulesForTerm:(NSString*)term andSubject:(NSString*)subject withCompletion:(Handler)completion;

/** This method returns the class schedule for the given course of a given term */
- (void)courseScheduleForTerm:(NSString*)term
                   andSubject:(NSString*)subject
             andCatalogNumber:(NSString*)catalogNumber
               withCompletion:(Handler)completion;

/** This method returns enrollment numbers for all classes in a term */
- (void)enrollmentForTerm:(NSString*)term withCompletion:(Handler)completion;

/** This method returns enrollment numbers for all courses in a subject for a single term */
- (void)enrollmentForTerm:(NSString*)term andSubject:(NSString*)subject withCompletion:(Handler)completion;

/** This method returns all important dates for the requested term. */
- (void)importantDatesForTerm:(NSString*)term withCompletion:(Handler)completion;

/** This method returns the schedule for employer information sessions of a given term */
- (void)infoSessionsForTerm:(NSString*)term withCompletion:(Handler)completion;

@end
