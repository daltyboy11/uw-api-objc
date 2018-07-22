//
//  Parking.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-21.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Parking.h"

@implementation Parking

- (void)parkingLotsCountWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"parking/watpark.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)meteredParkingLotsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"parking/lots/meter.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)permitParkingLotsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"parking/lots/permit.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)visitorParkingLotsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"parking/lots/visitor.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)shortTermParkingLotsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"parking/lots/shortterm.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)accessibleParkingLotsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"parking/lots/accessible.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)motorcycleAllowedParkingLotsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"parking/lots/motorcycle.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

@end
