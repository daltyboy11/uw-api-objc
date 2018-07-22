//
//  Server.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@interface Server : Endpoint

/** This method fetches time information about the server */
- (void)timeWithCompletion:(Handler)completion;

/** This method fetches a list of all possible API error codes */
- (void)errorCodesWithCompletion:(Handler)completion;

@end
