//
//  Wireless.m
//  UWaterlooAPIObjc
//
//  Created by Dalton Sweeney on 2018-07-22.
//  Copyright © 2018 Dalton Sweeney. All rights reserved.
//

#import "Wireless.h"

@implementation Wireless

- (void)usageWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"wireless/usage.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)usageForBuildingCode:(NSString *)code withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"wireless/usage/%@.%@", code, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)clientsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"wireless/clients.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)roguesWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"wireless/rogues.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)authWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"wireless/auth.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)historicalUsageWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"wireless/historical/usage.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)historicalUsageForBuildingCode:(NSString *)code withCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"wireless/historical/usage/%@.%@", code, [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)historicalClientsWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"wireless/historical/clients.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)historicalRoguesWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"wireless/historical/rogues.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

- (void)historicalAuthWithCompletion:(Handler)completion
{
    NSString* path = [NSString stringWithFormat:@"wireless/historical/auth.%@", [self stringFromFormat:self.responseFormat]];
    [self getAtPath:path withCompletion:completion];
}

@end
