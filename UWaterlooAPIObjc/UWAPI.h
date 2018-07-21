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
@class API;
@class Server;

@interface UWAPI : NSObject

- (instancetype)initWithApiKey:(NSString*)key;

NS_ASSUME_NONNULL_BEGIN

@property (strong, nonatomic, readonly) NSString*       apiKey;

@property (strong, nonatomic) FoodServices*             foodServices;
@property (strong, nonatomic) Feds*                     feds;
@property (strong, nonatomic) Course*                   course;
@property (strong, nonatomic) Awards*                   awards;
@property (strong, nonatomic) Events*                   events;
@property (strong, nonatomic) Blogs*                    blogs;
@property (strong, nonatomic) News*                     news;
@property (strong, nonatomic) Jobs*                     jobs;
@property (strong, nonatomic) Services*                 services;
@property (strong, nonatomic) Weather*                  weather;
@property (strong, nonatomic) Terms*                    terms;
@property (strong, nonatomic) Resources*                resources;
@property (strong, nonatomic) Codes*                    codes;
@property (strong, nonatomic) Building*                 buildling;
@property (strong, nonatomic) PointsOfInterest*         pointsOfInterest;
@property (strong, nonatomic) Parking*                  parking;
@property (strong, nonatomic) Transit*                  transit;
@property (strong, nonatomic) PeopleDirectory*          peopleDirectory;
@property (strong, nonatomic) API*                      api;
@property (strong, nonatomic) Server*                   server;

NS_ASSUME_NONNULL_END

@end
