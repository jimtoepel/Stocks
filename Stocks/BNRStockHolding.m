//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Jim Toepel on 2/23/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//


#import "BNRStockHolding.h"

@implementation BNRStockHolding

-(float)costInDollars
{
    return _purchaseSharePrice * _numberOfShares;
}


-(float)valueInDollars
{
    return _currentSharePrice * _numberOfShares;
}


- (NSString *)description;
{
    return [NSString stringWithFormat:@"<%@>", self.stockTicker];
}


@end
