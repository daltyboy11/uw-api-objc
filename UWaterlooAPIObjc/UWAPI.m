//
//  UWAPI.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "UWAPI.h"

#import "FoodServices.h"
#import "Feds.h"
#import "Course.h"
#import "Awards.h"
#import "Events.h"
#import "Blogs.h"
#import "News.h"
#import "Jobs.h"
#import "Services.h"
#import "Weather.h"
#import "Terms.h"
#import "Resources.h"
#import "Codes.h"
#import "Building.h"
#import "PointsOfInterest.h"
#import "Parking.h"
#import "Transit.h"
#import "PeopleDirectory.h"
#import "Wireless.h"
#import "API.h"
#import "Server.h"

@implementation UWAPI

// Don't let client use the NSObject initializer
- (instancetype)init
{
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

- (instancetype)initWithApiKey:(NSString * _Nonnull)key
{
    return [self initWithApiKey:key andFormat:ResponseFormatJson];
}

- (instancetype)initWithApiKey:(NSString * _Nonnull)key andFormat:(ResponseFormat)format
{
    if (self = [super init]) {
        _apiKey = key;
        _foodServices = [[FoodServices alloc] initWithApiKey:key andFormat:format];
        _feds = [[Feds alloc] initWithApiKey:key andFormat:format];
        _course = [[Course alloc] initWithApiKey:key andFormat:format];
        _awards = [[Awards alloc] initWithApiKey:key andFormat:format];
        _events = [[Events alloc] initWithApiKey:key andFormat:format];
        _blogs = [[Blogs alloc] initWithApiKey:key andFormat:format];
        _news = [[News alloc] initWithApiKey:key andFormat:format];
        _jobs = [[Jobs alloc] initWithApiKey:key andFormat:format];
        _services = [[Services alloc] initWithApiKey:key andFormat:format];
        _weather = [[Weather alloc] initWithApiKey:key andFormat:format];
        _terms = [[Terms alloc] initWithApiKey:key andFormat:format];
        _resources = [[Resources alloc] initWithApiKey:key andFormat:format];
        _codes = [[Codes alloc] initWithApiKey:key andFormat:format];
        _buildling = [[Building alloc] initWithApiKey:key andFormat:format];
        _pointsOfInterest = [[PointsOfInterest alloc] initWithApiKey:key andFormat:format];
        _parking = [[Parking alloc] initWithApiKey:key andFormat:format];
        _transit = [[Transit alloc] initWithApiKey:key andFormat:format];
        _peopleDirectory = [[PeopleDirectory alloc] initWithApiKey:key andFormat:format];
        _wireless = [[Wireless alloc] initWithApiKey:key andFormat:format];
        _api = [[API alloc] initWithApiKey:key andFormat:format];
        _server = [[Server alloc] initWithApiKey:key andFormat:format];
    }
    
    return self;
}

@end
