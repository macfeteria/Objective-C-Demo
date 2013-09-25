//
//  BarGraph.h
//  Program 10.3
//
//  Created by Ter on 3/30/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BarGraphDataSource.h"

@interface BarGraph : NSObject
{
    id <BarGraphDataSource> __unsafe_unretained _dataSource;
}
@property (unsafe_unretained) id<BarGraphDataSource> dataSource;
-(void) drawGraph;

@end