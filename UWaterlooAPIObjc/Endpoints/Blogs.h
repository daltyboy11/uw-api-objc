//
//  Blogs.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@interface Blogs : Endpoint

/** This method fetches a list of all blog posts for a given site */
- (void)blogsForSite:(NSString*)site withCompletion:(Handler)completion;

/** This method fetches a blog posts details for a post id */
- (void)blogsForSite:(NSString *)site andId:(NSString*)uniqueId withCompletion:(Handler)completion;

@end
