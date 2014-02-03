//
//  main.m
//  Program 19.9
//
//  Created by Ter on 2/3/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSOperationQueue* aQueue = [[NSOperationQueue alloc] init];
        
        NSBlockOperation* one = [NSBlockOperation blockOperationWithBlock:^{
            NSLog(@"1");
        }];
        
        NSBlockOperation* two = [NSBlockOperation blockOperationWithBlock: ^{
            NSLog(@"2");
        }];
        
        NSBlockOperation* three = [NSBlockOperation blockOperationWithBlock: ^{
            NSLog(@"3");
        }];
        
        NSBlockOperation* four = [NSBlockOperation blockOperationWithBlock: ^{
            NSLog(@"4");
        }];
        
        
        [aQueue setMaxConcurrentOperationCount:1];
        
        [one setQueuePriority:NSOperationQueuePriorityNormal];
        [two setQueuePriority:NSOperationQueuePriorityHigh];
        [three setQueuePriority:NSOperationQueuePriorityLow];
        [four setQueuePriority:NSOperationQueuePriorityVeryHigh];
        
        
        [aQueue addOperation:one];
        [aQueue addOperation:two];
        [aQueue addOperation:three];
        [aQueue addOperation:four];
        
        
        [aQueue waitUntilAllOperationsAreFinished];
        
    }
    return 0;
}

