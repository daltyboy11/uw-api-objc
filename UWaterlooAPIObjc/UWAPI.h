//
//  UWAPI.h
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shared.h"

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

/** Convenience initializer. Defaults to json format.
 * @param key - The api key. Register for your api key here: https://uwaterloo.ca/api/register
 */
- (instancetype)initWithApiKey:(NSString * _Nonnull)key;

/** Initializer.
 * @param key - The api key. Register for your api key here: https://uwaterloo.ca/api/register
 * @param format - The response format. Use ResponseFormatJson for json and ResponseFormatXml for xml
 */
- (instancetype)initWithApiKey:(NSString * _Nonnull)key andFormat:(ResponseFormat)format;

NS_ASSUME_NONNULL_BEGIN

/** The api key to grant access to the api */
@property (strong, nonatomic, readonly) NSString*       apiKey;

/** Use this to access the /foodservices endpoint */
@property (strong, nonatomic, readonly) FoodServices*             foodServices;
/** Use this to access the /feds endpoint */
@property (strong, nonatomic, readonly) Feds*                     feds;
/** Use this to access the /courses endpoint */
@property (strong, nonatomic, readonly) Course*                   course;
/** Use this to access the /awards endpoint */
@property (strong, nonatomic, readonly) Awards*                   awards;
/** Use this to access the /events endpoint */
@property (strong, nonatomic, readonly) Events*                   events;
/** Use this to access the /blogs endpoint */
@property (strong, nonatomic, readonly) Blogs*                    blogs;
/** Use this to access the /news endpoint */
@property (strong, nonatomic, readonly) News*                     news;
/** Use this to access the /opportunities endpoint */
@property (strong, nonatomic, readonly) Jobs*                     jobs;
/** Use this to access the /services endpoint */
@property (strong, nonatomic, readonly) Services*                 services;
/** Use this to access the /weather endpoint */
@property (strong, nonatomic, readonly) Weather*                  weather;
/** Use this to access the /terms endpoint */
@property (strong, nonatomic, readonly) Terms*                    terms;
/** Use this to access the /resources endpoint */
@property (strong, nonatomic, readonly) Resources*                resources;
/** Use this to access the /codes endpoint */
@property (strong, nonatomic, readonly) Codes*                    codes;
/** Use this to access the /buildings endpoint */
@property (strong, nonatomic, readonly) Building*                 buildling;
/** Use this to access the /poi endpoint */
@property (strong, nonatomic, readonly) PointsOfInterest*         pointsOfInterest;
/** Use this to access the /parking endpoint */
@property (strong, nonatomic, readonly) Parking*                  parking;
/** Use this to access the /transit endpoint */
@property (strong, nonatomic, readonly) Transit*                  transit;
/** Use this to access the /directory endpoint */
@property (strong, nonatomic, readonly) PeopleDirectory*          peopleDirectory;
/** Use this to access the /wireless endpoint */
@property (strong, nonatomic, readonly) Wireless*                 wireless;
/** Use this to access the /api endpoint */
@property (strong, nonatomic, readonly) API*                      api;
/** Use this to access the /server endpoint */
@property (strong, nonatomic, readonly) Server*                   server;

NS_ASSUME_NONNULL_END

@end
