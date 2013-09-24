//
//  main.m
//  Program 16.3
//
//  Created by Ter on 9/21/13.
//  Copyright (c) 2013 Ter. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Player* hakaru = [[Player alloc ] init];
        hakaru.name = @"Hakaru";
        hakaru.lastName = @"Miyashita";
        
        [hakaru printInfo];
        
        hakaru = [[Player alloc] init];
        saori = hakaru;
        
        buttonLabel = @"App";
        navigationLabel = buttonLabel;

        //hakaru.age = @"20";
        NSLog(@"%@ %@ %@" , hakaru.name , hakaru.lastName , hakaru.age);
        
        [hakaru release];        
    }
    return 0;
}

//        NSLog(@"%@ %@ %@" , hakaru.name , hakaru.lastName , hakaru.age);
//
//        NSLog(@"%@", hakaru.fullName);
