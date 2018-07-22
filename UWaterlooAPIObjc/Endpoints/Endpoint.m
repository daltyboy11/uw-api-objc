//
//  Endpoint.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Endpoint.h"

@implementation Endpoint {
@private
    NSString*       _apiKey;
    NSURL*          _baseURL;
    NSURLSession*   _session;
}

static NSString* baseURLString = @"https://api.uwaterloo.ca/v2/";

- (instancetype)initWithApiKey:(NSString *)key
{
    return [self initWithApiKey:key andFormat:ResponseFormatJson];
}

- (instancetype) initWithApiKey:(NSString *)key andFormat:(ResponseFormat)format
{
    if (self = [super init]) {
        _responseFormat = format;
        _apiKey = key;
        _baseURL = [NSURL URLWithString:baseURLString];
        _session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    }
    return self;
}

- (void)getAtPath:(NSString *)path withCompletion:(Handler)completion
{
    NSURL* url = [NSURL URLWithString:[NSString stringWithFormat:@"\%@?key=%@", path, _apiKey]
                        relativeToURL:_baseURL];
    [[_session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSDictionary* formattedResponse = nil;
        NSError* serializationError;
        if (data != nil) {
            formattedResponse = [NSJSONSerialization JSONObjectWithData:data options:0 error:&serializationError];
            if (serializationError != nil) {
                completion(nil, serializationError);
            } else {
                completion(formattedResponse, nil);
            }
        } else {
            completion(nil, error);
        }
    }] resume];
}

- (NSString*)stringFromFormat:(ResponseFormat)format
{
    switch (format) {
        case ResponseFormatJson:
            return @"json";
            break;
        case ResponseFormatXml:
            return @"xml";
            break;
        default:
            break;
    }
    return @"";
}

@end
