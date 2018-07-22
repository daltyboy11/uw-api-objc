//
//  Building.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@interface Building : Endpoint

/** This method fetches a list of official building names, codes, numbers, and their lat/long coordinates. */
- (void)buildingsWithCompletion:(Handler)completion;

/** This method fetches the official building name, its unique number, and its lat/long coordinates given a building code. */
- (void)buildingForCode:(NSString*)code withCompletion:(Handler)completion;

/** This method gives out the all the courses offered in a given classroom. */
- (void)coursesForClassroom:(NSString*)room andBuildingCode:(NSString*)code withCompletion:(Handler)completion;

/** This method fetches list of all access points in that given building */
- (void)wifiAccessPointsForBuildingCode:(NSString*)code withCompletion:(Handler)completion;

/** This method fetches list of vending machines available in a given building */
- (void)vendingMachinesForBuildingCode:(NSString*)code withCompletion:(Handler)completion;

@end
