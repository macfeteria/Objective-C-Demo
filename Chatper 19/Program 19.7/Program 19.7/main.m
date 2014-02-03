//
//  main.m
//  Program 19.7
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
        
        NSBlockOperation* taskB = [NSBlockOperation blockOperationWithBlock: ^{
            NSLog(@"Task B");
        }];
        
        NSOperationQueue* aQueue = [[NSOperationQueue alloc] init];
        
        [aQueue addOperation:taskA];
        [aQueue addOperation:taskB];
        
        [aQueue addOperationWithBlock:^{
            NSLog(@"Task C");
        }];
        
        [aQueue waitUntilAllOperationsAreFinished];
        
        NSLog(@"All tasks are finished");
        
    }
    return 0;
}

