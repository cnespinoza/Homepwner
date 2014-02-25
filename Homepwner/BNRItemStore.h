//
//  BNRItemStore.h
//  Homepwner
//
//  Created by Casandra Espinoza on 2/25/14.
//  Copyright (c) 2014 Casandra Espinoza. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRItem;

@interface BNRItemStore : NSObject
{
    NSMutableArray *allItems;
}
//Notice that this is a class method and prefixed with a + instead of a -
+(BNRItemStore *)sharedStore;

-(NSArray *)allItems;
-(BNRItem *)createItem;

@end
