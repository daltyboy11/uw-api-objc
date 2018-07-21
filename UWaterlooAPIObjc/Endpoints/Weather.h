//
//  Weather.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@interface Weather : Endpoint

/** This method returns the current weather details from the University of Waterloo Weather Station. */
- (void)currentWeatherWithCompletion:(Handler)completion;

@end
