//
//  main.m
//  Program 19.8
//
//  Created by Ter on 2/3/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSOperationQueue* aQueue = [[NSOperationQueue alloc] init];
        
        NSBlockOperation* download = [NSBlockOperation blockOperationWithBlock:^{
            NSLog(@"Download");
        }];
        
        NSBlockOperation* resize = [NSBlockOperation blockOperationWithBlock: ^{
            NSLog(@"Resize");
        }];
        
        NSBlockOperation* upload = [NSBlockOperation blockOperationWithBlock: ^{
            NSLog(@"Upload");
        }];
        
        
        [resize addDependency:download];
        
        [aQueue addOperation:download];
        [aQueue addOperation:resize];
        [aQueue addOperation:upload];
        
        [aQueue waitUntilAllOperationsAreFinished];
        
    }
    return 0;
}

