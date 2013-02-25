//
//  main.m
//  Program 8.6
//
//  Created by Ter on 2/25/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSRange rang;
        NSString* resultText;
        NSString* text = @"String objects represent character strings in Cocoa frameworks.\n"
        "Representing strings as objects allows you to use strings\n"
        "wherever you use other objects\n";
        
        NSLog(@"%@",text);
        
        // Search string
        rang = [text rangeOfString: @"Cocoa"];
        NSLog (@"String is at index %lu",rang.location);
        
        rang = [text rangeOfString: @"Cocoa Touch"];
        if( rang.location == NSNotFound )
            NSLog (@"String does not found");
        else
            NSLog (@"String is at index %lu",rang.location);
        
        // Substring
        resultText = [text substringToIndex: 14];
        NSLog (@"First 14 chars of text: %@", resultText);
        
        resultText = [text substringFromIndex: 20];
        NSLog (@"String from index 20 : %@", resultText);
        
        resultText = [text substringWithRange: NSMakeRange (10, 4)];
        NSLog (@"String from index 20-26: %@", resultText);

        
    }
    return 0;
}

