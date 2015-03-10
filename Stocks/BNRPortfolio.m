//
//  BNRPortfolio.m
//  Stocks
//
//  Created by Jim Toepel on 3/9/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@implementation BNRPortfolio



- (void)addStock:(BNRStockHolding *)a
{
    // Is portfolio nil?
    if (!_portfolioStocks) {
        
        // create the array
        _portfolioStocks = [[NSMutableArray alloc]init];
    }
    [_portfolioStocks addObject:a];
}


- (float)totalValue
{
    float total = 0;
    
    for (BNRStockHolding *a in _portfolioStocks) {
        total += [a valueInDollars];
    }
    return total;
}


@end
