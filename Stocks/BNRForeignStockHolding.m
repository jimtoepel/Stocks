//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by Jim Toepel on 3/1/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

-(float)costInDollars
{
    return self.purchaseSharePrice * self.conversionRate * self.numberOfShares;
}


-(float)valueInDollars
{
    return self.currentSharePrice * self.conversionRate * self.numberOfShares;
}


@end
