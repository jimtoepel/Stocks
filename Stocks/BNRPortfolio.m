//
//  BNRPortfolio.m
//  Stocks
//
//  Created by Jim Toepel on 3/9/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"


// class extension
@interface BNRPortfolio ()
{
    NSMutableArray *_portfolioStocks;
}

@end






@implementation BNRPortfolio

-(void)setStocks:(NSArray *)a
{
    _portfolioStocks = [a mutableCopy];
}

-(NSArray *)portfolioStocks
{
    return[_portfolioStocks copy];
}


- (void)addStock:(BNRStockHolding *)a
{
    // Is portfolio nil?
    if (!_portfolioStocks) {
        
        // create the array
        _portfolioStocks = [[NSMutableArray alloc]init];
    }
    [_portfolioStocks addObject:a];
}


- (void)removeStock:(BNRStockHolding *)a
{
    [_portfolioStocks removeObject:a];
}


- (float)totalValue
{
    float total = 0;
    
    for (BNRStockHolding *a in _portfolioStocks) {
        total += [a valueInDollars];
    }
    return total;
}

- (NSArray *)mostValuableHoldings
{
    NSSortDescriptor *vid = [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars" ascending:NO];
    NSMutableArray *sortedArray = [[NSMutableArray alloc] init];
    sortedArray = _portfolioStocks;
    [sortedArray sortUsingDescriptors:@[vid]];
    
    return @[sortedArray[0], sortedArray[1], sortedArray[2]];
}

- (NSArray *)holdingsSortedBySymbol
{
    NSMutableArray *sortedByAlpha = [_portfolioStocks mutableCopy];
    NSSortDescriptor *s = [[NSSortDescriptor alloc] initWithKey:@"stockTicker" ascending:YES];
    [sortedByAlpha sortUsingDescriptors:@[s]];
    return sortedByAlpha;
}


@end
