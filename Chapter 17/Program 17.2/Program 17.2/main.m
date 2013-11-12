//
//  main.m
//  Program 17.2
//
//  Created by Ter on 10/31/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "Student.h"
#import "Classroom.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"Model"
                                                  withExtension:@"momd"];
        
        if( modelURL == nil)
            NSLog(@"Fail url");
        
        // Model
        NSManagedObjectModel *model = nil;
        model = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
        
        // Coordinator
        NSPersistentStoreCoordinator *psc = nil;
        psc = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:model];
        

        NSURL *storeURL = [NSURL fileURLWithPath:@"student.sqlite"];
        NSError *error = nil;
        NSPersistentStore *store = nil;
        
        // Store
        store = [psc addPersistentStoreWithType:NSSQLiteStoreType
                                  configuration:nil
                                            URL:storeURL
                                        options:nil
                                          error:&error];

        NSManagedObjectContext* context;
        NSManagedObjectContextConcurrencyType ccType = NSMainQueueConcurrencyType;

        // Context
        context = [[NSManagedObjectContext alloc] initWithConcurrencyType:ccType];
        [context setPersistentStoreCoordinator:psc];
        
        
        // Create managed objects
        NSEntityDescription *bioEntry = [[model entitiesByName] objectForKey:@"Classroom"];
        Classroom* bio = (Classroom*)[[NSManagedObject alloc]
                                      initWithEntity:bioEntry
                                      insertIntoManagedObjectContext:context];
        
        Student* mario = [NSEntityDescription insertNewObjectForEntityForName:@"Student"
                                                            inManagedObjectContext:context];
        Student* mai = [NSEntityDescription insertNewObjectForEntityForName:@"Student"
                                                         inManagedObjectContext:context];

        
        mario.name = @"Mario Maurer";
        mario.gender = @"M";
        mario.score = @67;
       
        mai.name = @"Mai Davika";
        mai.gender = @"F";
        mai.score = @82;
        
        
        bio.name = @"Biology Class";
        [bio addStudentListObject:mai];
        [bio addStudentListObject:mario];
        
        // Store objects
        [context save:&error];
        
        // Fetch objects
        NSFetchRequest* request = [NSFetchRequest fetchRequestWithEntityName:@"Classroom"];
        
        NSArray *array = [context executeFetchRequest:request error:&error];
        
        for (Classroom* room in array)
        {
            NSArray* studentList = [room.studentList allObjects];
            for (Student* student in studentList)
            {
                NSLog(@"%@ (%@) %@" ,student.name ,student.gender,student.score);
            }
        }
        
    }
    return 0;
}

