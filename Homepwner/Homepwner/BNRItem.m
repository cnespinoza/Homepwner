//
//  BNRItem.m
//  RandomPossessions
//
//  Created by Casandra Espinoza on 12/18/13.
//  Copyright (c) 2013 Casandra Espinoza. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

+(id)randomItem
{
    //Create an array of three adjectives
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy",
                                    @"Rusty",
                                    @"Shiny", nil];
    
    //Create an array of three nouns
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear",
                               @"Spork",
                               @"Mac", nil];
    
    //Get the index of a random adjective/noun from the lists.
    //Note: The % operator called the modulo operator, gives you the remainder. So adjectiveIndex is a random number from 0 to 2 inclusive.
    NSInteger adjectiveIndex = rand () % [randomAdjectiveList count];
    NSInteger nounIndex = rand () % [randomNounList count];
    
    //Note the NSInteger is not an object, but a type definition for "unsigned long"
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", [randomAdjectiveList objectAtIndex:adjectiveIndex], [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = rand() %100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' +rand() %10,
                                    'A' +rand() %26,
                                    '0' +rand() %10,
                                    'A' +rand() %26,
                                    '0' +rand() %10];
    
    BNRItem *newItem = [[self alloc] initWithItemName:randomName
                                       valueInDollars:randomValue
                                         serialNumber:randomSerialNumber];
    
    return newItem;
}

-(id)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    //Call the superclass's designated initializer
    self = [super init];
    
    //Give the instance variables initial values
    if(self){
    [self setItemName:name];
    [self setSerialNumber:sNumber];
    [self setValueInDollars:value];
    dateCreated = [[NSDate alloc] init];
    }
    
    //return the address of the newly initialized object
    return self;
}

//Silver challenge. Creating an initializer that is not the designated initial of BNRItem. 
-(id)initWithItemName:(NSString *)name
         serialNumber:(NSString *)sNumber;
{
    self = [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:sNumber];
    return self;
}

-(id)init
{
    return [self initWithItemName:@"Item"
                   valueInDollars:0
                     serialNumber:@""];
}

-(void)setItemName:(NSString *)str
{
    itemName = str;
}

-(NSString *)itemName;
{
    return itemName;
}

-(void) setSerialNumber:(NSString *)str
{
    serialNumber = str;
}

-(NSString *)serialNumber
{
    return serialNumber;
}

-(void)setValueInDollars:(int)i
{
    valueInDollars = i;
}

-(int)valueInDollars
{
    return valueInDollars;
}

-(NSDate *)dateCreated
{
    return dateCreated;
}

-(NSString *) description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@", itemName, serialNumber, valueInDollars, dateCreated];
    
    return descriptionString;
}
@end
