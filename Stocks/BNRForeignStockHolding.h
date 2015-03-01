//
//  BNRForeignStockHolding.h
//  Stocks
//
//  Created by Jim Toepel on 3/1/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

@interface BNRForeignStockHolding : BNRStockHolding

@property (nonatomic) double conversionRate;

@end
