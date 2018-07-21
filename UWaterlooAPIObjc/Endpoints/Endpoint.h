//
//  Endpoint.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^Handler)(NSDictionary*);

typedef NS_ENUM(NSUInteger, ResponseFormat) {
    ResponseFormatJson,
    ResponseFormatXml
};

@interface Endpoint : NSObject

@property (nonatomic) ResponseFormat responseFormat;

- (instancetype)initWithApiKey:(NSString*)key;

- (instancetype)initWithApiKey:(NSString *)key andFormat:(ResponseFormat)format;

- (void)getAtPath:(NSString*)path withCompletion:(Handler)completion;

- (NSString*)stringFromFormat:(ResponseFormat)format;

@end
