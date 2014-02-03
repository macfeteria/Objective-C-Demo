//
//  main.m
//  Program 19.1
//
//  Created by Ter on 2/3/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        __block int counter = 0;
        
        NSArray* imageList = @[@"http://www.sampleserver.th/image_1.jpg",
                               @"http://www.sampleserver.th/image_2.jpg",
                               @"http://www.sampleserver.th/image_3.jpg",
                               @"http://www.sampleserver.th/image_4.jpg",
                               ];
        
        NSLog(@"Start");
        
        dispatch_queue_t imageQueue = dispatch_queue_create("Download",NULL);
        
        for (NSString *urlString in imageList) {
            
            dispatch_async(imageQueue, ^{
                
                NSURL *url = [NSURL URLWithString:urlString];
                NSData *imageData = [NSData dataWithContentsOfURL:url];
                
                counter++;
                
                if (!imageData)
                    return;
                
                NSLog(@"%d Download: %@ completed" ,counter, urlString);
            });
        }
        
        while ( counter < [imageList count] )
        {
            // Wait until done
            usleep(100);
        }
        
        NSLog(@"Finish");

        
    }
    return 0;
}

