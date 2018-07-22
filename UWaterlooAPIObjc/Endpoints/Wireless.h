//
//  Wireless.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-22.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import <UWaterlooAPIObjc/UWaterlooAPIObjc.h>

@interface Wireless : Endpoint

/** This method fetches current wireless usage statistics, by building. */
- (void)usageWithCompletion:(Handler)completion;

/** This method fetches current wireless usage statistics for the specified building. */
- (void)usageForBuildingCode:(NSString*)code withCompletion:(Handler)completion;

/** This method fetches wireless client information. */
- (void)clientsWithCompletion:(Handler)completion;

/** This method fetches information about rogue access points. */
- (void)roguesWithCompletion:(Handler)completion;

/** This method fetches current wireless auth statistics. */
- (void)authWithCompletion:(Handler)completion;

/** This method fetches historical wireless usage statistics, by building. */
- (void)historicalUsageWithCompletion:(Handler)completion;

/** This method fetches historical wireless usage statistics for the requested building. */
- (void)historicalUsageForBuildingCode:(NSString*)code withCompletion:(Handler)completion;

/** This method fetches historical wireless client information. */
- (void)historicalClientsWithCompletion:(Handler)completion;

/** This method fetches historical statistics about rogue access points. */
- (void)historicalRoguesWithCompletion:(Handler)completion;

/** This method fetches historical wireless auth statistics. */
- (void)historicalAuthWithCompletion:(Handler)completion;

@end
