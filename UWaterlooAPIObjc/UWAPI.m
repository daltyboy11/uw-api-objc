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

- (instancetype)initWithApiKey:(NSString *)key
{
    if (self = [super init]) {
        _apiKey = key;
        _foodServices = [[FoodServices alloc] initWithApiKey:key];
        _feds = [[Feds alloc] initWithApiKey:key];
        _course = [[Course alloc] initWithApiKey:key];
        _awards = [[Awards alloc] initWithApiKey:key];
        _events = [[Events alloc] initWithApiKey:key];
        _blogs = [[Blogs alloc] initWithApiKey:key];
        _news = [[News alloc] initWithApiKey:key];
        _jobs = [[Jobs alloc] initWithApiKey:key];
        _services = [[Services alloc] initWithApiKey:key];
        _weather = [[Weather alloc] initWithApiKey:key];
        _terms = [[Terms alloc] initWithApiKey:key];
        _resources = [[Resources alloc] initWithApiKey:key];
        _codes = [[Codes alloc] initWithApiKey:key];
        _buildling = [[Building alloc] initWithApiKey:key];
        _pointsOfInterest = [[PointsOfInterest alloc] initWithApiKey:key];
        _parking = [[Parking alloc] initWithApiKey:key];
        _transit = [[Transit alloc] initWithApiKey:key];
        _peopleDirectory = [[PeopleDirectory alloc] initWithApiKey:key];
        _wireless = [[Wireless alloc] initWithApiKey:key];
        _api = [[API alloc] initWithApiKey:key];
        _server = [[Server alloc] initWithApiKey:key];
    }
    
    return self;
}

@end
