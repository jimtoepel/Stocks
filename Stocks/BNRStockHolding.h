//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Jim Toepel on 2/23/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

@property (nonatomic)       float       purchaseSharePrice;
@property (nonatomic)       float       currentSharePrice;
@property (nonatomic)       int         numberOfShares;
@property (nonatomic, copy) NSString    *stockTicker;
 
// other methods go down here
- (float)costInDollars;
- (float)valueInDollars;


@end
