//
//  DBController.m
//  Program 17.1
//
//  Created by Ter on 10/29/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "DBController.h"

@implementation DBController
-(id) initWithFile:(NSString*)fileName
{
    self = [super init];
    if( self != nil)
    {
        if (sqlite3_open([fileName UTF8String], &_database) != SQLITE_OK)
        {
            NSLog(@"Failed to open database!");
            return nil;
        }
    }
    return self;
}

-(void) closeDB
{
    sqlite3_close(_database);
}

-(BOOL) insertExpenseToGroup:(NSString*)group amount:(float)amount
{
    BOOL success = YES;
    sqlite3_stmt *stmt;
    
    NSString *update = @"INSERT INTO \"EXPENSE\" (\"group\",\"amount\") VALUES (?,?);";
    
    if (sqlite3_prepare_v2(_database, [update UTF8String], -1, &stmt, nil) == SQLITE_OK)
    {
        sqlite3_bind_text(stmt, 1, [group UTF8String], -1, NULL);
        sqlite3_bind_double(stmt, 2, amount);
        if (sqlite3_step(stmt) != SQLITE_DONE)
            NSLog(@"Error updating table: %s", sqlite3_errmsg(_database));
        sqlite3_finalize(stmt);
    }
    else
    {
        NSLog(@"Error updating table: %s", sqlite3_errmsg(_database));
        success = NO;
    }
    return success;

}
-(NSArray*) expenseFromGroup:(NSString*)group
{
    sqlite3_stmt *stmt = nil;
    NSString *query = @"SELECT * FROM \"EXPENSE\" where \"group\" = ?;";
    if (sqlite3_prepare_v2(_database, [query UTF8String], -1, &stmt, NULL) == SQLITE_OK)
    {
        sqlite3_bind_text(stmt, 1, [group UTF8String], -1, NULL);
        NSMutableArray* result = [NSMutableArray array];
        while (sqlite3_step(stmt) == SQLITE_ROW)
        {
            NSMutableDictionary *row = [NSMutableDictionary dictionary];
            
            int no = sqlite3_column_int(stmt, 0);
            const unsigned char *group = sqlite3_column_text(stmt, 1);
            double amount = sqlite3_column_double(stmt, 2);
            const unsigned char *date = sqlite3_column_text(stmt,3);
            
            [row setObject:[NSNumber numberWithInt:no] forKey:@"INDEX"];
            [row setObject:[NSString stringWithUTF8String:group] forKey:@"GROUP"];
            [row setObject:[NSNumber numberWithDouble:amount] forKey:@"AMOUNT"];
            [row setObject:[NSString stringWithUTF8String:date] forKey:@"DATE"];
            
            [result addObject:row];
        }
        return result;
    }
    else
    {
        NSLog(@"Error updating table: %s", sqlite3_errmsg(_database));
        return [NSArray array];
    }
}

@end
