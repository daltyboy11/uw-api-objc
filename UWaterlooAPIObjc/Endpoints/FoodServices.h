//
//  FoodServices.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@interface FoodServices : Endpoint

- (void)menu:(Handler)completion;

- (void)menuForYear:(NSUInteger)year andWeek:(NSUInteger)week withCompletion:(Handler)completion;

- (void)notes:(Handler)completion;

- (void)notesForYear:(NSUInteger)year andWeek:(NSUInteger)week withCompletion:(Handler)completion;

- (void)diets:(Handler)completion;

- (void)outlets:(Handler)completion;

- (void)locations:(Handler)completion;

- (void)watcard:(Handler)completion;

- (void)announcements:(Handler)completion;

- (void)announcementsForYear:(NSUInteger)year andWeek:(NSUInteger)week withCompletion:(Handler)completion;

- (void)productsForId:(NSUInteger)productId withCompletion:(Handler)completion;

@end
