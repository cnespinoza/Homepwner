//
//  BNRItemStore.m
//  Homepwner
//
//  Created by Casandra Espinoza on 2/25/14.
//  Copyright (c) 2014 Casandra Espinoza. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"
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

-(id)init
{
    self = [super init];
    if (self) {
        allItems = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSArray *)allItems
{
    return allItems;
}

-(BNRItem *)createItem
{
    BNRItem *p = [BNRItem randomItem];
    [allItems addObject:p];
    return p;
}
@end
