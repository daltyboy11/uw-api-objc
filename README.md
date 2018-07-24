# uw-api-objc
Objective-C Client library for the [University of Waterloo Open data API](https://github.com/uWaterloo/api-documentation)

## Installation

Drag the Xcode Project (`UWaterlooAPIObjc.xcodeproj`) into your own project and then add the `UWaterlooAPIObjc.framework` to the embedded binaries section in your target's settings.

To use the provided classes, `#import <UWaterlooAPIObjc/UWaterlooAPIObjc.h>`.

## Initializing the client

Make sure to pass in a valid [api key](https://uwaterloo.ca/api/register) when initializing the client.

```objective-c
UWAPI* uwapi = [[UWAPI alloc] initWithApiKey:@"123456789"];
```

By default, responses will be in json format, but you can choose between json and xml

```objective-c
UWAPI* uwapi = [[UWAPI alloc] initWithApiKey:@"123456789" andFormat:ResponseFormatXml];
```

## Accessing endpoints

All endpoints are accessed through the UWAPI instance's properties, and each property exposes the available methods for its respective endpoint. Handling the response is done through an `(NSDictionary, NSError)` callback. The response (if there is no error), is contained in the dictionary.

### Examples

1. Accessing the `/awards` endpoint through the `awards` property to get a list of the available undergraduate scholarships
```objective-c
[[uwapi awards] undergraduateAwardsWithCompletion:^(NSDictionary * _Nullable response, NSError * _Nullable error) {
  // check for error
  // if error is nil, do something with response
}];
```

2. Acessing the /courses endpoint throught the course property to get schedule for CS 246
```objective-c
[[uwapi course] courseScheduleForSubject:@"CS" andCatalogNumber:@"246" withCompletion:^(NSDictionary * _Nullable response, NSError * _Nullable error) {
  // check for error
  // if error is nil, do something with response
}];
```

## Features
1. Support for all endpoints
2. JSON and XML response formats

## Official API + Documentation
[uWaterloo/api-documentation](https://github.com/uWaterloo/api-documentation)
