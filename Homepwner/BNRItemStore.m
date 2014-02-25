//
//  BNRItemStore.m
//  Homepwner
//
//  Created by Casandra Espinoza on 2/25/14.
//  Copyright (c) 2014 Casandra Espinoza. All rights reserved.
//

#import "BNRItemStore.h"

@implementation BNRItemStore

+(BNRItemStore *)sharedStore
{
    static BNRItemStore *sharedStore = nil;
    if(!sharedStore) {
        sharedStore = [[super allocWithZone:nil] init];
    }
    return sharedStore;
}

+(id) allocWithZone:(NSZone *)zone
{
    return [self sharedStore];
}

@end
