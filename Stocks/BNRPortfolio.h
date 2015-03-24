//
//  BNRPortfolio.h
//  Stocks
//
//  Created by Jim Toepel on 3/9/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

@interface BNRPortfolio : NSObject


@property(nonatomic) float              portfolioValue;
@property(nonatomic) NSMutableArray     *portfolioStocks;

-(float)totalValue;
-(void)addStock:(BNRStockHolding *)a;
-(void)removeStock:(BNRStockHolding *)a;
-(void)topThree;
-(void)alphaList;


@end
