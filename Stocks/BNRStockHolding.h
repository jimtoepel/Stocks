//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Jim Toepel on 2/23/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

{
    // Instance Variables go here
    float   _purchaseSharePrice;
    float   _currentSharePrice;
    int     _numberOfShares;
}

// other methods go down here
- (float)costInDollars;
- (float)valueInDollars;
- (void)setPurchaseSharePrice:(float)p;
- (void)setCurrentSharePrice:(float)c;
- (void)setNumberOfShares:(int)n;


@end
