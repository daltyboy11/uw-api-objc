//
//  FoodServices.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@interface FoodServices : Endpoint

/** This method fetches current week's food menu. */
- (void)menu:(Handler)completion;

/** This method fetches the given week and year's food menu. */
- (void)menuForYear:(NSUInteger)year andWeek:(NSUInteger)week withCompletion:(Handler)completion;

/** This method fetches additional notes regarding food served in the current week. */
- (void)notes:(Handler)completion;

/** This method fetches additional notes regarding food served in the week specified. */
- (void)notesForYear:(NSUInteger)year andWeek:(NSUInteger)week withCompletion:(Handler)completion;

/** This method fetches a list of all diets. */
- (void)diets:(Handler)completion;

/** This method fetches a list of all outlets and their unique IDs, names and breakfast/lunch/dinner meal service indicators. */
- (void)outlets:(Handler)completion;

/** This method fetches a list of all outlets and their operating hour data. */
- (void)locations:(Handler)completion;

/** This method fetches a list of all WatCard locations according to Food Services. */
- (void)watcard:(Handler)completion;

/** This method fetches additional announcements regarding food served in the current week. */
- (void)announcements:(Handler)completion;

/** This method fetches additional announcements regarding food served in the week specified. */
- (void)announcementsForYear:(NSUInteger)year andWeek:(NSUInteger)week withCompletion:(Handler)completion;

/** This method fetches a product's nutritional information. */
- (void)productsForId:(NSUInteger)productId withCompletion:(Handler)completion;

@end
