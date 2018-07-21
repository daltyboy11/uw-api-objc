//
//  Feds.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@interface Feds : Endpoint

/** This method returns a list of the upcoming events from the FEDS database. */
- (void)eventsWithCompletion:(Handler)completion;

/** This method returns a specific event's information given the unique id. */
- (void)eventsForId:(NSUInteger)eventId withCompletion:(Handler)completion;

/** This method returns a list of all outlets and their operating hour data. */
- (void)locationsWithCompletion:(Handler)completion;

@end
