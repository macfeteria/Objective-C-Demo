//
//  main.m
//  Program 17.1
//
//  Created by Ter on 10/29/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DBController.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool
    {
        DBController *db = [[DBController alloc] initWithFile:@"/Users/Ter/Desktop/expense.sqlite"];
        [db insertExpenseToGroup:@"Food" amount:400];
        [db insertExpenseToGroup:@"Shopping" amount:300];
        [db insertExpenseToGroup:@"Movie" amount:500];
        [db insertExpenseToGroup:@"Food" amount:900];
        
        
        NSArray* result = [db expenseFromGroup:@"Food"];
        for( NSDictionary* item in result)
        {
            NSLog(@"%@ %@ %@ %@",item[@"INDEX"],item[@"GROUP"],
                  item[@"AMOUNT"],item[@"DATE"] );
        }
        [db closeDB];
                
    }
    return 0;
}

