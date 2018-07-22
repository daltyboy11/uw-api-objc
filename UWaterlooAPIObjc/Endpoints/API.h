//
//  API.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@interface API : Endpoint

/** This method fetches user's api usage statistics */
- (void)usageWithCompletion:(Handler)completion;

/** This method fetches all api services available to use */
- (void)servicesWithCompletion:(Handler)completion;

/** This method fetches all api endpoint methods available to use */
- (void)methodsWithCompletion:(Handler)completion;

/** This method fetches user's api usage statistics */
- (void)versionsWithCompletion:(Handler)completion;

/** This method fetches list of changes made to the API */
- (void)changelogWithCompletion:(Handler)completion;

@end
