//
//  main.m
//  Program 14.6
//
//  Created by Ter on 7/9/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Producer.h"

int camID = 1;

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Producer *factory = [[Producer alloc] init];
        
        NSMutableArray* store = [[NSMutableArray alloc] initWithCapacity:CAMERA_PER_DAY];
        
        NSThread *nikThread = [[NSThread alloc] initWithTarget:factory
                                                      selector:@selector(produceToStore:)
                                                        object:store];
        
        NSThread *canThread = [[NSThread alloc] initWithTarget:factory
                                                      selector:@selector(produceToStore:)
                                                        object:store];
        
        NSThread *sonyThread = [[NSThread alloc] initWithTarget:factory
                                                       selector:@selector(produceToStore:)
                                                         object:store];
        
        [sonyThread setName:@"Sony"];
        [canThread setName:@"Cannon"];
        [nikThread setName:@"Nikon"];
        
        [nikThread start];
        [canThread start];
        [sonyThread start];
        
        // wait until done
        while (true)
        {
            if( [store count] > 0)
            {
                NSString* cameraID = [store objectAtIndex:0];
                NSLog(@"Receive: %@", cameraID);
                [store removeObject:cameraID];
            }
            
            if([nikThread isFinished] &&
               [canThread isFinished] &&
               [sonyThread isFinished] &&[store count] == 0)
                break;
            
        }
        
        [nikThread release];
        [canThread release];
        [sonyThread release];
        [store release];
        [factory release];
        
    }
    return 0;
}


