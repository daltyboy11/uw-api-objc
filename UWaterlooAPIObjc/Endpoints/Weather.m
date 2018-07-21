//
//  Weather.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Weather.h"

@implementation Weather

- (void)currentWeatherWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"weather/current.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

@end
