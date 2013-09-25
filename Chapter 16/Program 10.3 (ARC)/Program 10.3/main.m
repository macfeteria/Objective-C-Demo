//
//  main.m
//  Program 10.3
//
//  Created by Ter on 3/30/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BarGraph.h"
#import "FileData.h"
#import "NetData.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        BarGraph* barGraph = [[BarGraph alloc] init];
        FileData* fileDataSource = [[FileData alloc] init];
        NetData* netDataSource = [[NetData alloc] init];
        
        [netDataSource addNewData:2];
        [netDataSource addNewData:5];
        [netDataSource addNewData:10];
        
        
        NSLog(@"----- File data -----");
        barGraph.dataSource = fileDataSource;
        [barGraph drawGraph];
        
        NSLog(@"--- Internet data ---");
        barGraph.dataSource = netDataSource;
        [barGraph drawGraph];
        
        
        
    }
    return 0;
}
