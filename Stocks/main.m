//
//  main.m
//  Stocks
//
//  Created by Jim Toepel on 2/23/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        BNRPortfolio *stockList = [[BNRPortfolio alloc] init];
        
        
        BNRStockHolding *first = [[BNRStockHolding alloc] init];
        [first setPurchaseSharePrice:2.30];
        [first setCurrentSharePrice:4.50];
        [first setNumberOfShares:40];
        [first setStockTicker:@"AAPL"];
        [stockList addStock:first];
        
        
        BNRStockHolding *second = [[BNRStockHolding alloc] init];
        [second setPurchaseSharePrice:12.19];
        [second setCurrentSharePrice:10.56];
        [second setNumberOfShares:90];
        [second setStockTicker:@"MSFT"];
        [stockList addStock:second];
        
        BNRStockHolding *third = [[BNRStockHolding alloc] init];
        [third setPurchaseSharePrice:45.10];
        [third setCurrentSharePrice:49.51];
        [third setNumberOfShares:210];
        [third setStockTicker:@"GOOG"];
        [stockList addStock:third];
        
        BNRForeignStockHolding *fourth = [[BNRForeignStockHolding alloc] init];
        [fourth setPurchaseSharePrice:2.30];
        [fourth setCurrentSharePrice:4.50];
        [fourth setNumberOfShares:40];
        [fourth setConversionRate:0.94];
        [fourth setStockTicker:@"FB"];
        [stockList addStock:fourth];
    
        NSLog(@"Stocks purchased and added to array...");
        
        NSArray *stocks = @[first, second, third, fourth];
        
        NSUInteger numberOfStocks = [stocks count];
        NSLog(@"There are %lu stocks in queue.\n", numberOfStocks);
        
        for (BNRStockHolding *s in stocks) {
            float money = [s valueInDollars];
            NSString *ticker = [s description];
            NSLog(@"%@", ticker);
            NSLog(@"%.2f", money);
        }
        
        float money = [stockList totalValue];
        NSLog(@"The total value of the Portfolio is: $%.02f", money);
        
        NSLog(@"Removing %@ stock", fourth);
        [stockList removeStock:fourth];
        
        money = [stockList totalValue];
        NSLog(@"The total value of the Portfolio is now: $%.02f", money);

    }
    return 0;
}