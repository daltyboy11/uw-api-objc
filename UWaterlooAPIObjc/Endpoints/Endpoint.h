//
//  Endpoint.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shared.h"

typedef void(^Handler)(NSDictionary* _Nullable, NSError* _Nullable);

@interface Endpoint : NSObject

@property (nonatomic) ResponseFormat responseFormat;

- (instancetype)initWithApiKey:(NSString*)key;

- (instancetype)initWithApiKey:(NSString *)key andFormat:(ResponseFormat)format;

- (void)getAtPath:(NSString*)path withCompletion:(Handler)completion;

- (NSString*)stringFromFormat:(ResponseFormat)format;

@end
