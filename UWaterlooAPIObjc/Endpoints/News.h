//
//  News.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@interface News : Endpoint

/** This method returns a list of the freshest (most recently updated) 100 University of Waterloo news items as crawled from all University WCMS sites */
- (void)newsWithCompletion:(Handler)completion;

/** This method returns a list of the upcoming site's news given a site slug */
- (void)newsForSite:(NSString*)site withCompletion:(Handler)completion;

/** This method returns a specific news item's information given a site's slug and id */
- (void)newsForSite:(NSString *)site andId:(NSString*)uniqueId withCompletion:(Handler)completion;

@end
