//
//  BookController.m
//  MiniProject
//
//  Created by Ter on 3/20/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import "BookController.h"
#import "Parser.h"

@implementation BookController
-(id) init
{
    self = [super init];
    if( self != nil)
    {
        _books = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void) dealloc
{
    [_books release];
    [super dealloc];
}

-(Book*) searchBook:(NSString*) name
{
    for ( int i = 0 ; i < [_books count] ; i++)
    {
        Book* book = [_books objectAtIndex:i];
        if( [book.name compare:name options:NSCaseInsensitiveSearch] == NSOrderedSame)
            return book;
    }
    return nil;
}

-(int) numberOfCopies:(NSString*) bookName
{
    Book* book = [self searchBook:bookName];
    if( book == nil)
        return 0;
    else
        return book.copies;
}

-(void) buyBook:(NSString*)name copies:(int)copies
{
    Book* book = [self searchBook:name];
    if( book != nil && (book.copies >= copies))
    {
        book.copies = book.copies - copies ;
        NSLog(@"Sold %@",name);
    }
    else
        NSLog(@"There are not enough(%@).",name);
}

-(void) list
{
    for( int i = 0 ; i < [_books count]; i++)
    {
        Book* book = [_books objectAtIndex:i];
        NSLog(@"%@",book);
    }
    NSLog(@"---------------");    
}

-(void) dataFromXMLFile:(NSString*) fileName
{
    NSError *error;
    NSMutableString* path = [NSMutableString string];
    [path setString:[[NSBundle mainBundle] bundlePath] ];
    [path appendFormat:@"/%@",fileName];
    
    NSString* stringFromFile = [NSString stringWithContentsOfFile:path
                                                         encoding:NSUTF8StringEncoding
                                                            error:&error];
    int loc = 0;
    while (loc < stringFromFile.length)
    {
        NSString* item = [Parser getString:stringFromFile tag:@"book" location:loc];
        if( item != nil)
        {
            NSString* name = [Parser getString:item tag:@"name" location:0];
            NSString* price = [Parser getString:item tag:@"price" location:0];
            NSString* copies = [Parser getString:item tag:@"copies" location:0];
            
            Book* book = [self searchBook:name];
            if( book == nil)
            {
                Book* newBook = [Book bookWithName:name
                                             price:[price floatValue]
                                            copies:[copies intValue]];

                [_books addObject:newBook];
                
            }
            else
                book.copies += [copies intValue];
        }
        else
            break;
        
        loc += item.length + 10 ;
    }

}

-(void) sort
{
    [_books sortUsingSelector: @selector(compareByName:)];
}


@end
