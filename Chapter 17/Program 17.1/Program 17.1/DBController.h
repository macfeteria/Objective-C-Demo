//
//  DBController.h
//  Program 17.1
//
//  Created by Ter on 10/29/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface DBController : NSObject
{
    sqlite3* _database;
}
-(id) initWithFile:(NSString*)fileName;
-(void) closeDB;
-(BOOL) insertExpenseToGroup:(NSString*)group amount:(float)cost;
-(NSArray*) expenseFromGroup:(NSString*)group;
@end
