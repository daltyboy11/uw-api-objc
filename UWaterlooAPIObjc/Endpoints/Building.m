//
//  Building.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Building.h"

@implementation Building

- (void)buildingsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"buildings/list.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)buildingForCode:(NSString *)code withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"buildings/%@.%@", code, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)coursesForClassroom:(NSString *)room andBuildingCode:(NSString *)code withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"buildings/%@/%@/courses.%@", code, room, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)wifiAccessPointsForBuildingCode:(NSString *)code withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"buildings/%@/accesspoints.%@", code, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)vendingMachinesForBuildingCode:(NSString *)code withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"buildings/%@/vendingmachines.%@", code, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

@end
