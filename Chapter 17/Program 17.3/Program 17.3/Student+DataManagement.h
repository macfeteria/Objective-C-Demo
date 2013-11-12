//
//  Student+DataManagement.h
//  Program 17.3
//
//  Created by Ter on 11/10/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "Student.h"

@interface Student (DataManagement)
+(Student*) studentName:(NSString*)name
                 gender:(NSString*)gen
                  score:(NSNumber*)score
              inContext:(NSManagedObjectContext*) context;

-(NSString*) grade;
@end
