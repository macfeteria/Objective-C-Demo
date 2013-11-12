//
//  DataController.m
//  Program 17.2
//
//  Created by Ter on 10/31/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "DataController.h"
//#import "Category+Database.h"

@implementation DataController
-(id) init
{
    self = [super init];
    if( self != nil)
    {
        NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"Model" withExtension:@"momd"];
        NSAssert(modelURL, @"Fail url");
        
        NSManagedObjectModel *mom = nil;
        mom = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
        
        NSPersistentStoreCoordinator *psc = nil;
        psc = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:mom];
        
        
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSArray *directoryArray = [fileManager URLsForDirectory:NSDocumentDirectory
                                                      inDomains:NSUserDomainMask];
        NSURL *storeURL = nil;
        storeURL = [directoryArray lastObject];
        storeURL = [storeURL URLByAppendingPathComponent:@"PPRecipes.sqlite"];
        NSError *error = nil;
        NSPersistentStore *store = nil;
        store = [psc addPersistentStoreWithType:NSSQLiteStoreType
                                  configuration:nil
                                            URL:storeURL
                                        options:nil
                                          error:&error];
        
        //NSManagedObjectContext *moc = nil;
        NSManagedObjectContextConcurrencyType ccType = NSMainQueueConcurrencyType;
        _context = [[NSManagedObjectContext alloc] initWithConcurrencyType:ccType];
        [_context setPersistentStoreCoordinator:psc];
        
        
        
        
        
        NSMutableDictionary* dic = [[NSMutableDictionary alloc] init];
        
        dic[@"name"] = @"Demo";
        dic[@"company"] = @"Apple";
        
//        Category* cat = [Category categoryWithInfo:dic inManageObjectContext:_context];
//        
//        //NSError *error = nil;
//        [_context save:&error];
        
        
        
        

        
    }
    return self;
}
@end
