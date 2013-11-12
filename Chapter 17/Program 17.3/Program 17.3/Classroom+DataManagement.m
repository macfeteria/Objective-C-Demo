//
//  Classroom+DataManagement.m
//  Program 17.3
//
//  Created by Ter on 11/10/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "Classroom+DataManagement.h"

@implementation Classroom (DataManagement)
+(Classroom*) classRoomName:(NSString*)name
                  inContext:(NSManagedObjectContext*) context
{
    Classroom* room = nil;
    room = [NSEntityDescription insertNewObjectForEntityForName:@"Classroom"
                                                inManagedObjectContext:context];
    room.name = name;
    return room;
}

@end
