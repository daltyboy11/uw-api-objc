//
//  Transit.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@interface Transit : Endpoint

/** This method fetches list of transit agencies that GRT connects to */
- (void)transitsWithCompletion:(Handler)completion;

/** This method fetches list of all GRT bus stops */
- (void)grtStopsWithCompletion:(Handler)completion;

@end
