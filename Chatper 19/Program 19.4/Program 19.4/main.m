//
//  main.m
//  Program 19.4
//
//  Created by Ter on 2/3/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        dispatch_queue_t queue = dispatch_queue_create("Queue",DISPATCH_QUEUE_CONCURRENT);
        
        dispatch_group_t group = dispatch_group_create();

        // Add a task to the group
        dispatch_group_async(group, queue, ^{
            NSLog(@"Task A");
        });

        dispatch_group_async(group, queue, ^{
            NSLog(@"Task B");
        });

        dispatch_group_async(group, queue, ^{
            NSLog(@"Task C");
        });

        dispatch_group_wait(group, DISPATCH_TIME_FOREVER);

        NSLog(@"All done");
        
    }
    return 0;
}

