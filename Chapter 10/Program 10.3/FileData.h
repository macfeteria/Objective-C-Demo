//
//  FileData.h
//  Program 10.3
//
//  Created by Ter on 3/30/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BarGraphDataSource.h"

@interface FileData : NSObject <BarGraphDataSource>
{
    NSArray* _barList;
}
@end

