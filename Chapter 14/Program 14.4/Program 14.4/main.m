//
//  main.m
//  Program 14.4
//
//  Created by Ter on 7/8/13.
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
                                                      selector:@selector(cameraToStore:)
                                                        object:store];        
        [nikThread setName:@"Nikon"];
        [nikThread start];
        
        // wait until done
        while (true)
        {
            if( [store count] > 0)
            {
                NSString* cameraID = [store objectAtIndex:0];
                NSLog(@"Receive: %@", cameraID);
                [store removeObject:cameraID];
            }

            if([nikThread isFinished] && [store count] == 0)
                break;

        }
        
        [factory release];
        [store release];
        [nikThread release];
    }
    return 0;
}

