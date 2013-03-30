//
//  BarGraph.m
//  Program 10.3
//
//  Created by Ter on 3/30/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "BarGraph.h"

@implementation BarGraph
@synthesize dataSource = _dataSource;

-(void)drawGraph
{
    if ([_dataSource conformsToProtocol:@protocol(BarGraphDataSource)])
    {
        for ( int row = 0 ; row < [_dataSource numberOfBar] ; row ++ )
        {
            NSMutableString* bar = [NSMutableString string];
            for ( int v = 0 ; v < [_dataSource valueForBar:row] ; v++ )
            {
                [bar appendString:@"X"];
            }
            NSLog(@"%d |%@",row , bar);
        }
    }
    
}
@end
