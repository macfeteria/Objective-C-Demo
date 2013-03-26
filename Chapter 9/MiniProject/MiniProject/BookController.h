//
//  BookController.h
//  MiniProject
//
//  Created by Ter on 3/20/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface BookController : NSObject
{
    NSMutableArray* _books;
}
-(Book*) searchBook:(NSString*) name;
-(void) dataFromXMLFile:(NSString*) filePath;
-(int) numberOfCopies:(NSString*) bookName;
-(void) buyBook:(NSString*)name copies:(int)copies;
-(void) list;

-(void) sort;

@end
