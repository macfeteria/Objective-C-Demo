//
//  main.m
//  Program 10.4
//
//  Created by Ter on 3/30/13.
//  Copyright (c) 2013 Objective-C Book. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NetworkController.h"
#import "MyDelegate.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool
    {
        NetworkController* netController = [[NetworkController alloc] init];
        MyDelegate* myDelegate = [[MyDelegate alloc] init];
        
        netController.delegate = myDelegate;
        [netController startConnect];
        
        [myDelegate release];
        [netController release];
        
    }
    return 0;
}


