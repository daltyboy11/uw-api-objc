//
//  Jobs.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@interface Jobs : Endpoint

/** This method returns a list of all opportunities available on campus */
- (void)opportunitiesWithCompletion:(Handler)completion;

/** This method returns a list of all opportunities available on campus */
- (void)opportunitiesForSite:(NSString*)site WithCompletion:(Handler)completion;

/** This method returns the job description for a given opportunity */
- (void)opportunityDescriptionForSite:(NSString *)site andId:(NSString*)uniqueId WithCompletion:(Handler)completion;

@end
