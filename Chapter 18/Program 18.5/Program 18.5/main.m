//
//  main.m
//  Program 18.5
//
//  Created by Ter on 1/15/14.
//  Copyright (c) 2014 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EchoClient.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        EchoClient* client = [[EchoClient alloc] init];
        [client initCommunitcation];
        [client sendMessage:@"hey"];
        
        while (client.isDone == NO)
        {
            // wait until finish
        }
    }
    return 0;
}

