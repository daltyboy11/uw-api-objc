//
//  PointsOfInterest.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@interface PointsOfInterest : Endpoint

/** This method returns list of ATMs across campus. */
- (void)atmsWithCompletion:(Handler)completion;

/** This method returns list of Greyhound bus stops across city. */
- (void)greyhoundsWithCompletion:(Handler)completion;

/** This method returns list of emergency helplines across campus. */
- (void)helplinesWithCompletion:(Handler)completion;

/** This method returns list of libraries across city. */
- (void)librariesWithCompletion:(Handler)completion;

/** This method returns list of photospheres across campus. */
- (void)photospheresWithCompletion:(Handler)completion;

/** This method returns list of defibrillators across campus. */
- (void)defibrillatorsWithCompletion:(Handler)completion;

/** This method returns list of construction sites across campus. */
- (void)constructionsitesWithCompletion:(Handler)completion;

/** This method returns list of accessible entrances across campus. */
- (void)accessibleEntrancesWithCompletion:(Handler)completion;

/** This method returns list of visitor information centers across campus. */
- (void)visitorInformationWithCompletion:(Handler)completion;

@end
