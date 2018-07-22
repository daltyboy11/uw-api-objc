//
//  Resources.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@interface Resources : Endpoint

- (void)tutorsWithCompletion:(Handler)completion;

- (void)coopInfoSessionsWithCompletion:(Handler)completion;

- (void)geeseNestsWithCompletion:(Handler)completion;

- (void)sunshineListWithCompletion:(Handler)completion;

@end
