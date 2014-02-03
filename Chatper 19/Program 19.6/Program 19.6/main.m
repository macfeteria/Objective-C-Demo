//
//  main.m
//  Program 19.6
//
//  Created by Ter on 2/3/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSBlockOperation* blockA = [NSBlockOperation blockOperationWithBlock: ^{
            NSLog(@"Block A done");
        }];
        
        NSBlockOperation* blockB = [NSBlockOperation blockOperationWithBlock:^{
            NSURL *url = [NSURL URLWithString:@"http://www.server.com/image_1.jpg"];
            NSData *imageData = [NSData dataWithContentsOfURL:url];
            
            if (!imageData)
            {
                NSLog(@"Block B download failed");
                return;
            }
            else
                NSLog(@"Block B done");
            
        }];
        
        [blockB addExecutionBlock:^{
            NSLog(@"Block B extra done");
        }];
        
        [blockA start];
        [blockB start];
        
        while ([blockA isExecuting] && [blockB isExecuting])
        {
            //wait until done
        }
        
    }
    return 0;
}

