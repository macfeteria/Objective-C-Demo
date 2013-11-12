//
//  main.m
//  Program 17.3
//
//  Created by Ter on 11/10/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataManagement.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        DataManagement* db = [[DataManagement alloc] initWithSQLFile:@"student.sqlite"];
        Student* mario = [Student studentName:@"Mario Maurer" gender:@"M"
                                        score:@67 inContext:db.context];
        Student* mai = [Student studentName:@"Mai Davika" gender:@"F"
                                      score:@75 inContext:db.context];
        Student* nadech = [Student studentName:@"Nadech Kugimiya" gender:@"M"
                                         score:@69 inContext:db.context];
        Student* yaya = [Student studentName:@"Yaya Urassaya" gender:@"F"
                                       score:@87 inContext:db.context];
        
        Classroom* bio = [Classroom classRoomName:@"Biology" inContext:db.context];
        Classroom* phy = [Classroom classRoomName:@"Physic" inContext:db.context];
        
        [bio addStudentListObject:mario];
        [bio addStudentListObject:mai];
        
        [phy addStudentListObject:nadech];
        [phy addStudentListObject:yaya];
        
        [db saveChange];
        
        
        NSError* error;

        NSFetchRequest* request = [NSFetchRequest fetchRequestWithEntityName:@"Classroom"];
        NSArray *array = [db.context executeFetchRequest:request error:&error];
        for (Classroom* room in array)
        {
            NSArray* studentList = [room.studentList allObjects];
            for (Student* student in studentList)
            {
                NSLog(@"%@ - %@ : %@" ,room.name , student.name, [student grade]);
            }
        }
        
        
//        NSPredicate *pre = [NSPredicate predicateWithFormat:@"name CONTAINS[c] %@ "
//                                 "AND room.name LIKE %@ ",@"k",@"Biology"];
//        NSFetchRequest* anotherRequest = [NSFetchRequest fetchRequestWithEntityName:@"Student"];
//        [request setPredicate:pre];
//
//        NSArray *studentList = [db.context executeFetchRequest:anotherRequest error:&error];
//        for (Student* student in studentList)
//        {
//            NSLog(@"%@ : %@ (%@)" , student.name, student.score, [student grade]);
//        }
        


    }
    return 0;
}

