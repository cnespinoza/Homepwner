//
//  BNRItem.h
//  RandomPossessions
//
//  Created by Casandra Espinoza on 12/18/13.
//  Copyright (c) 2013 Casandra Espinoza. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;

@property (nonatomic, copy) NSString *itemName;
@property (nonatomic,copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;

//Declaring methods

+(id)randomItem;

-(id) initWithItemName:(NSString *)name
        valueInDollars:(int)value
          serialNumber:(NSString *)sNumber;


@end
