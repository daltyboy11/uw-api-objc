//
//  UWAPI.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FoodServices;
@class Feds;
@class Course;
@class Awards;
@class Events;
@class Blogs;
@class News;
@class Jobs;
@class Services;
@class Weather;
@class Terms;
@class Resources;
@class Codes;
@class Building;
@class PointsOfInterest;
@class Parking;
@class Transit;
@class PeopleDirectory;
@class Wireless;
@class API;
@class Server;

@interface UWAPI : NSObject

- (instancetype)initWithApiKey:(NSString*)key;

NS_ASSUME_NONNULL_BEGIN

@property (strong, nonatomic, readonly) NSString*       apiKey;

@property (strong, nonatomic, readonly) FoodServices*             foodServices;
@property (strong, nonatomic, readonly) Feds*                     feds;
@property (strong, nonatomic, readonly) Course*                   course;
@property (strong, nonatomic, readonly) Awards*                   awards;
@property (strong, nonatomic, readonly) Events*                   events;
@property (strong, nonatomic, readonly) Blogs*                    blogs;
@property (strong, nonatomic, readonly) News*                     news;
@property (strong, nonatomic, readonly) Jobs*                     jobs;
@property (strong, nonatomic, readonly) Services*                 services;
@property (strong, nonatomic, readonly) Weather*                  weather;
@property (strong, nonatomic, readonly) Terms*                    terms;
@property (strong, nonatomic, readonly) Resources*                resources;
@property (strong, nonatomic, readonly) Codes*                    codes;
@property (strong, nonatomic, readonly) Building*                 buildling;
@property (strong, nonatomic, readonly) PointsOfInterest*         pointsOfInterest;
@property (strong, nonatomic, readonly) Parking*                  parking;
@property (strong, nonatomic, readonly) Transit*                  transit;
@property (strong, nonatomic, readonly) PeopleDirectory*          peopleDirectory;
@property (strong, nonatomic, readonly) Wireless*                 wireless;
@property (strong, nonatomic, readonly) API*                      api;
@property (strong, nonatomic, readonly) Server*                   server;

NS_ASSUME_NONNULL_END

@end
