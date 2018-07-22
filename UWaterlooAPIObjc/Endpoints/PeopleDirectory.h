//
//  PeopleDirectory.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@interface PeopleDirectory : Endpoint

/** This method fetches user information for a given WatIAM ID */
- (void)userForUserId:(NSString*)userId withCompletion:(Handler)completion;

@end
