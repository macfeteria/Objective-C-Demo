//
//  Classroom+DataManagement.h
//  Program 17.3
//
//  Created by Ter on 11/10/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "Classroom.h"

@interface Classroom (DataManagement)
+(Classroom*) classRoomName:(NSString*)name
                  inContext:(NSManagedObjectContext*) context;
@end
