//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Jim Toepel on 2/23/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRPortfolio;


@interface BNRStockHolding : NSObject
{
    NSMutableArray *_portfolio;
}


@property (nonatomic)       float       purchaseSharePrice;
@property (nonatomic)       float       currentSharePrice;
@property (nonatomic)       int         numberOfShares;
@property (nonatomic, copy) NSString    *stockTicker;
@property (nonatomic, copy) NSArray     *portfolio;


// other methods go down here
- (float)costInDollars;
- (float)valueInDollars;
- (void)addAsset:(BNRPortfolio *)a;
- (unsigned int) valueOfPortfolio;




@end
