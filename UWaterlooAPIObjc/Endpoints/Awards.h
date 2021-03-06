//
//  Awards.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@interface Awards : Endpoint

/** This method fetches a a list of all undergraduate awards, bursaries and scholarships available to students */
- (void)undergraduateAwardsWithCompletion:(Handler)completion;

/** This method fetches a a list of all graduate awards, bursaries and scholarships available to students */
- (void)graduateAwardsWithCompletion:(Handler)completion;

@end
