//
//  main.m
//  Program 14.1
//
//  Created by Ter on 7/7/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Download.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Download* music = [[Download alloc] initWithURL:@"Music" fileSize:3];
        Download* image = [[Download alloc] initWithURL:@"Image" fileSize:5];
        
        
        NSThread *imgThread = [[NSThread alloc] initWithTarget:image
                                                      selector:@selector(startDownload)
                                                        object:nil];
        
        [NSThread detachNewThreadSelector:@selector(startDownload )
                                 toTarget:music
                               withObject:nil];
        
        [imgThread start];

        for( int i = 1 ; i <= 10 ; i++)
            NSLog(@"Uploading Movie %.2f %%", (float)i*10);
        
        [music release];
        [image release];
        [imgThread release];
        
    }
    return 0;
}

