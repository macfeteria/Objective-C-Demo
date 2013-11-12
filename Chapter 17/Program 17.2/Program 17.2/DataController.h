//
//  DataController.h
//  Program 17.2
//
//  Created by Ter on 10/31/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface DataController : NSObject
{
    NSPersistentStoreCoordinator* _persistentCoor;
    
}
@property (strong) NSManagedObjectContext *context;

@end
