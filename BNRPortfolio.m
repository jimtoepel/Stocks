//
//  BNRPortfolio.m
//  Stocks
//
//  Created by Jim Toepel on 3/8/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#import "BNRPortfolio.h"

@implementation BNRPortfolio


- (NSString *) description
{
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.portfolioValue];
}


- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}


@end
