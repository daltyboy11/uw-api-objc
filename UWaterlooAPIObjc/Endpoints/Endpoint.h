//
//  Endpoint.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^Handler)(NSDictionary*);

@interface Endpoint : NSObject

- (instancetype)initWithApiKey:(NSString*)key;

- (void)getAtPath:(NSString*)path withCompletion:(Handler)completion;

@end
