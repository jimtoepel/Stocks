//
//  main.m
//  Stocks
//
//  Created by Jim Toepel on 2/23/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        BNRStockHolding *first = [[BNRStockHolding alloc] init];
        [first setPurchaseSharePrice:2.30];
        [first setCurrentSharePrice:4.50];
        [first setNumberOfShares:40];
        
        
        BNRStockHolding *second = [[BNRStockHolding alloc] init];
        [second setPurchaseSharePrice:12.19];
        [second setCurrentSharePrice:10.56];
        [second setNumberOfShares:90];
        
        
        BNRStockHolding *third = [[BNRStockHolding alloc] init];
        [third setPurchaseSharePrice:45.10];
        [third setCurrentSharePrice:49.51];
        [third setNumberOfShares:210];
        
        
        NSLog(@"Stocks purchased and added to array...");
        
        NSArray *stocks = @[first, second, third];
        
        NSUInteger numberOfStocks = [stocks count];
        NSLog(@"There are %lu stocks in queue.\n", numberOfStocks);
        
        for (BNRStockHolding *s in stocks) {
            float money = [s valueInDollars];
            NSLog(@"%f", money);
        }
        
    }
    return 0;
}
