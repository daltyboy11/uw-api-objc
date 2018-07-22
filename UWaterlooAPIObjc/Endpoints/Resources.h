//
//  Resources.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@interface Resources : Endpoint

/** This method fetches a list of all the tutors available to help for a course for a given term */
- (void)tutorsWithCompletion:(Handler)completion;

/** This method fetches a list of campus employer infosessions */
- (void)coopInfoSessionsWithCompletion:(Handler)completion;

/** This method fetches a list of geese nests during their spring mating season */
- (void)geeseNestsWithCompletion:(Handler)completion;

/** This method fetches a list of all UW employees that earn more than $100k/yr */
- (void)sunshineListWithCompletion:(Handler)completion;

@end
