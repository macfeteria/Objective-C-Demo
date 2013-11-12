//
//  DataManagement.h
//  Program 17.3
//
//  Created by Ter on 11/10/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "Classroom+DataManagement.h"
#import "Student+DataManagement.h"

@interface DataManagement : NSObject

@property (strong) NSManagedObjectContext* context;

-(id) initWithSQLFile:(NSString*) file;
-(void) saveChange;

@end
