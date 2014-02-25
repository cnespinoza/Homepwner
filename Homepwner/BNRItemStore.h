//
//  BNRItemStore.h
//  Homepwner
//
//  Created by Casandra Espinoza on 2/25/14.
//  Copyright (c) 2014 Casandra Espinoza. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItemStore : NSObject
{
}
//Notice that this is a class method and prefixed with a + instead of a -
+(BNRItemStore *)sharedStore;

@end
