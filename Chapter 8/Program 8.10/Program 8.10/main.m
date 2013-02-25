//
//  main.m
//  Program 8.10
//
//  Created by Ter on 2/25/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Parser.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSError *error;
        NSMutableString* path = [NSMutableString string];
        [path setString:[[NSBundle mainBundle] bundlePath] ];
        [path appendString:@"/data.txt"];
        
        
        NSString* stringFromFile = [NSString stringWithContentsOfFile:path
                                                             encoding:NSUTF8StringEncoding
                                                                error:&error];
        int loc = 0;
        while (loc < stringFromFile.length)
        {
            NSString* item = [Parser getString:stringFromFile tag:@"product" location:loc];
            if( item != nil)
            {
                NSString* name = [Parser getString:item tag:@"name" location:0];
                NSString* price = [Parser getString:item tag:@"price" location:0];
                NSLog(@"%@ %@",name , price);
            }
            else
                break;
            
            loc += item.length + 10 ;
        }
                
    }
    return 0;
}

