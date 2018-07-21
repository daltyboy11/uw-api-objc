//
//  Services.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@interface Services : Endpoint

/** This method returns a sites associated services */
- (void)servicesForSite:(NSString*)site withCompletion:(Handler)completion;

@end
