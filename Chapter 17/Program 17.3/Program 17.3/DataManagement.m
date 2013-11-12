//
//  DataManagement.m
//  Program 17.3
//
//  Created by Ter on 11/10/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "DataManagement.h"

@implementation DataManagement
-(id) initWithSQLFile:(NSString*) file
{
    self = [super init];
    if( self != nil)
    {
        NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"Model"
                                                  withExtension:@"momd"];
        
        NSManagedObjectModel *model = nil;
        model = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
        
        NSPersistentStoreCoordinator *psc = nil;
        psc = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:model];
        
        NSURL *storeURL = [NSURL fileURLWithPath:file];
        NSError *error = nil;
        
        [psc addPersistentStoreWithType:NSSQLiteStoreType
                          configuration:nil
                                    URL:storeURL
                                options:nil
                                  error:&error];
        
        NSManagedObjectContextConcurrencyType ccType = NSMainQueueConcurrencyType;
        
        // Context
        _context = [[NSManagedObjectContext alloc] initWithConcurrencyType:ccType];
        [_context setPersistentStoreCoordinator:psc];

    }
    return self;
}
-(void) saveChange
{
    NSError* error;
    [self.context save:&error];
    if( error != nil)
        NSLog(@"%@",error);
}

@end
