//
//  main.m
//  Program 19.3
//
//  Created by Ter on 1/27/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSArray* imageList = @[@"http://www.sampleserver.th/image_1.jpg",
                               @"http://www.sampleserver.th/image_2.jpg",
                               @"http://www.sampleserver.th/image_3.jpg",
                               @"http://www.sampleserver.th/image_4.jpg",
                               ];
        
        NSLog(@"Start");
        
        dispatch_queue_t imageQueue = dispatch_queue_create("Download",NULL);
        
        for (NSString *urlString in imageList) {
            
            dispatch_sync(imageQueue, ^{
                
                NSURL *url = [NSURL URLWithString:urlString];
                NSData *imageData = [NSData dataWithContentsOfURL:url];
                
                if (!imageData)
                    return;
                
                // Update UI in main thread
                dispatch_async(dispatch_get_main_queue(), ^{
                    
                    NSLog(@"Download: %@ completed", urlString);
                });
                
            });
        }
        
        NSLog(@"Finish");
        
        dispatch_main();
        
    }
    return 0;
}

