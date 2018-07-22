//
//  Codes.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@interface Codes : Endpoint

/** This method fetches a list of all code lookups and their respective descriptions for organizations. */
- (void)codesByUnitWithCompletion:(Handler)completion;

/** This method fetches a list of all code lookups for terms. */
- (void)codesByTermWithCompletion:(Handler)completion;

/** This method fetches a list of all code lookups for groups. */
- (void)codesByGroupWithCompletion:(Handler)completion;

/** This method fetches a list of all code lookups for subjects. */
- (void)codesBySubjectWithCompletion:(Handler)completion;

/** This method fetches a list of Instructions. */
- (void)instructionsWithCompletion:(Handler)completion;

@end
