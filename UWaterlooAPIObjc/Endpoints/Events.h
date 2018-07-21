//
//  Events.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@interface Events : Endpoint

/** This method returns a list of the upcoming 21 University of Waterloo events as crawled from all University WCMS sites */
- (void)eventsWithCompletion:(Handler)completion;

/** This method returns a list of the upcoming site events given a site slug */
- (void)eventsForSite:(NSString*)site withCompletion:(Handler)completion;

/** This method returns a specific event's information given a site slug and the unique id */
- (void)eventsForSite:(NSString*)site andId:(NSString*)uniqueId withCompletion:(Handler)completion;

/** This method returns a list of university holidays starting from 2012 */
- (void)annualHolidaysWithCompletion:(Handler)completion;

@end
