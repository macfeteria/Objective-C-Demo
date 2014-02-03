//
//  main.m
//  Program 19.5
//
//  Created by Ter on 2/3/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NetworkController.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NetworkController* net = [[NetworkController alloc] init];
        NSOperation* taskA = [net downloadWithURL:@"http://www.server.com/image_1.jpg"];
        NSOperation* taskB = [net downloadWithURL:@"http://www.server.com/image_2.jpg"];
        
        [taskA start];
        [taskB start];
        
        while ([taskA isExecuting] && [taskB isExecuting])
        {
            //wait until done
        }
        
    }
    return 0;
}

