//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Jim Toepel on 2/23/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//


#import "BNRStockHolding.h"
#import "BNRPortfolio.h"

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


// Accessors for the new items
- (void)setPortfolio:(NSArray *)a
{
    _portfolio = [a mutableCopy];
}


-(NSArray *)portfolio
{
    return [_portfolio copy];
}


-(void)addAsset:(BNRPortfolio *)a
{
    // Is Assets nil?
    if (!_portfolio) {
        
        // Create the array
        _portfolio = [[NSMutableArray alloc] init];
    }
    [_portfolio addObject:a];
}


-(unsigned int)valueOfPortfolio
{
   // Sum up the value of the assets
    unsigned int sum = 0;
    for (BNRPortfolio *a in _portfolio) {
        sum += [a portfolioValue];
    }
    return sum;
}

@end
