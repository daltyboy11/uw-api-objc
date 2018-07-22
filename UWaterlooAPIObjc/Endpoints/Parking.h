//
//  Parking.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@interface Parking : Endpoint

/** This method fetches real-time parking counts in select parking lots across campus. */
- (void)parkingLotsCountWithCompletion:(Handler)completion;

/** This method fetches list of metered parking lots across campus. */
- (void)meteredParkingLotsWithCompletion:(Handler)completion;

/** This method fetches list of permit based parking lots across campus. */
- (void)permitParkingLotsWithCompletion:(Handler)completion;

/** This method fetches list of visitor parking lots across campus. */
- (void)visitorParkingLotsWithCompletion:(Handler)completion;

/** This method fetches list of short-term parking lots across campus. */
- (void)shortTermParkingLotsWithCompletion:(Handler)completion;
 
/** This method fetches list of accessible parking lots across campus. */
- (void)accessibleParkingLotsWithCompletion:(Handler)completion;

/** This method fetches list of motorcycle allowed parking lots across campus. */
- (void)motorcycleAllowedParkingLotsWithCompletion:(Handler)completion;

@end
